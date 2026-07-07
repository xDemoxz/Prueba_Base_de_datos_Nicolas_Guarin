
-- =========================================================
-- Consulta 1: Cantidad de órdenes atendidas por técnico
SELECT 
    t.id_technician,
    t.Technician,
    COUNT(wo.id_WorkOrder) AS total_orders
FROM riwi_technician t
LEFT JOIN riwi_work_orders wo ON t.id_technician = wo.id_technician
GROUP BY t.id_technician, t.Technician
ORDER BY total_orders DESC;


-- Consulta 2: Historial de servicios realizados por ciudad
SELECT 
    c.id_citie,
    c.citie_name,
    COUNT(wo.id_WorkOrder) AS total_services
FROM riwi_citie c

JOIN riwi_branches b ON c.id_citie = b.id_citie
JOIN riwi_work_orders wo ON b.id_branch = wo.id_branch
GROUP BY c.id_citie, c.citie_name
ORDER BY total_services DESC;


-- Consulta 3: Total de servicios realizados por tipo de servicio
SELECT 
    s.id_service,
    s.service_name,
    COUNT(wo.id_WorkOrder) AS total_services
FROM riwi_services s
LEFT JOIN riwi_work_orders wo ON s.id_service = wo.id_service
GROUP BY s.id_service, s.service_name
ORDER BY total_services DESC;


-- Consulta 4: Equipos con mayor cantidad de mantenimientos
SELECT e.id_equipment, e.Equipment, COUNT(wo.id_WorkOrder) AS total_maintaince FROM riwi_equipment e
LEFT JOIN riwi_work_orders wo ON e.id_equipment = wo.id_equipment
GROUP BY e.id_equipment, e.Equipment
ORDER BY  total_maintaince DESC;

-- Consulta 5: Clientes con mayor número de órdenes de servicio
SELECT 
    c.id_client,
    c.client_name,
    COUNT(wo.id_WorkOrder) AS total_orders
FROM riwi_clients c
LEFT JOIN riwi_work_orders wo ON c.id_client = wo.id_client
GROUP BY c.id_client, c.client_name
ORDER BY total_orders DESC;


-- Consulta 6: Cantidad de órdenes gestionadas por sede
SELECT 
    b.id_branch,
    b.Branch_name,
    COUNT(wo.id_WorkOrder) AS total_orders
FROM riwi_branches b
LEFT JOIN riwi_work_orders wo ON b.id_branch = wo.id_branch
GROUP BY b.id_branch, b.Branch_name
ORDER BY total_orders DESC;


