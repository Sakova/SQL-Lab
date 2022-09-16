SELECT pd.d
FROM provide_details_to_projects pd
JOIN provider USING (p)
JOIN project
ON project.pr = pd.pr
WHERE provider.city = 'Лондон'
OR project.city = 'Лондон'
