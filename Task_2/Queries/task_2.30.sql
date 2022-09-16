SELECT DISTINCT pd.d
FROM provide_details_to_projects pd
JOIN project USING (pr)
WHERE project.city = 'Лондон'
