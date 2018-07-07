-- Procedura dodanie oceny i trigger sprawdzenie czy nauczyciel naucza danego przedmiotu (jeśli nie, nie może wstawić oceny)
SELECT gb.student_id, gb.grade_id, gb.grade_description, su.subject_name
FROM grade_book gb, subject su
WHERE student_id = 90
AND su.subject_id = gb.subject_id
AND su.subject_name = 'Polish Language';

SELECT t.teacher_id, su.subject_name, su.subject_id FROM teacher t, teacher_subject ts, subject su
WHERE t.teacher_id = ts.teacher_id
AND ts.subject_id = su.subject_id
AND su.subject_name = 'Polish Language';

CALL add_grade(90, 3, 1, 'Kartkówka', 3);
CALL add_grade(90, 5, 1, 'Prezentacja', 2);

SELECT gb.student_id, gb.grade_id, gb.grade_description, su.subject_name
FROM grade_book gb, subject su
WHERE student_id = 90
AND su.subject_id = gb.subject_id
AND su.subject_name = 'Polish Language';

-- Procedura usuwająca ucznia z tabeli student oraz trigger, który usuwa wszystkie rekordy z tabeli z ocenami (grade_book)
SELECT * FROM student
WHERE student_id = 26;

SELECT * FROM grade_book
WHERE student_id = 26;

CALL delete_student(26);

SELECT * FROM student
WHERE student_id = 26;

SELECT * FROM grade_book
WHERE student_id = 26;

-- Funkcja: zwraca średnią z ocen ucznia
SELECT ROUND(AVG(t.avg_grade), 2)
FROM(
SELECT AVG(g.grade) AS avg_grade
FROM student s, grades g, grade_book gb, subject su
WHERE s.student_id = gb.student_id
AND g.grade_id = gb.grade_id
AND su.subject_id = gb.subject_id
AND s.student_id = 2
GROUP BY s.first_name, su.subject_name
) AS t;

SELECT students_average_grade(2);

-- Funkcja: zwraca true(1)/false(0) czy uczeń zdaje dany przedmiot
SELECT gb.student_id, su.subject_name, AVG(g.grade) AS avg_grade
FROM grades g, grade_book gb, subject su
WHERE g.grade_id = gb.grade_id
AND su.subject_id = gb.subject_id
AND gb.student_id = 1
GROUP BY su.subject_name;

SELECT does_student_pass_subject('Biology', 1);
SELECT does_student_pass_subject('IT', 1);
SELECT does_student_pass_subject('Mathematics', 1);
SELECT does_student_pass_subject('Polish Language', 1);
SELECT does_student_pass_subject('English Language', 1);
SELECT does_student_pass_subject('Sports', 1);

-- Widok: Imie/Nazwisko/Przedmiot/Ocena
SELECT * FROM average_grades;

-- Widok: Klasa/Imie i nazwisko wychowawcy
SELECT * FROM head_teachers_classes;

-- Widok: Imie/Nazwisko/Nauczany przedmiot
SELECT * FROM teachers_and_taught_subjects;