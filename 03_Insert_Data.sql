INSERT INTO clients
(client_name, industry, contact_person, email, phone, city, state)
VALUES
('Titan Company Ltd','Retail','Rakesh Kumar','rakesh@titan.com','9876543210','Bengaluru','Karnataka'),
('Reliance Trends','Retail','Anil Sharma','anil@trends.com','9876543211','Mumbai','Maharashtra'),
('Pantaloons','Retail','Rahul Verma','rahul@pantaloons.com','9876543212','Pune','Maharashtra'),
('Max Fashion','Retail','Vikas Singh','vikas@maxfashion.com','9876543213','Hyderabad','Telangana'),
('Zudio','Retail','Kiran Rao','kiran@zudio.com','9876543214','Chennai','Tamil Nadu'),
('Lifestyle','Retail','Deepak Jain','deepak@lifestyle.com','9876543215','Bengaluru','Karnataka'),
('Shoppers Stop','Retail','Suresh Patel','suresh@shoppersstop.com','9876543216','Ahmedabad','Gujarat'),
('Westside','Retail','Mahesh Gupta','mahesh@westside.com','9876543217','Delhi','Delhi'),
('Croma','Electronics','Amit Kapoor','amit@croma.com','9876543218','Mumbai','Maharashtra'),
('Decathlon','Sports Retail','John Mathew','john@decathlon.com','9876543219','Bengaluru','Karnataka'),
('Bata India','Footwear','Naveen Reddy','naveen@bata.com','9876543220','Hyderabad','Telangana'),
('Raymond','Fashion','Rajesh Nair','rajesh@raymond.com','9876543221','Mumbai','Maharashtra'),
('Tanishq','Jewellery','Sanjay Mehta','sanjay@tanishq.com','9876543222','Chennai','Tamil Nadu'),
('Puma India','Sportswear','Ajay Shah','ajay@puma.com','9876543223','Pune','Maharashtra'),
('Adidas India','Sportswear','Manoj Das','manoj@adidas.com','9876543224','Delhi','Delhi'),
('Woodland','Footwear','Ravi Prasad','ravi@woodland.com','9876543225','Lucknow','Uttar Pradesh'),
('Levi''s India','Fashion','Arun Joseph','arun@levis.com','9876543226','Kochi','Kerala'),
('Asian Paints','Paints','Harish Iyer','harish@asianpaints.com','9876543227','Chennai','Tamil Nadu'),
('Samsung India','Electronics','Prakash Rao','prakash@samsung.com','9876543228','Noida','Uttar Pradesh'),
('Reliance Digital','Electronics','Vinod Sharma','vinod@reliancedigital.com','9876543229','Mumbai','Maharashtra');

SELECT * FROM clients;

INSERT INTO vendors
(vendor_name, material_type, contact_person, phone, email, city, state, gst_number)
VALUES
('ABC ACP Solutions','ACP Sheets','Ramesh Kumar','9123456701','abcacp@gmail.com','Bengaluru','Karnataka','29ABCDE1234F1Z1'),

('Bright LED Systems','LED Modules','Suresh Reddy','9123456702','brightled@gmail.com','Hyderabad','Telangana','36BCDEF2345G1Z2'),

('Steel Craft Industries','MS Fabrication','Mahesh Patel','9123456703','steelcraft@gmail.com','Ahmedabad','Gujarat','24CDEFG3456H1Z3'),

('Vinyl Graphics Pvt Ltd','Vinyl Printing','Ajay Sharma','9123456704','vinylgraphics@gmail.com','Delhi','Delhi','07DEFGH4567J1Z4'),

('Sign World','Sign Boards','Rahul Singh','9123456705','signworld@gmail.com','Mumbai','Maharashtra','27EFGHI5678K1Z5'),

('Glow Lights India','LED Lighting','Vikas Rao','9123456706','glowlights@gmail.com','Chennai','Tamil Nadu','33FGHIJ6789L1Z6'),

('Prime Acrylic Works','Acrylic Sheets','Kiran Das','9123456707','primeacrylic@gmail.com','Kolkata','West Bengal','19GHIJK7890M1Z7'),

('Color Print Solutions','Digital Printing','Arun Kumar','9123456708','colorprint@gmail.com','Pune','Maharashtra','27HIJKL8901N1Z8'),

('Metro Aluminium','Aluminium Profiles','Deepak Jain','9123456709','metroaluminium@gmail.com','Jaipur','Rajasthan','08IJKLM9012P1Z9'),

('Vision Sign Tech','LED Signage','Prakash Nair','9123456710','visionsign@gmail.com','Kochi','Kerala','32JKLMN0123Q1Z0'),

('National Hardware','Hardware','Vinod Mehta','9123456711','hardware@gmail.com','Lucknow','Uttar Pradesh','09KLMNO1234R1Z1'),

('Elite Fabricators','Fabrication','Manoj Shah','9123456712','elitefab@gmail.com','Surat','Gujarat','24LMNOP2345S1Z2'),

('Digital Flex House','Flex Printing','Naveen Kumar','9123456713','digitalflex@gmail.com','Coimbatore','Tamil Nadu','33MNOPQ3456T1Z3'),

('SS Steel Traders','Stainless Steel','Harish Gupta','9123456714','sssteel@gmail.com','Indore','Madhya Pradesh','23NOPQR4567U1Z4'),

('Universal Traders','Electrical Items','Rajesh Verma','9123456715','universal@gmail.com','Nagpur','Maharashtra','27OPQRS5678V1Z5'),

('Creative Display Systems','Display Fixtures','Ashok Rao','9123456716','creativedisplay@gmail.com','Visakhapatnam','Andhra Pradesh','37PQRST6789W1Z6'),

('Modern Lighting Solutions','LED Drivers','Sanjay Kumar','9123456717','modernlighting@gmail.com','Bhubaneswar','Odisha','21QRSTU7890X1Z7'),

('Smart Sign Supplies','Sign Accessories','Karthik Raj','9123456718','smartsign@gmail.com','Mysuru','Karnataka','29RSTUV8901Y1Z8'),

('Premium Print Media','Eco Solvent Printing','Vijay Sharma','9123456719','premiumprint@gmail.com','Chandigarh','Chandigarh','04STUVW9012Z1Z9'),

('Global Branding Materials','Branding Materials','Manish Gupta','9123456720','globalbranding@gmail.com','Noida','Uttar Pradesh','09TUVWX0123A1Z0');

SELECT * FROM vendors;

INSERT INTO materials
(material_name, category, unit, unit_cost, description)
VALUES
('ACP Sheet 4mm','ACP Sheets','Sq.Ft',280.00,'Exterior grade ACP sheet'),

('LED Module 12V','LED Modules','Nos',55.00,'Waterproof LED module'),

('MS Square Pipe','MS Fabrication','Kg',85.00,'Mild steel square pipe'),

('Vinyl Sticker','Printing','Sq.Ft',45.00,'High quality vinyl'),

('Glow Sign Board','Signage','Sq.Ft',550.00,'LED glow sign board'),

('Acrylic Sheet 5mm','Acrylic','Sq.Ft',320.00,'Clear acrylic sheet'),

('Digital Flex','Printing','Sq.Ft',28.00,'Frontlit flex media'),

('Aluminium Composite Panel','ACP Sheets','Sq.Ft',300.00,'Premium ACP panel'),

('LED Driver 12V','Electrical','Nos',450.00,'LED power supply'),

('SS Letter','Signage','Nos',650.00,'Stainless steel letters'),

('Display Rack','Display Fixtures','Nos',5200.00,'Retail display rack'),

('Aluminium Channel','Fabrication','Kg',240.00,'Aluminium frame'),

('Glass Film','Graphics','Sq.Ft',110.00,'Frosted glass film'),

('One Way Vision','Graphics','Sq.Ft',95.00,'Window branding film'),

('PVC Foam Board','Printing','Sq.Ft',140.00,'PVC display board'),

('LED Strip Light','Lighting','Meter',120.00,'Flexible LED strip'),

('SS Pipe','Stainless Steel','Kg',310.00,'304 grade stainless steel'),

('Acrylic Letter','Signage','Nos',420.00,'Laser cut acrylic letters'),

('Clip-On Frame','Display Fixtures','Nos',850.00,'Poster display frame'),

('Electrical Cable','Electrical','Meter',35.00,'Copper electrical cable');

SELECT * FROM materials;

INSERT INTO employees
(employee_name, designation, department, phone, email, city, joining_date, salary, employee_status)
VALUES
('Arun Kumar','Project Manager','Projects','9876500001','arun.kumar@retailbranding.com','Bengaluru','2023-01-10',75000.00,'Active'),

('Priya Sharma','Site Engineer','Projects','9876500002','priya.sharma@retailbranding.com','Hyderabad','2023-02-15',50000.00,'Active'),

('Rahul Verma','Production Supervisor','Production','9876500003','rahul.verma@retailbranding.com','Chennai','2022-11-20',48000.00,'Active'),

('Sneha Reddy','Graphic Designer','Design','9876500004','sneha.reddy@retailbranding.com','Bengaluru','2023-03-12',45000.00,'Active'),

('Vikas Singh','Procurement Executive','Purchase','9876500005','vikas.singh@retailbranding.com','Mumbai','2022-10-05',47000.00,'Active'),

('Anjali Gupta','Accounts Executive','Finance','9876500006','anjali.gupta@retailbranding.com','Delhi','2023-04-18',42000.00,'Active'),

('Kiran Rao','Sales Executive','Sales','9876500007','kiran.rao@retailbranding.com','Pune','2022-09-25',46000.00,'Active'),

('Suresh Patel','Installation Technician','Operations','9876500008','suresh.patel@retailbranding.com','Ahmedabad','2023-05-08',38000.00,'Active'),

('Mahesh Nair','Quality Inspector','Quality','9876500009','mahesh.nair@retailbranding.com','Kochi','2023-01-22',43000.00,'Active'),

('Deepak Jain','Store Incharge','Stores','9876500010','deepak.jain@retailbranding.com','Jaipur','2022-12-14',39000.00,'Active'),

('Harish Mehta','CAD Designer','Design','9876500011','harish.mehta@retailbranding.com','Surat','2023-06-01',44000.00,'Active'),

('Ravi Prasad','Fabrication Supervisor','Production','9876500012','ravi.prasad@retailbranding.com','Coimbatore','2022-08-18',50000.00,'Active'),

('Naveen Kumar','Marketing Executive','Marketing','9876500013','naveen.kumar@retailbranding.com','Noida','2023-02-08',43000.00,'Active'),

('Manoj Das','Electrical Technician','Operations','9876500014','manoj.das@retailbranding.com','Visakhapatnam','2023-03-25',40000.00,'Active'),

('Ashok Rao','HR Executive','HR','9876500015','ashok.rao@retailbranding.com','Mysuru','2022-07-10',41000.00,'Active'),

('Prakash Iyer','Project Coordinator','Projects','9876500016','prakash.iyer@retailbranding.com','Chennai','2023-07-15',52000.00,'Active'),

('Vinod Sharma','Purchase Manager','Purchase','9876500017','vinod.sharma@retailbranding.com','Nagpur','2022-06-12',62000.00,'Active'),

('Karthik Raj','Senior Installer','Operations','9876500018','karthik.raj@retailbranding.com','Bengaluru','2023-08-01',41000.00,'Active'),

('Sanjay Patel','Finance Manager','Finance','9876500019','sanjay.patel@retailbranding.com','Mumbai','2022-05-20',70000.00,'Active'),

('Meena Thomas','Business Development Manager','Sales','9876500020','meena.thomas@retailbranding.com','Kochi','2023-09-10',68000.00,'Active');

SELECT COUNT(*) AS Total_Employees
FROM employees;

INSERT INTO projects
(client_id, project_name, project_type, po_number, start_date, expected_end_date, actual_end_date, project_status, budget_amount, invoice_amount)
VALUES
(1,'Titan Exterior Signage Installation','LED Signage','PO2026001','2026-01-05','2026-01-25','2026-01-23','Completed',250000.00,295000.00),

(2,'Reliance Trends Store Branding','Retail Branding','PO2026002','2026-01-12','2026-02-05','2026-02-04','Completed',180000.00,212400.00),

(3,'Pantaloons ACP Cladding Project','ACP Cladding','PO2026003','2026-02-01','2026-02-28',NULL,'In Progress',320000.00,377600.00),

(4,'Max Fashion Interior Graphics','Interior Branding','PO2026004','2026-02-08','2026-03-02','2026-02-28','Completed',150000.00,177000.00),

(5,'Zudio Complete Store Branding','Turnkey Project','PO2026005','2026-03-01','2026-03-30',NULL,'In Progress',410000.00,483800.00),

(6,'Lifestyle LED Glow Sign','LED Signage','PO2026006','2026-03-10','2026-04-05','2026-04-03','Completed',225000.00,265500.00),

(7,'Shoppers Stop Retail Branding','Turnkey Project','PO2026007','2026-04-01','2026-04-28',NULL,'In Progress',500000.00,590000.00),

(8,'Westside Vinyl Graphics','Retail Branding','PO2026008','2026-04-10','2026-05-05','2026-05-02','Completed',275000.00,324500.00),

(9,'Croma Totem Sign Installation','LED Signage','PO2026009','2026-05-01','2026-05-28','2026-05-26','Completed',360000.00,424800.00),

(10,'Decathlon Wayfinding Signage','Wayfinding','PO2026010','2026-05-12','2026-06-08',NULL,'In Progress',190000.00,224200.00),

(11,'Bata Store Renovation Branding','Retail Branding','PO2026011','2026-06-01','2026-06-30','2026-06-28','Completed',430000.00,507400.00),

(12,'Raymond Interior Branding','Interior Branding','PO2026012','2026-06-10','2026-07-08',NULL,'In Progress',280000.00,330400.00),

(13,'Tanishq Premium SS Letter Signage','Premium Signage','PO2026013','2026-07-01','2026-07-30','2026-07-28','Completed',340000.00,401200.00),

(14,'Puma Retail Display Branding','Display Branding','PO2026014','2026-07-12','2026-08-05',NULL,'Planning',210000.00,247800.00),

(15,'Adidas Store Branding','Retail Branding','PO2026015','2026-08-01','2026-08-28','2026-08-26','Completed',390000.00,460200.00),

(16,'Woodland Exterior LED Signage','LED Signage','PO2026016','2026-08-10','2026-09-05',NULL,'Planning',450000.00,531000.00),

(17,'Levi''s Interior Graphics','Interior Branding','PO2026017','2026-09-01','2026-09-25',NULL,'Planning',280000.00,330400.00),

(18,'Asian Paints Dealer Branding','Retail Branding','PO2026018','2026-09-08','2026-10-05',NULL,'Planning',375000.00,442500.00),

(19,'Samsung Experience Store Branding','Turnkey Project','PO2026019','2026-09-15','2026-10-15',NULL,'Planning',520000.00,613600.00),

(20,'Reliance Digital Showroom Branding','Retail Branding','PO2026020','2026-09-20','2026-10-30',NULL,'Planning',680000.00,802400.00);

SELECT COUNT(*) AS Total_Projects
FROM projects;

INSERT INTO purchase_orders
(po_number, project_id, vendor_id, material_id, po_date, quantity, unit_price, basic_amount, gst_amount, total_amount, po_status)
VALUES
('PO2026001',1,1,1,'2026-01-06',450.00,280.00,126000.00,22680.00,148680.00,'Completed'),
('PO2026002',2,2,2,'2026-01-13',800.00,55.00,44000.00,7920.00,51920.00,'Completed'),
('PO2026003',3,3,3,'2026-02-02',1500.00,85.00,127500.00,22950.00,150450.00,'Open'),
('PO2026004',4,4,4,'2026-02-09',600.00,45.00,27000.00,4860.00,31860.00,'Completed'),
('PO2026005',5,5,5,'2026-03-02',250.00,550.00,137500.00,24750.00,162250.00,'Open'),
('PO2026006',6,6,6,'2026-03-11',350.00,320.00,112000.00,20160.00,132160.00,'Completed'),
('PO2026007',7,7,7,'2026-04-02',1200.00,28.00,33600.00,6048.00,39648.00,'Open'),
('PO2026008',8,8,8,'2026-04-11',500.00,300.00,150000.00,27000.00,177000.00,'Completed'),
('PO2026009',9,9,9,'2026-05-02',180.00,450.00,81000.00,14580.00,95580.00,'Completed'),
('PO2026010',10,10,10,'2026-05-13',140.00,650.00,91000.00,16380.00,107380.00,'Open'),
('PO2026011',11,11,11,'2026-06-02',40.00,5200.00,208000.00,37440.00,245440.00,'Completed'),
('PO2026012',12,12,12,'2026-06-11',700.00,240.00,168000.00,30240.00,198240.00,'Open'),
('PO2026013',13,13,13,'2026-07-02',500.00,110.00,55000.00,9900.00,64900.00,'Completed'),
('PO2026014',14,14,14,'2026-07-13',850.00,95.00,80750.00,14535.00,95285.00,'Pending'),
('PO2026015',15,15,15,'2026-08-02',600.00,140.00,84000.00,15120.00,99120.00,'Completed'),
('PO2026016',16,16,16,'2026-08-11',1000.00,120.00,120000.00,21600.00,141600.00,'Pending'),
('PO2026017',17,17,17,'2026-09-02',450.00,310.00,139500.00,25110.00,164610.00,'Pending'),
('PO2026018',18,18,18,'2026-09-09',200.00,420.00,84000.00,15120.00,99120.00,'Pending'),
('PO2026019',19,19,19,'2026-09-16',80.00,850.00,68000.00,12240.00,80240.00,'Pending'),
('PO2026020',20,20,20,'2026-09-21',2500.00,35.00,87500.00,15750.00,103250.00,'Pending');

SELECT COUNT(*) AS Total_Purchase_Orders
FROM purchase_orders;

INSERT INTO employee_expenses
(employee_id, project_id, expense_date, expense_type, amount, remarks)
VALUES
(1,1,'2026-01-08','Travel',3500.00,'Site visit for project planning'),

(2,2,'2026-01-16','Food',1800.00,'Installation team lunch'),

(3,3,'2026-02-04','Fuel',2400.00,'Material transportation'),

(4,4,'2026-02-12','Accommodation',6500.00,'Outstation installation'),

(5,5,'2026-03-06','Travel',4100.00,'Vendor meeting'),

(6,6,'2026-03-16','Food',2200.00,'Project execution'),

(7,7,'2026-04-05','Fuel',2800.00,'Company vehicle'),

(8,8,'2026-04-14','Travel',3600.00,'Site inspection'),

(9,9,'2026-05-05','Accommodation',7200.00,'Project supervision'),

(10,10,'2026-05-17','Travel',3900.00,'Client coordination'),

(11,11,'2026-06-04','Food',2600.00,'Installation staff meals'),

(12,12,'2026-06-15','Fuel',3000.00,'Equipment transportation'),

(13,13,'2026-07-06','Travel',4200.00,'Quality inspection'),

(14,14,'2026-07-18','Accommodation',6900.00,'Dealer branding support'),

(15,15,'2026-08-05','Fuel',3100.00,'Material pickup'),

(16,16,'2026-08-14','Travel',4500.00,'Project review meeting'),

(17,17,'2026-09-04','Food',2100.00,'Site refreshments'),

(18,18,'2026-09-12','Accommodation',7600.00,'Installation work'),

(19,19,'2026-09-19','Travel',4800.00,'Dealer visit'),

(20,20,'2026-09-26','Fuel',3400.00,'Final project inspection');

SELECT COUNT(*) AS Total_Employee_Expenses
FROM employee_expenses;

INSERT INTO client_invoices
(invoice_number, project_id, client_id, project_description, invoice_date, due_date, invoice_amount, gst_amount, total_amount, invoice_status)
VALUES
('INV2026001',1,1,'Titan Exterior Signage Installation','2026-01-24','2026-02-23',250000.00,45000.00,295000.00,'Paid'),

('INV2026002',2,2,'Reliance Trends Store Branding','2026-02-04','2026-03-06',180000.00,32400.00,212400.00,'Paid'),

('INV2026003',3,3,'Pantaloons ACP Cladding Project','2026-02-27','2026-03-29',320000.00,57600.00,377600.00,'Pending'),

('INV2026004',4,4,'Max Fashion Interior Graphics','2026-02-28','2026-03-30',150000.00,27000.00,177000.00,'Paid'),

('INV2026005',5,5,'Zudio Complete Store Branding','2026-03-29','2026-04-28',410000.00,73800.00,483800.00,'Pending'),

('INV2026006',6,6,'Lifestyle LED Glow Sign','2026-04-03','2026-05-03',225000.00,40500.00,265500.00,'Paid'),

('INV2026007',7,7,'Shoppers Stop Retail Branding','2026-04-27','2026-05-27',500000.00,90000.00,590000.00,'Pending'),

('INV2026008',8,8,'Westside Vinyl Graphics','2026-05-02','2026-06-01',275000.00,49500.00,324500.00,'Paid'),

('INV2026009',9,9,'Croma Totem Sign Installation','2026-05-26','2026-06-25',360000.00,64800.00,424800.00,'Paid'),

('INV2026010',10,10,'Decathlon Wayfinding Signage','2026-06-07','2026-07-07',190000.00,34200.00,224200.00,'Pending'),

('INV2026011',11,11,'Bata Store Renovation Branding','2026-06-28','2026-07-28',430000.00,77400.00,507400.00,'Paid'),

('INV2026012',12,12,'Raymond Interior Branding','2026-07-07','2026-08-06',280000.00,50400.00,330400.00,'Pending'),

('INV2026013',13,13,'Tanishq Premium SS Letter Signage','2026-07-28','2026-08-27',340000.00,61200.00,401200.00,'Paid'),

('INV2026014',14,14,'Puma Retail Display Branding','2026-08-04','2026-09-03',210000.00,37800.00,247800.00,'Pending'),

('INV2026015',15,15,'Adidas Store Branding','2026-08-26','2026-09-25',390000.00,70200.00,460200.00,'Paid'),

('INV2026016',16,16,'Woodland Exterior LED Signage','2026-09-04','2026-10-04',450000.00,81000.00,531000.00,'Pending'),

('INV2026017',17,17,'Levi''s Interior Graphics','2026-09-24','2026-10-24',280000.00,50400.00,330400.00,'Pending'),

('INV2026018',18,18,'Asian Paints Dealer Branding','2026-10-04','2026-11-03',375000.00,67500.00,442500.00,'Pending'),

('INV2026019',19,19,'Samsung Experience Store Branding','2026-10-14','2026-11-13',520000.00,93600.00,613600.00,'Pending'),

('INV2026020',20,20,'Reliance Digital Showroom Branding','2026-10-29','2026-11-28',680000.00,122400.00,802400.00,'Pending');

SELECT COUNT(*) AS Total_Client_Invoices
FROM client_invoices;

INSERT INTO client_payments
(invoice_id, client_id, payment_date, payment_mode, amount_paid, transaction_reference, payment_status, remarks)
VALUES

(1,1,'2026-02-15','Bank Transfer',295000.00,'TXN2026001','Paid','Payment received in full'),

(2,2,'2026-02-28','NEFT',212400.00,'TXN2026002','Paid','Invoice settled'),

(3,3,NULL,NULL,0.00,NULL,'Pending','Payment yet to be received'),

(4,4,'2026-03-20','RTGS',177000.00,'TXN2026004','Paid','Full payment received'),

(5,5,NULL,NULL,0.00,NULL,'Pending','Awaiting payment'),

(6,6,'2026-04-28','Bank Transfer',265500.00,'TXN2026006','Paid','Invoice cleared'),

(7,7,NULL,NULL,0.00,NULL,'Pending','Credit period active'),

(8,8,'2026-05-25','UPI',324500.00,'TXN2026008','Paid','Payment received'),

(9,9,'2026-06-15','NEFT',424800.00,'TXN2026009','Paid','Invoice settled'),

(10,10,NULL,NULL,0.00,NULL,'Pending','Due next month'),

(11,11,'2026-07-18','RTGS',507400.00,'TXN2026011','Paid','Payment completed'),

(12,12,NULL,NULL,0.00,NULL,'Pending','Awaiting finance approval'),

(13,13,'2026-08-18','Bank Transfer',401200.00,'TXN2026013','Paid','Invoice closed'),

(14,14,NULL,NULL,0.00,NULL,'Pending','Payment under process'),

(15,15,'2026-09-18','NEFT',460200.00,'TXN2026015','Paid','Received successfully'),

(16,16,NULL,NULL,0.00,NULL,'Pending','Expected next month'),

(17,17,NULL,NULL,0.00,NULL,'Pending','Invoice not yet due'),

(18,18,NULL,NULL,0.00,NULL,'Pending','Awaiting client confirmation'),

(19,19,NULL,NULL,0.00,NULL,'Pending','Payment expected'),

(20,20,NULL,NULL,0.00,NULL,'Pending','New invoice issued');

SELECT COUNT(*) AS Total_Client_Payments
FROM client_payments;

INSERT INTO vendor_payments
(po_id, vendor_id, payment_date, payment_mode, amount_paid, transaction_reference, payment_status, remarks)
VALUES

(1,1,'2026-01-20','Bank Transfer',148680.00,'VTXN2026001','Paid','Full payment released'),

(2,2,'2026-02-01','NEFT',51920.00,'VTXN2026002','Paid','Invoice settled'),

(3,3,NULL,NULL,0.00,NULL,'Pending','Payment awaiting approval'),

(4,4,'2026-02-25','RTGS',31860.00,'VTXN2026004','Paid','Payment completed'),

(5,5,NULL,NULL,0.00,NULL,'Pending','Advance yet to be released'),

(6,6,'2026-04-10','Bank Transfer',132160.00,'VTXN2026006','Paid','Vendor paid'),

(7,7,NULL,NULL,0.00,NULL,'Pending','Material delivery in progress'),

(8,8,'2026-05-10','UPI',177000.00,'VTXN2026008','Paid','Payment processed'),

(9,9,'2026-05-30','NEFT',95580.00,'VTXN2026009','Paid','Invoice cleared'),

(10,10,NULL,NULL,0.00,NULL,'Pending','Awaiting QC approval'),

(11,11,'2026-06-25','RTGS',245440.00,'VTXN2026011','Paid','Vendor settlement completed'),

(12,12,NULL,NULL,0.00,NULL,'Pending','Pending finance approval'),

(13,13,'2026-07-20','Bank Transfer',64900.00,'VTXN2026013','Paid','Payment completed'),

(14,14,NULL,NULL,0.00,NULL,'Pending','Awaiting material verification'),

(15,15,'2026-08-25','NEFT',99120.00,'VTXN2026015','Paid','Vendor paid in full'),

(16,16,NULL,NULL,0.00,NULL,'Pending','Scheduled next month'),

(17,17,NULL,NULL,0.00,NULL,'Pending','Payment under process'),

(18,18,NULL,NULL,0.00,NULL,'Pending','Invoice under verification'),

(19,19,NULL,NULL,0.00,NULL,'Pending','Awaiting approval'),

(20,20,NULL,NULL,0.00,NULL,'Pending','New purchase order');

SELECT COUNT(*) AS Total_Vendor_Payments
FROM vendor_payments;

