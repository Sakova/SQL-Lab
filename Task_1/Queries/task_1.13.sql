SELECT DISTINCT subject_code
FROM teacher_teaches_subjects_in_groups
JOIN student_group USING (group_code)
