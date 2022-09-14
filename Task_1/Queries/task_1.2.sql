SELECT te.personal_number, tt.audience_number
FROM teacher te
JOIN teacher_teaches_subjects_in_groups tt
ON tt.personal_number = te.personal_number
AND tt.subject_code = '18П'
