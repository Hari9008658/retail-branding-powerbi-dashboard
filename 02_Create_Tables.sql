USE RetailBrandingDB;


CREATE TABLE clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    client_name VARCHAR(100) NOT NULL,
    industry VARCHAR(50),
    contact_person VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    city VARCHAR(50),
    state VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE vendors (
    vendor_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_name VARCHAR(100) NOT NULL,
    material_type VARCHAR(50),
    contact_person VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    state VARCHAR(50),
    gst_number VARCHAR(20) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE materials (
    material_id INT AUTO_INCREMENT PRIMARY KEY,
    material_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit VARCHAR(20),
    unit_cost DECIMAL(10,2),
    description VARCHAR(255)
);

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    designation VARCHAR(50),
    department VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    joining_date DATE,
    salary DECIMAL(10,2),
    employee_status VARCHAR(20)
);

Show tables;

CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    project_name VARCHAR(150) NOT NULL,
    project_type VARCHAR(50),
    po_number VARCHAR(20) UNIQUE,
    start_date DATE,
    expected_end_date DATE,
    actual_end_date DATE,
    project_status VARCHAR(30),
    budget_amount DECIMAL(12,2),
    invoice_amount DECIMAL(12,2),

    FOREIGN KEY (client_id)
    REFERENCES clients(client_id)
);

CREATE TABLE purchase_orders (
    po_id INT AUTO_INCREMENT PRIMARY KEY,
    po_number VARCHAR(20) UNIQUE NOT NULL,
    project_id INT NOT NULL,
    vendor_id INT NOT NULL,
    material_id INT NOT NULL,
    po_date DATE NOT NULL,
    quantity DECIMAL(10,2) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    basic_amount DECIMAL(12,2) NOT NULL,
    gst_amount DECIMAL(12,2) NOT NULL,
    total_amount DECIMAL(12,2) NOT NULL,
    po_status VARCHAR(20) NOT NULL,

    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id),
    FOREIGN KEY (material_id) REFERENCES materials(material_id)
);

CREATE TABLE employee_expenses (
    expense_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    project_id INT NOT NULL,
    expense_date DATE NOT NULL,
    expense_type VARCHAR(50),
    amount DECIMAL(10,2) NOT NULL,
    remarks VARCHAR(255),

    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id),

    FOREIGN KEY (project_id)
        REFERENCES projects(project_id)
);

CREATE TABLE client_invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) UNIQUE NOT NULL,
    project_id INT NOT NULL,
    client_id INT NOT NULL,
    project_description VARCHAR(255) NOT NULL,
    invoice_date DATE NOT NULL,
    due_date DATE NOT NULL,
    invoice_amount DECIMAL(12,2) NOT NULL,
    gst_amount DECIMAL(12,2) NOT NULL,
    total_amount DECIMAL(12,2) NOT NULL,
    invoice_status VARCHAR(20),

    FOREIGN KEY (project_id)
        REFERENCES projects(project_id),

    FOREIGN KEY (client_id)
        REFERENCES clients(client_id)
);

CREATE TABLE client_payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_id INT NOT NULL,
    client_id INT NOT NULL,
    payment_date DATE,
    payment_mode VARCHAR(30),
    amount_paid DECIMAL(12,2) NOT NULL,
    transaction_reference VARCHAR(50) UNIQUE,
    payment_status VARCHAR(20),
    remarks VARCHAR(255),

    FOREIGN KEY (invoice_id)
        REFERENCES client_invoices(invoice_id),

    FOREIGN KEY (client_id)
        REFERENCES clients(client_id)
);

CREATE TABLE vendor_payments (
    vendor_payment_id INT AUTO_INCREMENT PRIMARY KEY,
    po_id INT NOT NULL,
    vendor_id INT NOT NULL,
    payment_date DATE,
    payment_mode VARCHAR(30),
    amount_paid DECIMAL(12,2) NOT NULL,
    transaction_reference VARCHAR(50) UNIQUE,
    payment_status VARCHAR(20),
    remarks VARCHAR(255),

    FOREIGN KEY (po_id)
        REFERENCES purchase_orders(po_id),

    FOREIGN KEY (vendor_id)
        REFERENCES vendors(vendor_id)
);

show tables ;


select * from clients;
select * from vendors;
select * from materials;
select * from employees;
select * from projects;
select * from client_payments;
select * from client_invoices;
Select * from Vendor_payments;
Select * from Purchase_orders;
Select * from employee_expenses;