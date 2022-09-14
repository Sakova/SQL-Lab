SELECT DISTINCT s.*
FROM subject s
JOIN teacher_teaches_subjects_in_groups tt
ON tt.subject_code = s.subject_code
AND tt.personal_number <> '221Л'
