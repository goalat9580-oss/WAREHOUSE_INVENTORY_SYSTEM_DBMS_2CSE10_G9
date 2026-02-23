# 🏬 Warehouse Inventory System  
### 📊 Entity-Relationship (ER) Diagram Project

---

## 📌 Project Overview

The **Warehouse Inventory System** is designed to manage and organize warehouse operations efficiently.  
This ER model represents the logical structure of the system including warehouses, products, suppliers, customers, shipments, purchase orders, and inventory tracking.

The diagram visually demonstrates entities, attributes, relationships, and cardinalities used to design a structured relational database system.

---

## 🎯 Objectives

- Manage warehouse details and capacity
- Track product information
- Monitor inventory and reorder levels
- Manage suppliers and purchase orders
- Handle shipments and customer deliveries
- Represent real-world warehouse operations using ER modeling

---

# 🏗 System Entities & Attributes

---

## 1️⃣ Warehouse
**Primary Key:** `W_ID`

**Attributes:**
- Name
- Location
- Capacity
- Manager_Name

---

## 2️⃣ Inventory
**Primary Key:** `Inventory_ID`

**Attributes:**
- Rec_Level (Reorder Level)
- Last_Updated

🔹 Relationship:
- One Warehouse **has many** Inventory records (1:N)

---

## 3️⃣ Product
**Primary Key:** `PR_ID`

**Attributes:**
- PR_Name
- Description

---

## 4️⃣ Supplier
**Primary Key:** `Supplier_ID`

**Attributes:**
- S_Name
- Contact
- Address

🔹 Relationship:
- One Supplier **provides many** Products (1:N)

---

## 5️⃣ Customer
**Primary Key:** `Customer_ID`

**Attributes:**
- C_Name
- Contact
- Address

🔹 Relationship:
- One Customer **receives many** Shipments (1:N)

---

## 6️⃣ Shipment
**Primary Key:** `S_ID`

**Attributes:**
- S_Date
- Tracking_No
- Status

🔹 Relationship:
- Shipment **contains many** Products (M:N)

---

## 7️⃣ Purchase Order
**Primary Key:** `PO_ID`

**Attributes:**
- Order_Date
- Quantity
- Total_Amount

🔹 Relationship:
- Purchase Order **includes many** Products (M:N)

---

# 🔗 Relationships & Cardinality

| Relationship | Type |
|--------------|------|
| Warehouse — Has — Inventory | 1 : N |
| Warehouse — Stores — Product | 1 : N |
| Supplier — Provides — Product | 1 : N |
| Product — Contains — Shipment | M : N |
| Product — Includes — Purchase Order | M : N |
| Customer — Receives — Shipment | 1 : N |

---

# 🗄 Database Design Highlights

- Primary Keys clearly defined for all entities
- Proper cardinality representation (1, N)
- Real-world warehouse operations modeled accurately
- Supports normalization and scalable database implementation
- Eliminates data redundancy through structured relationships

---

# 🛠 Tools Used

- draw.io (diagrams.net) for ER Diagram creation
- GitHub for project version control

---

# 📄 ER Diagram
https://github.com/goalat9580-oss/WAREHOUSE_INVENTORY_SYSTEM_DBMS_2CSE10_G9/blob/main/WAREHOUSE.drawio.png




---

# 📚 Learning Outcomes

- Understanding of ER modeling concepts
- Identification of entities, attributes, and relationships
- Implementation of cardinality constraints
- Real-world database system design
- Proper relational mapping structure

---

# 👨‍🎓 Submitted By

- **Arpan Pandey** – 2410030086  
- **Sujal Chaudhary** – 2410030095  
- **Ravikant Kumar** – 241003016  
- **Shreshtha Tiwari** – 2410030117  

---

# 🏫 Course Information

Subject: Database Management System (DBMS)  
Project Type: ER Diagram Modeling  
Academic Year: 2025–2026  

---

# ✅ Conclusion

This ER diagram successfully represents a complete Warehouse Inventory Management System.  
It provides a strong foundation for implementing the system in a relational database such as MySQL, PostgreSQL, or Oracle.

The model ensures:

✔ Efficient warehouse tracking  
✔ Organized supplier and purchase management  
✔ Proper shipment handling  
✔ Scalable and structured database design  

---

⭐ Thank you for reviewing our project!
