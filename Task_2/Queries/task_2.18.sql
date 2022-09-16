SELECT DISTINCT pd.d
FROM provide_details_to_projects pd
WHERE pd.p IN (SELECT pd.p
				FROM provide_details_to_projects pd
				GROUP BY pd.p
				HAVING AVG(pd.s) > 320)