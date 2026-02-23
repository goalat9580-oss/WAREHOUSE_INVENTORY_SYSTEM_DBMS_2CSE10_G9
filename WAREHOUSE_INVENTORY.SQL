-- ==========================================
-- Warehouse Inventory System Database
-- ==========================================

-- ==========================================
-- 1. WAREHOUSE TABLE
-- ==========================================

CREATE TABLE Warehouse (
    W_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    Capacity INTEGER,
    Manager_Name VARCHAR(100)
);

-- ==========================================
-- 2. INVENTORY TABLE
-- ==========================================

CREATE TABLE Inventory (
    Inventory_ID SERIAL PRIMARY KEY,
    W_ID INTEGER NOT NULL,
    Rec_Level INTEGER,
    Last_Updated DATE,
    CONSTRAINT fk_inventory_warehouse
        FOREIGN KEY (W_ID)
        REFERENCES Warehouse(W_ID)
        ON DELETE CASCADE
);

-- ==========================================
-- 3. PRODUCT TABLE
-- ==========================================

CREATE TABLE Product (
    PR_ID SERIAL PRIMARY KEY,
    PR_Name VARCHAR(100) NOT NULL,
    Description TEXT
);

-- ==========================================
-- 4. SUPPLIER TABLE
-- ==========================================

CREATE TABLE Supplier (
    Supplier_ID SERIAL PRIMARY KEY,
    S_Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(20),
    Address TEXT
);

-- ==========================================
-- 5. CUSTOMER TABLE
-- ==========================================

CREATE TABLE Customer (
    Customer_ID SERIAL PRIMARY KEY,
    C_Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(20),
    Address TEXT
);

-- ==========================================
-- 6. SHIPMENT TABLE
-- ==========================================

CREATE TABLE Shipment (
    S_ID SERIAL PRIMARY KEY,
    Customer_ID INTEGER NOT NULL,
    S_Date DATE,
    Tracking_No VARCHAR(50),
    Status VARCHAR(50),
    CONSTRAINT fk_shipment_customer
        FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID)
        ON DELETE CASCADE
);

-- ==========================================
-- 7. PURCHASE ORDER TABLE
-- ==========================================

CREATE TABLE Purchase_Order (
    PO_ID SERIAL PRIMARY KEY,
    Supplier_ID INTEGER NOT NULL,
    Order_Date DATE,
    Quantity INTEGER,
    Total_Amount NUMERIC(10,2),
    CONSTRAINT fk_po_supplier
        FOREIGN KEY (Supplier_ID)
        REFERENCES Supplier(Supplier_ID)
        ON DELETE CASCADE
);

-- ==========================================
-- MANY-TO-MANY RELATIONSHIP TABLES
-- ==========================================

-- Shipment contains Products
CREATE TABLE Shipment_Product (
    S_ID INTEGER,
    PR_ID INTEGER,
    PRIMARY KEY (S_ID, PR_ID),
    CONSTRAINT fk_sp_shipment
        FOREIGN KEY (S_ID)
        REFERENCES Shipment(S_ID)
        ON DELETE CASCADE,
    CONSTRAINT fk_sp_product
        FOREIGN KEY (PR_ID)
        REFERENCES Product(PR_ID)
        ON DELETE CASCADE
);

-- Purchase Order includes Products
CREATE TABLE PO_Product (
    PO_ID INTEGER,
    PR_ID INTEGER,
    PRIMARY KEY (PO_ID, PR_ID),
    CONSTRAINT fk_pop_po
        FOREIGN KEY (PO_ID)
        REFERENCES Purchase_Order(PO_ID)
        ON DELETE CASCADE,
    CONSTRAINT fk_pop_product
        FOREIGN KEY (PR_ID)
        REFERENCES Product(PR_ID)
        ON DELETE CASCADE
);

-- Warehouse stores Products
CREATE TABLE Warehouse_Product (
    W_ID INTEGER,
    PR_ID INTEGER,
    PRIMARY KEY (W_ID, PR_ID),
    CONSTRAINT fk_wp_warehouse
        FOREIGN KEY (W_ID)
        REFERENCES Warehouse(W_ID)
        ON DELETE CASCADE,
    CONSTRAINT fk_wp_product
        FOREIGN KEY (PR_ID)
        REFERENCES Product(PR_ID)
        ON DELETE CASCADE
);

-- Supplier provides Products
CREATE TABLE Supplier_Product (
    Supplier_ID INTEGER,
    PR_ID INTEGER,
    PRIMARY KEY (Supplier_ID, PR_ID),
    CONSTRAINT fk_spp_supplier
        FOREIGN KEY (Supplier_ID)
        REFERENCES Supplier(Supplier_ID)
        ON DELETE CASCADE,
    CONSTRAINT fk_spp_product
        FOREIGN KEY (PR_ID)
        REFERENCES Product(PR_ID)
        ON DELETE CASCADE
);

-- ==========================================
-- END OF DATABASE STRUCTURE
-- ==========================================
