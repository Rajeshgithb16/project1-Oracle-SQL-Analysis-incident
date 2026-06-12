SELECT *
FROM incidents
WHERE status = 'Open';


SELECT COUNT(*) AS high_priority_count
FROM incidents
WHERE priority = 'High';


SELECT category, COUNT(*) AS total
FROM incidents
GROUP BY category
ORDER BY total DESC;

----Windows function -------

SELECT assigned_team,
       AVG(resolution_time_hours) AS avg_time,
       RANK() OVER (ORDER BY AVG(resolution_time_hours)) AS rank
FROM incidents
WHERE status_1 = 'Resolved'
GROUP BY assigned_team;

------ CTE 

WITH resolved_incidents AS (
    SELECT * FROM incidents WHERE status_1 = 'Resolved'
)
SELECT assigned_team, COUNT(*) AS total
FROM resolved_incidents
GROUP BY assigned_team;


-----Index -----
CREATE INDEX idx_status ON incidents(status_1);
CREATE INDEX idx_team ON incidents(assigned_team);
