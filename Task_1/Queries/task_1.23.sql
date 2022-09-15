SELECT DISTINCT tt.group_code
FROM teacher_teaches_subjects_in_groups tt
WHERE tt.subject_code IN (SELECT tt.subject_code
					     FROM teacher_teaches_subjects_in_groups tt, student_group sg
						 WHERE tt.group_code = sg.group_code
						 AND sg.group_title = 'АС-8')
