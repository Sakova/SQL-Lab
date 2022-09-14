SELECT DISTINCT te.*
FROM teacher te
JOIN teacher_teaches_subjects_in_groups tt
ON tt.personal_number = te.personal_number
AND tt.group_code IN ('8Г', '3Г')
AND te.position = 'Доцент'
