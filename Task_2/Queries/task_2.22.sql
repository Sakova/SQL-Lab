SELECT DISTINCT pd.pr
FROM provide_details_to_projects pd
WHERE pd.p = 'П1'
AND pd.d IS NOT NULL