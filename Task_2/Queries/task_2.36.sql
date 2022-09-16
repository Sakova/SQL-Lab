SELECT pd.p, pdp.p
FROM provide_details_to_projects pd, provide_details_to_projects pdp
GROUP BY pd.p, pdp.p
HAVING SUM(pd.s) = SUM(pdp.s)
AND pd.p <> pdp.p
