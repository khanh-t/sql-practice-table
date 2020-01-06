SELECT fname, COUNT(DISTINCT Teaching.deptCode) AS count
FROM Staff Inner Join Teaching ON Staff.id = Teaching.id
GROUP BY fname
HAVING COUNT(DISTINCT Teaching.deptCode) > 1;