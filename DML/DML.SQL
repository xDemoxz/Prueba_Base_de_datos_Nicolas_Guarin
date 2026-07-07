


ALTER TABLE `bd_nicolas_guarin_clan8`.`riwi_orders` 
ADD CONSTRAINT `fk_equipment_orders`
  FOREIGN KEY ()
  REFERENCES `bd_nicolas_guarin_clan8`.`riwi_equipments` ()
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;|