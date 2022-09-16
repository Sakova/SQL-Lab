SELECT pd.d
FROM provide_details_to_projects pd
JOIN project USING (pr)
JOIN provider
ON provider.p = pd.p
WHERE provider.city = project.city