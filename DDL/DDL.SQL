
	--CREATION OF MY PRICINPAL TABLES
    
    USE bd_nicolas_guarin_clan8
    
	CREATE TABLE riwi_clients (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    client_name VARCHAR(100) NOT NULL;
    
    
     CREATE TABLE riwi_cities (
    id_citie INT AUTO_INCREMENT PRIMARY KEY,
    citie_name VARCHAR(100) NOT NULL);
    
    CREATE TABLE riwi_branches (
    id_Branch INT AUTO_INCREMENT PRIMARY KEY,
    citie_name VARCHAR(100) NOT NULL,
    id_citie INT,
    CONSTRAINT fk_citie_branch
        FOREIGN KEY (id_citie)
        REFERENCES riwi_cities(id_citie)
    );
    
    CREATE TABLE riwi_technicians (
    id_technician INT AUTO_INCREMENT PRIMARY KEY,
    Technician_name VARCHAR(100) NOT NULL);
    
     CREATE TABLE riwi_equipment_categories (
    id_EquipmentCategory INT AUTO_INCREMENT PRIMARY KEY,
    EquipmentCategory VARCHAR(100) NOT NULL);
    
    CREATE TABLE riwi_services (
    id_service INT AUTO_INCREMENT PRIMARY KEY,
    ServiceType VARCHAR(100) NOT NULL);
    
    CREATE TABLE riwi_equipments (
    id_equipment INT AUTO_INCREMENT PRIMARY KEY,
    Equipment VARCHAR(100) NOT NULL,
    id_EquipmentCategory INT,
    CONSTRAINT fk_equipment_equipmentcategories
        FOREIGN KEY (id_EquipmentCategory)
        REFERENCES riwi_equipment_categories(id_EquipmentCategory));
    
    CREATE TABLE riwi_orders (
    id_WorkOrder INT AUTO_INCREMENT PRIMARY KEY,
    WorkOrder VARCHAR(100) NOT NULL,
    serviceDate DATE NOT NULL,
    id_client INT,
    CONSTRAINT fk_client_orders
        FOREIGN KEY (id_client)
        REFERENCES riwi_clients(id_client),
    Hours INT NOT NULL,
    id_technician INT,
    CONSTRAINT fk_technician_orders
        FOREIGN KEY (id_technician)
        REFERENCES riwi_technicians(id_technician),
        id_equipment INT,
        CONSTRAINT fk_equipment_orders
        FOREIGN KEY (id_equipment)
        REFERENCES riwi_equipments(id_equipment),
    id_service INT,
    CONSTRAINT fk_service_orders
        FOREIGN KEY (id_service)
        REFERENCES riwi_services(id_service),
    id_branch INT,
    CONSTRAINT fk_branch_orders
        FOREIGN KEY (id_branch)
        REFERENCES riwi_branches(id_branch),
    cost INT NOT NULL);
    
    
   
    
    
    



