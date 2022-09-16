SELECT DISTINCT pd.d, pdp.d
FROM provide_details_to_projects pd, provide_details_to_projects pdp
WHERE pd.p = pdp.p