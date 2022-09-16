SELECT pd.pr
FROM provide_details_to_projects pd
WHERE pd.d = 'Д1'
GROUP BY pd.pr
HAVING AVG(s) > (SELECT MAX(s)
				  FROM provide_details_to_projects pd
				  WHERE d = 'ПР1')
