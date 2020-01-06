SELECT fname
FROM Staff LEFT JOIN Teaching ON Staff.id = Teaching.id
WHERE Teaching.id IS NULL;

