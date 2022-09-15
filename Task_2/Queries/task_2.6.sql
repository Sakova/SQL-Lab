SELECT provider.p, detail.d, project.pr
FROM provider, detail, project
WHERE provider.city = detail.city
AND detail.city = project.city
