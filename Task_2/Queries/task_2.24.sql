SELECT provider.p
FROM provider
WHERE provider.status < (SELECT provider.status
						FROM provider
						WHERE provider.p = 'П1')