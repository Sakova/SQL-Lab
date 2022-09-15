SELECT DISTINCT tt.group_code
FROM teacher_teaches_subjects_in_groups tt
WHERE tt.group_code NOT IN (SELECT tt.group_code
					     FROM teacher_teaches_subjects_in_groups tt, teacher te
						 WHERE tt.personal_number = te.personal_number
						 AND te.personal_number = '430Л')
