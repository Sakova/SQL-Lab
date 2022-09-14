SELECT tt.group_code
FROM teacher te
JOIN teacher_teaches_subjects_in_groups tt
ON tt.personal_number = te.personal_number
AND te.last_name = 'Фролов'
