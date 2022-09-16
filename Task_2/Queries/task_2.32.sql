SELECT pd.pr
FROM provide_details_to_projects pd
GROUP BY pd.pr, pd.d
HAVING pd.d IN (SELECT pd.d
				FROM provide_details_to_projects pd
				WHERE pd.p = 'П1')
