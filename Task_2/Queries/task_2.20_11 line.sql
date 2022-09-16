SELECT DISTINCT detail.color
FROM detail
JOIN provide_details_to_projects pd USING (d)
WHERE pd.p = 'П1'
