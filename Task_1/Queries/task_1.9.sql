SELECT s.subject_name, sg.group_title
FROM subject s
JOIN teacher_teaches_subjects_in_groups tt USING (subject_code)
JOIN student_group sg USING (group_code)
WHERE audience_number BETWEEN 100 AND 200
