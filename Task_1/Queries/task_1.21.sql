SELECT DISTINCT s.speciality
FROM teacher te
JOIN teacher_teaches_subjects_in_groups tt
ON tt.personal_number = te.personal_number
JOIN student_group s
ON s.group_code = tt.group_code
WHERE te.department = 'АСУ'
