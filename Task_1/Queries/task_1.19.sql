SELECT DISTINCT tt.group_code
FROM teacher te
JOIN teacher_teaches_subjects_in_groups tt
ON tt.personal_number = te.personal_number
JOIN student_group s
ON s.group_code = tt.group_code
WHERE POSITION(s.speciality IN te.speciality) > 0
