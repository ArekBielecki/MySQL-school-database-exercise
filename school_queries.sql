-- Procedura: dodawanie oceny
DELIMITER //
CREATE PROCEDURE add_grade(
IN student INT,
IN grade INT,
IN subject INT,
IN description VARCHAR(256),
IN teacher_id INT
)
BEGIN
SET @teacher_id_to_check = teacher_id;
INSERT INTO grade_book(student_id, subject_id, grade_id, grade_description)
VALUES (student, subject, grade, description);
END //
DELIMITER ;

-- Trigger: przed dodaniem oceny sprawdzenie czy nauczyciel uczy danego przedmiotu
DELIMITER //
CREATE TRIGGER check_teacher_privileges
BEFORE INSERT ON grade_book
FOR EACH ROW
BEGIN
IF (isnull((SELECT t.teacher_id 
FROM teacher_subject t
WHERE t.subject_id = NEW.subject_id
AND t.teacher_id = @teacher_id_to_check)))

THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Cannot add grade: teacher does not have priviliges to this subject';
END IF;
END //
DELIMITER ;

-- Procedura: usunięcie ucznia z bazy
DELIMITER //
CREATE PROCEDURE delete_student(
IN student_to_delete INT
)
BEGIN
DELETE FROM student
WHERE student.student_id = student_to_delete;
END //
DELIMITER ;

-- Trigger: przed usunięciem ucznia, usuwane są wszyskie wpisy dotyczące jego ocen
DELIMITER //
CREATE TRIGGER erase_student_data
BEFORE DELETE ON student
FOR EACH ROW
BEGIN
DELETE FROM grade_book
WHERE grade_book.student_id = OLD.student_id;
END //
DELIMITER ;

-- Funkcja: zwraca średnią z ocen ucznia
delimiter //
CREATE FUNCTION students_average_grade(student_id INT)
RETURNS DOUBLE deterministic
BEGIN
RETURN (
ROUND((
SELECT AVG(t.avg_grade)
FROM(
SELECT AVG(g.grade) AS avg_grade
FROM grades g, grade_book gb, subject su
WHERE student_id = gb.student_id
AND g.grade_id = gb.grade_id
AND su.subject_id = gb.subject_id
GROUP BY gb.subject_id
) AS t), 
2));
END //
delimiter ;

-- Funkcja: zwraca true(1)/false(0) czy uczeń zdaje dany przedmiot
delimiter //
CREATE FUNCTION does_student_pass_subject(subject_name VARCHAR(16), student_id INT)
RETURNS BOOLEAN
BEGIN
DECLARE does_student_pass BOOLEAN;
DECLARE average_subject_score DOUBLE;

SET does_student_pass = 0;
SET average_subject_score = (
SELECT AVG(g.grade) AS avg_grade
FROM grades g, grade_book gb, subject su
WHERE g.grade_id = gb.grade_id
AND su.subject_id = gb.subject_id
AND gb.student_id = student_id
AND su.subject_name = subject_name
);

IF(average_subject_score > 1.75)
THEN
SET does_student_pass = 1;
END IF;
RETURN does_student_pass;
END //
delimiter ;

-- Widok: Imie/Nazwisko/Przedmiot/Ocena
CREATE VIEW average_grades AS(
SELECT s.first_name, s.last_name, su.subject_name, AVG(g.grade) AS avg_grade
FROM student s, grades g, grade_book gb, subject su
WHERE s.student_id = gb.student_id
AND g.grade_id = gb.grade_id
AND su.subject_id = gb.subject_id
GROUP BY s.first_name, su.subject_name);

-- Widok: Klasa/Imie i nazwisko wychowawcy
CREATE VIEW head_teachers_classes AS(
SELECT cl.class_name AS 'Class', CONCAT(t.first_name,' ', t.last_name) AS 'Head Teacher'
FROM teacher t, class cl, teacher_class tcl
WHERE t.teacher_id = tcl.teacher_id
AND cl.class_id = tcl.class_id);

-- Widok: Imie/Nazwisko/Nauczany przedmiot
CREATE VIEW teachers_and_taught_subjects AS(
SELECT t.first_name, t.last_name, su.subject_name
FROM teacher t, subject su, teacher_subject tsu
WHERE t.teacher_id = tsu.teacher_id
AND su.subject_id = tsu.subject_id
ORDER BY su.subject_name);