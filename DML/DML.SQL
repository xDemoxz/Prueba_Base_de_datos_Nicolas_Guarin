


ALTER TABLE `bd_nicolas_guarin_clan8`.`riwi_orders` 
ADD CONSTRAINT `fk_equipment_orders`
  FOREIGN KEY ()
  REFERENCES `bd_nicolas_guarin_clan8`.`riwi_equipments` ()
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;|

-- INSERCIÓN: Registrar un nuevo cliente junto con una orden de servicio

-- 1. Insertar el cliente
INSERT INTO riwi_clients (client_name)
VALUES ('Distribuidora Andina S.A.S');

-- 2. Insertar la orden de servicio referenciando al cliente recién creado
INSERT INTO riwi_orders (WorkOrder, ServiceDate, Hours, id_technician, id_equipment, id_service, id_branch, id_client, Cost)
VALUES ('WO2001', '2026-07-07', 3, 1, 1, 1, 1, LAST_INSERT_ID(), 150);

-- ACTUALIZACIÓN: Actualizar la información de un técnico existente
UPDATE riwi_technician
SET Technician = 'Juan Perez Actualizado'
WHERE id_technician = 1;

-- ELIMINACIÓN: Eliminar un equipo que no tenga órdenes de servicio asociadas

-- Paso 1: verificar que el equipo no tenga órdenes asociadas
SELECT wo.id_WorkOrder
FROM riwi_orders wo
WHERE wo.id_equipment = 5;

DELETE FROM riwi_equipment
WHERE id_equipment = 5;
