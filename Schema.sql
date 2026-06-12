CREATE TABLE incidents (
    incident_id NUMBER PRIMARY KEY,
    created_date DATE,
    resolved_date DATE,
    priority VARCHAR2(10),
    status_1 VARCHAR2(20),
    assigned_team VARCHAR2(50),
    category VARCHAR2(50),
    resolution_time_hours NUMBER
);
