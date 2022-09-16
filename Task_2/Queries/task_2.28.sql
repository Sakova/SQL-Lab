SELECT DISTINCT pd.pr
FROM provide_details_to_projects pd
JOIN detail USING (d)
JOIN provider
ON provider.p = pd.p
WHERE detail.color <> 'red'
AND provider.city <> 'Лондон'
