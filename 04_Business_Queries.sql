-- SECTION 1 : BASIC SELECT QUERIES
select * from clients;
select * from vendors;
select * from materials;
select * from employees;
select * from projects;
select * from client_payments;
select * from projects where project_status='Completed';
select * from client_invoices where invoice_status = 'Pending';
select employee_name,designation,salary from employees where salary>'50,000'; 
select material_name , category , unit_cost from materials where unit_cost > '500';
select po_number, total_amount , po_status from purchase_orders where po_status = 'Pending';

-- SECTION 2 : FILTERING & SORTING
select project_name , budget_amount from projects where budget_amount > '5,00,000';
select employee_name , department ,city from employees where city = 'chennai';
select Vendor_name , city from vendors where city = 'Bengaluru';
select material_name , category , unit_cost from materials where unit_cost between 100 and 500;
select client_name , city from clients where client_name like 'R%';
select employee_name, salary from employees order by salary desc;
select invoice_number, invoice_amount  from client_invoices order by invoice_amount desc limit 5;
select po_date, po_number from purchase_orders order by po_date;
select employee_name, department from employees where department = 'design' or 'projects';

-- SECTION 3 : AGGREGATE FUNCTIONS

select count(*) as Total_Count from clients;
select Count(*) as Total_Employees from employees;
select sum(budget_amount) as Total_Budget from projects;
select sum(invoice_amount) as Total_Invoice_Amount from client_invoices;
select round(avg(salary),2) as Avg_Salary from employees;
select max(salary) from employees as Highest_Salary;
select min(unit_cost) as Lowest_Material_Cost from materials;
SELECT SUM(total_amount) AS total_purchase_value
FROM purchase_orders;
SELECT COUNT(*) AS completed_projects
FROM projects
WHERE project_status = 'Completed';
SELECT ROUND(AVG(budget_amount), 2) AS average_project_budget
FROM projects;

-- SECTION 4 : JOIN QUERIES
select
 c.client_name , 
 p.project_name,
 p.project_status,
 p.budget_amount
from clients c inner join projects p on c.client_id = p.client_id;

SELECT
    p.project_name,
    ci.invoice_number,
    ci.invoice_date,
    ci.total_amount,
    ci.invoice_status
FROM projects p
INNER JOIN client_invoices ci
ON p.project_id = ci.project_id;

select
 c.client_name,
 cp.payment_date,
 cp.amount_paid,
 cp.payment_mode,
 cp.payment_status
 from clients c inner join client_payments cp on c.client_id = cp.client_id;
 
 select
 p.project_name,
 ci.invoice_number,
 ci.invoice_date,
 ci.invoice_status,
 ci.invoice_amount 
 from projects p inner join client_invoices ci on p.project_id = ci.project_id;
 
select
c.client_name,
cp.payment_date,
cp.amount_paid,
cp.payment_mode,
cp.payment_status
from clients c inner join Client_payments cp on c.client_id = cp.client_id;

select
v.vendor_name,
vp.amount_paid,
vp.payment_date,
vp.payment_status
from vendors v inner join vendor_payments vp on v.vendor_id = vp.vendor_id;

select
v.vendor_name,
Po.Po_number,
Po.total_amount,
Po.Po_date
from vendors v inner join Purchase_orders po on v.vendor_id = po.vendor_id;

select
M.Material_Name,
Po.Po_number,
Po.Po_date,
Po.Total_amount
from Purchase_orders PO inner join Materials M on M.Material_id = Po.Material_id;

select
E.Employee_Name,
EE.Expense_date,
EE.Amount,
EE.Expense_Type
from employees E inner join employee_expenses EE on E.Employee_id = EE.Employee_id;

SELECT
    p.project_name,
    e.employee_name,
    ee.expense_type,
    ee.amount
FROM employee_expenses ee
INNER JOIN employees e
ON ee.employee_id = e.employee_id
INNER JOIN projects p
ON ee.project_id = p.project_id;

select
 c.client_name,
 ci.invoice_number,
 ci.invoice_date,
 ci.total_amount,
 ci.invoice_status
    from clients c inner join client_invoices ci on c.client_id = ci.client_id;
    
    select
    po.po_number,
    p.project_name,
    v.vendor_name,
    m.material_name,
    po.quantity,
    po.total_amount,
    po.po_status
    from purchase_orders Po inner join projects p on po.project_id = p.project_id
    inner join vendors v on po.vendor_id = v.vendor_id 
	inner join materials m on po.material_id = m. material_id;
    
    select
    project_name,
    budget_amount,
    invoice_amount,
    invoice_amount-budget_amount as Profit from projects;
    
    select
    c.client_name,
    ci.invoice_number,
    ci.total_amount,
    cp.amount_paid,
    cp.payment_status
    from clients c inner join client_invoices ci on c.client_id = ci.client_id
    inner join  client_payments cp on ci.invoice_id = cp.invoice_id;
    
    select
    v.vendor_name,
    po.po_number,
    po.total_amount,
    vp.amount_paid,
    vp.payment_status
    from vendors v inner join purchase_orders po on v.vendor_id = po.vendor_id
    inner join vendor_payments vp on po.po_id = vp.po_id;
    
    select 
    c.client_name,
    p.project_name,
    p.project_status
    from clients c inner join projects p on c.client_id = p.client_id order by client_name;
    
    SELECT
    c.client_name,
    p.project_name,
    ci.invoice_number,
    ci.total_amount AS invoice_value,
    cp.payment_status,
    p.project_status
    from clients c inner join projects p on c.client_id = p.client_id
    inner join client_invoices ci on p.project_id = ci.project_id 
    inner join client_payments cp on ci.invoice_id = cp.invoice_id;
    
		SELECT
    project_name,
    budget_amount,
    invoice_amount,
    invoice_amount - budget_amount AS profit
	FROM projects;
    
    SELECT
    c.client_name,
    ci.invoice_number,
    ci.total_amount,
    cp.amount_paid,
    cp.payment_status
FROM clients c
INNER JOIN client_invoices ci
ON c.client_id = ci.client_id
INNER JOIN client_payments cp
ON ci.invoice_id = cp.invoice_id;

SELECT
    v.vendor_name,
    po.po_number,
    po.total_amount,
    vp.amount_paid,
    vp.payment_status
FROM vendors v
INNER JOIN purchase_orders po
ON v.vendor_id = po.vendor_id
INNER JOIN vendor_payments vp
ON po.po_id = vp.po_id;

SELECT
    c.client_name,
    p.project_name,
    p.project_status
FROM clients c
INNER JOIN projects p
ON c.client_id = p.client_id
ORDER BY c.client_name;

SELECT
    c.client_name,
    p.project_name,
    ci.invoice_number,
    ci.total_amount AS invoice_value,
    cp.payment_status,
    p.project_status
FROM clients c
INNER JOIN projects p
ON c.client_id = p.client_id
INNER JOIN client_invoices ci
ON p.project_id = ci.project_id
INNER JOIN client_payments cp
ON ci.invoice_id = cp.invoice_id;

-- Section 5 — GROUP BY & HAVING

select
c.client_name,
sum(ci.total_amount) as Total_invoice_value
from clients c inner join client_invoices ci on c.client_id = ci.client_id
group by c.client_id,c.client_name
order by total_invoice_value desc;	

select
v.vendor_name,
sum(po.total_amount) as Total_purchase_value
from vendors v inner join purchase_orders po on v.vendor_id = po.vendor_id
group by v.vendor_id,v.vendor_name
order by total_purchase_value desc;

select
project_status,
count(*) as Project_count
from projects group by project_status;

select
project_type,
sum(budget_amount) as Total_budget
from projects 
group by project_type
order by total_budget desc;

select
project_type,
avg(budget_amount) as Avg_budget
from projects
group by project_type
order by Avg_budget desc;

select
e.employee_name,
sum(ee.amount) as Total_employee_expenses
from employees e inner join employee_expenses ee on e.employee_id = ee.employee_id
group by e.employee_id,e.employee_name
order by Total_employee_expenses desc;

select
expense_type,
sum(amount) as Total_expenses
from employee_expenses 
group by expense_type
order by Total_expenses desc;

select
payment_mode,
sum(amount_paid) as Total_received
from client_payments
where payment_status = 'paid'
group by payment_mode
order by Total_received desc;

select
v.vendor_name,
sum(po.total_amount) as Total_purchase_value
from vendors v inner join purchase_orders po on v.vendor_id = Po.vendor_id
group by v.vendor_id,v.vendor_name
having sum(po.total_amount) > 300000
order by Total_purchase_value desc;

select
c.client_name,
sum(ci.invoice_amount) as Total_invoice_value
from clients c inner join client_invoices ci on c.client_id = ci.client_id
group by c.client_id,c.client_name
having sum(ci.invoice_amount) > 500000
order by Total_invoice_value desc;

-- Section 6 — CASE Statements 
select
project_name,
budget_amount,
case
when budget_amount>=500000 then 'High Value'
when budget_amount>=250000 then 'Medium Value'
else 'low value'
end as project_value_category
from projects
order by budget_amount desc;

select
ci.invoice_number,
ci.total_amount,
cp.amount_paid,
case
when cp.payment_status = 'paid' then 'Fully Paid'
when cp.payment_status = 'pending' then 'Outstanding'
else 'Other'
end as Payment_Category
from client_invoices ci inner join client_payments cp on ci.client_id = cp.client_id;

Select
ci.invoice_number,
ci.total_amount,
cp.amount_paid,
ci.total_amount - cp.amount_paid as outstanding_amount,
case
when ci.total_amount - cp.amount_paid = 0 then 'Fully Settled'
when cp.amount_paid > 0 then 'Partially settled'
else 'Outstanding'
end as Payment_category
from client_invoices ci inner join client_payments cp on ci.client_id=cp.client_id;

select
po_number,
total_amount,
po_status,
case
when po_status = 'completed' then 'closed'
when po_status = 'open' then 'Progress'
when po_status = 'pending' then 'Awaiting action'
else 'other'
end as Po_Category
from purchase_orders;

SELECT
    project_name,
    budget_amount,
    invoice_amount,
    invoice_amount - budget_amount AS variance,
    CASE
        WHEN invoice_amount > budget_amount
            THEN 'Above Budget'
        WHEN invoice_amount = budget_amount
            THEN 'On Budget'
        ELSE 'Below Budget'
    END AS financial_status
FROM projects
ORDER BY variance DESC;

-- Section 7 — Subqueries (61–65).

SELECT
    project_name,
    budget_amount
FROM projects
WHERE budget_amount > (
    SELECT AVG(budget_amount)
    FROM projects
)
ORDER BY budget_amount DESC;

select
employee_name,
designation,
salary
from employees 
where salary > (
select avg(salary)
from employees)
order by salary desc;

select
project_name,
budget_amount
from projects
where budget_amount = (
select max(budget_amount)
from projects);

select
c.client_name,
sum(ci.total_amount) as Total_invoice_value
from clients c 
inner join client_invoices ci
on c.client_id = ci.client_id
group by c.client_id,c.client_name
having sum(ci.total_amount) > ( 
select avg(total_amount) 
from client_invoices)
order by Total_invoice_value desc;

SELECT
    v.vendor_name,
    SUM(po.total_amount) AS total_purchase_value
FROM vendors v
INNER JOIN purchase_orders po
    ON v.vendor_id = po.vendor_id
GROUP BY v.vendor_id, v.vendor_name
HAVING SUM(po.total_amount) > (
    SELECT AVG(total_amount)
    FROM purchase_orders
)
ORDER BY total_purchase_value DESC;

-- Section 8 — CTEs

with Client_revenue AS(
Select
c.client_id,
c.client_name,
sum(ci.total_amount) as Total_Revenue
from clients c inner join client_invoices ci
on c.client_id = ci.client_id 
group by c.client_id,c.client_name)
select
client_name,
total_revenue
from client_Revenue
order by Total_Revenue desc;

with Project_Financials As(
select
project_id,
        project_name,
        budget_amount,
        invoice_amount,
        invoice_amount - budget_amount as Profit
        from projects )
        select
        Project_name,
        Budget_amount,
        Invoice_amount,
        Profit
        from project_financials
        order by profit desc;
        
        WITH payment_summary AS (
    SELECT
        ci.invoice_id,
        ci.invoice_number,
        ci.total_amount,
        cp.amount_paid,
        ci.total_amount - cp.amount_paid AS outstanding_amount
    FROM client_invoices ci
    INNER JOIN client_payments cp
        ON ci.invoice_id = cp.invoice_id
)
SELECT
    invoice_number,
    total_amount,
    amount_paid,
    outstanding_amount
FROM payment_summary
WHERE outstanding_amount > 0
ORDER BY outstanding_amount DESC;

WITH vendor_spending AS (
    SELECT
        v.vendor_id,
        v.vendor_name,
        SUM(po.total_amount) AS total_spending
    FROM vendors v
    INNER JOIN purchase_orders po
        ON v.vendor_id = po.vendor_id
    GROUP BY v.vendor_id, v.vendor_name
)
SELECT
    vendor_name,
    total_spending
FROM vendor_spending
ORDER BY total_spending DESC;

WITH project_expenses AS (
    SELECT
        p.project_id,
        p.project_name,
        p.budget_amount,
        COALESCE(SUM(ee.amount), 0) AS employee_expenses
    FROM projects p
    LEFT JOIN employee_expenses ee
        ON p.project_id = ee.project_id
    GROUP BY
        p.project_id,
        p.project_name,
        p.budget_amount
)
SELECT
    project_name,
    budget_amount,
    employee_expenses,
    budget_amount - employee_expenses AS remaining_budget
FROM project_expenses
ORDER BY employee_expenses DESC;

-- Section 9 — Window Functions

select
Project_name,
budget_amount,
Rank() over(
order by budget_amount desc
) As Budget_Rank 
from projects;

SELECT
    c.client_name,
    SUM(ci.total_amount) AS total_invoice_value,
    RANK() OVER (
        ORDER BY SUM(ci.total_amount) DESC
    ) AS client_rank
FROM clients c
INNER JOIN client_invoices ci
    ON c.client_id = ci.client_id
GROUP BY
    c.client_id,
    c.client_name
ORDER BY client_rank;

SELECT
    v.vendor_name,
    SUM(po.total_amount) AS total_purchase_value,
    DENSE_RANK() OVER (
        ORDER BY SUM(po.total_amount) DESC
    ) AS vendor_rank
FROM vendors v
INNER JOIN purchase_orders po
    ON v.vendor_id = po.vendor_id
GROUP BY
    v.vendor_id,
    v.vendor_name
ORDER BY vendor_rank;

SELECT
    payment_date,
    amount_paid,
    SUM(amount_paid) OVER (
        ORDER BY payment_date
    ) AS running_total
FROM client_payments
WHERE payment_status = 'Paid'
ORDER BY payment_date;

SELECT
    project_name,
    budget_amount,
    LAG(budget_amount) OVER (
        ORDER BY project_id
    ) AS previous_project_budget,
    budget_amount -
        LAG(budget_amount) OVER (
            ORDER BY project_id
        ) AS budget_difference
FROM projects
ORDER BY project_id;

-- Section 10 — SQL Views

CREATE OR REPLACE VIEW vw_project_profitability AS
SELECT
    project_id,
    project_name,
    project_type,
    project_status,
    budget_amount,
    invoice_amount,
    invoice_amount - budget_amount AS profit
FROM projects;

SELECT *
FROM vw_project_profitability;

CREATE OR REPLACE VIEW vw_client_outstanding AS
SELECT
    c.client_name,
    ci.invoice_number,
    ci.invoice_date,
    ci.total_amount AS invoice_amount,
    cp.amount_paid,
    ci.total_amount - cp.amount_paid AS outstanding_amount,
    cp.payment_status
FROM clients c
INNER JOIN client_invoices ci
    ON c.client_id = ci.client_id
INNER JOIN client_payments cp
    ON ci.invoice_id = cp.invoice_id;
    
    SELECT *
FROM vw_client_outstanding
ORDER BY outstanding_amount DESC;

CREATE OR REPLACE VIEW vw_vendor_payment_summary AS
SELECT
    v.vendor_name,
    po.po_number,
    po.total_amount AS po_amount,
    vp.amount_paid,
    po.total_amount - vp.amount_paid AS outstanding_amount,
    vp.payment_status
FROM vendors v
INNER JOIN purchase_orders po
    ON v.vendor_id = po.vendor_id
INNER JOIN vendor_payments vp
    ON po.po_id = vp.po_id;
    
    SELECT *
FROM vw_vendor_payment_summary
ORDER BY outstanding_amount DESC;

CREATE OR REPLACE VIEW vw_project_expense_analysis AS
SELECT
    p.project_id,
    p.project_name,
    p.budget_amount,
    COALESCE(SUM(ee.amount), 0) AS employee_expenses,
    p.budget_amount -
        COALESCE(SUM(ee.amount), 0) AS remaining_budget
FROM projects p
LEFT JOIN employee_expenses ee
    ON p.project_id = ee.project_id
GROUP BY
    p.project_id,
    p.project_name,
    p.budget_amount;
    
    SELECT *
FROM vw_project_expense_analysis
ORDER BY employee_expenses DESC;

SELECT
    project_name,
    budget_amount,
    employee_expenses,
    remaining_budget,
    CASE
        WHEN remaining_budget < 0 THEN 'Over Budget'
        WHEN remaining_budget <= budget_amount * 0.20 THEN 'Low Budget Remaining'
        ELSE 'Healthy'
    END AS budget_status
FROM vw_project_expense_analysis
ORDER BY remaining_budget;

-- Phase 2 — Turn the SQL into a Portfolio Project.

SELECT
    'clients' AS table_name,
    COUNT(*) AS records
FROM clients

UNION ALL

SELECT 'vendors', COUNT(*) FROM vendors
UNION ALL
SELECT 'materials', COUNT(*) FROM materials
UNION ALL
SELECT 'employees', COUNT(*) FROM employees
UNION ALL
SELECT 'projects', COUNT(*) FROM projects
UNION ALL
SELECT 'purchase_orders', COUNT(*) FROM purchase_orders
UNION ALL
SELECT 'employee_expenses', COUNT(*) FROM employee_expenses
UNION ALL
SELECT 'client_invoices', COUNT(*) FROM client_invoices
UNION ALL
SELECT 'client_payments', COUNT(*) FROM client_payments
UNION ALL
SELECT 'vendor_payments', COUNT(*) FROM vendor_payments;

SELECT
    c.client_id,
    c.client_name,
    p.project_id,
    p.project_name
FROM clients c
INNER JOIN projects p
    ON c.client_id = p.client_id;
    
    SELECT
    p.project_id,
    p.project_name,
    po.po_number,
    po.total_amount
FROM projects p
INNER JOIN purchase_orders po
    ON p.project_id = po.project_id;
    
    SELECT
    po.po_number,
    v.vendor_name,
    m.material_name,
    po.quantity,
    po.total_amount
FROM purchase_orders po
INNER JOIN vendors v
    ON po.vendor_id = v.vendor_id
INNER JOIN materials m
    ON po.material_id = m.material_id;
    
    SELECT
    po.po_number,
    v.vendor_name,
    m.material_name,
    po.quantity,
    po.total_amount
FROM purchase_orders po
INNER JOIN vendors v
    ON po.vendor_id = v.vendor_id
INNER JOIN materials m
    ON po.material_id = m.material_id;
    
    SELECT
    p.project_name,
    e.employee_name,
    ee.expense_type,
    ee.amount
FROM employee_expenses ee
INNER JOIN projects p
    ON ee.project_id = p.project_id
INNER JOIN employees e
    ON ee.employee_id = e.employee_id;
    
    SELECT
    ci.invoice_number,
    c.client_name,
    ci.total_amount,
    cp.amount_paid,
    cp.payment_status
FROM client_invoices ci
INNER JOIN clients c
    ON ci.client_id = c.client_id
INNER JOIN client_payments cp
    ON ci.invoice_id = cp.invoice_id;
    
    SELECT
    po.po_number,
    v.vendor_name,
    po.total_amount,
    vp.amount_paid,
    vp.payment_status
FROM purchase_orders po
INNER JOIN vendors v
    ON po.vendor_id = v.vendor_id
INNER JOIN vendor_payments vp
    ON po.po_id = vp.po_id;
    
    -- 🟢 Q1 — Top Clients by Invoice Value
    SELECT
    c.client_name,
    SUM(ci.total_amount) AS total_invoice_value
FROM clients c
INNER JOIN client_invoices ci
    ON c.client_id = ci.client_id
GROUP BY
    c.client_id,
    c.client_name
ORDER BY total_invoice_value DESC;

-- 🟢 Q2 — How much money is outstanding from clients?

SELECT
    c.client_name,
    ci.invoice_number,
    ci.total_amount AS invoice_amount,
    cp.amount_paid,
    ci.total_amount - cp.amount_paid AS outstanding_amount
FROM clients c
INNER JOIN client_invoices ci
    ON c.client_id = ci.client_id
INNER JOIN client_payments cp
    ON ci.invoice_id = cp.invoice_id
WHERE ci.total_amount - cp.amount_paid > 0
ORDER BY outstanding_amount DESC;

SELECT
    SUM(ci.total_amount - cp.amount_paid) AS total_outstanding
FROM client_invoices ci
INNER JOIN client_payments cp
    ON ci.invoice_id = cp.invoice_id
WHERE ci.total_amount - cp.amount_paid > 0;

-- 🟢 Q3 — Which projects are financially performing the best?

SELECT
    project_name,
    budget_amount,
    invoice_amount,
    invoice_amount - budget_amount AS financial_variance,
    CASE
        WHEN invoice_amount > budget_amount THEN 'Above Budget'
        WHEN invoice_amount = budget_amount THEN 'On Budget'
        ELSE 'Below Budget'
    END AS financial_status
FROM projects
ORDER BY financial_variance DESC;

-- 🟢 Q4 — Which vendors have the highest purchase value?

SELECT
    v.vendor_name,
    SUM(po.total_amount) AS total_purchase_value
FROM vendors v
INNER JOIN purchase_orders po
    ON v.vendor_id = po.vendor_id
GROUP BY
    v.vendor_id,
    v.vendor_name
ORDER BY total_purchase_value DESC;

-- 🟢 Q5 — Which projects have the highest employee expenses?

SELECT
    p.project_name,
    SUM(ee.amount) AS total_employee_expenses
FROM projects p
INNER JOIN employee_expenses ee
    ON p.project_id = ee.project_id
GROUP BY
    p.project_id,
    p.project_name
ORDER BY total_employee_expenses DESC;

-- 🟢 Business Question 6 — Management KPI Summary

SELECT
    (SELECT COUNT(*) FROM clients) AS total_clients,

    (SELECT COUNT(*) FROM projects) AS total_projects,

    (SELECT SUM(total_amount)
     FROM client_invoices) AS total_invoice_value,

    (SELECT SUM(amount_paid)
     FROM client_payments
     WHERE payment_status = 'Paid') AS total_payments_received,

    (SELECT SUM(ci.total_amount - cp.amount_paid)
     FROM client_invoices ci
     INNER JOIN client_payments cp
         ON ci.invoice_id = cp.invoice_id
     WHERE ci.total_amount - cp.amount_paid > 0) AS total_outstanding_receivables,

    (SELECT SUM(total_amount)
     FROM purchase_orders) AS total_purchase_value,

    (SELECT SUM(amount)
     FROM employee_expenses) AS total_employee_expenses;
     
	-- 🟢 Business Question 7 — Project Performance Report
    
    SELECT
    p.project_id,
    p.project_name,
    c.client_name,
    p.project_status,
    p.budget_amount,
    p.invoice_amount,

    COALESCE(SUM(DISTINCT po.total_amount), 0) AS purchase_order_value,

    COALESCE(SUM(DISTINCT ee.amount), 0) AS employee_expenses,

    p.invoice_amount
        - COALESCE(SUM(DISTINCT po.total_amount), 0)
        - COALESCE(SUM(DISTINCT ee.amount), 0) AS estimated_margin

FROM projects p

INNER JOIN clients c
    ON p.client_id = c.client_id

LEFT JOIN purchase_orders po
    ON p.project_id = po.project_id

LEFT JOIN employee_expenses ee
    ON p.project_id = ee.project_id

GROUP BY
    p.project_id,
    p.project_name,
    c.client_name,
    p.project_status,
    p.budget_amount,
    p.invoice_amount

ORDER BY estimated_margin DESC;

-- Step 1 — Create a Power BI Project Performance View

CREATE OR REPLACE VIEW vw_powerbi_project_performance AS
SELECT
    p.project_id,
    c.client_name,
    p.project_name,
    p.project_type,
    p.project_status,
    p.start_date,
    p.expected_end_date,
    p.budget_amount,
    p.invoice_amount,

    COALESCE(po.purchase_order_value, 0) AS purchase_order_value,

    COALESCE(ee.employee_expenses, 0) AS employee_expenses,

    p.invoice_amount
        - COALESCE(po.purchase_order_value, 0)
        - COALESCE(ee.employee_expenses, 0) AS estimated_margin

FROM projects p

INNER JOIN clients c
    ON p.client_id = c.client_id

LEFT JOIN (
    SELECT
        project_id,
        SUM(total_amount) AS purchase_order_value
    FROM purchase_orders
    GROUP BY project_id
) po
    ON p.project_id = po.project_id

LEFT JOIN (
    SELECT
        project_id,
        SUM(amount) AS employee_expenses
    FROM employee_expenses
    GROUP BY project_id
) ee
    ON p.project_id = ee.project_id;
    
    -- Step 2 — Test the view
    SELECT *
FROM vw_powerbi_project_performance
ORDER BY project_id;

-- Step 3 — Check the number of rows

SELECT COUNT(*) AS total_projects
FROM vw_powerbi_project_performance;

-- Step 2 — Client Revenue & Outstanding Receivables

CREATE OR REPLACE VIEW vw_powerbi_client_receivables AS
SELECT
    c.client_id,
    c.client_name,
    c.industry,
    c.city,
    COUNT(ci.invoice_id) AS invoice_count,
    SUM(ci.total_amount) AS total_invoice_value,
    SUM(cp.amount_paid) AS total_amount_received,
    SUM(ci.total_amount - cp.amount_paid) AS outstanding_amount
FROM clients c
INNER JOIN client_invoices ci
    ON c.client_id = ci.client_id
INNER JOIN client_payments cp
    ON ci.invoice_id = cp.invoice_id
GROUP BY
    c.client_id,
    c.client_name,
    c.industry,
    c.city;
    
    SELECT *
FROM vw_powerbi_client_receivables
ORDER BY outstanding_amount DESC;

SELECT COUNT(*) AS total_clients
FROM vw_powerbi_client_receivables;

-- Step 3 — Vendor Payment & Procurement Analysis

CREATE OR REPLACE VIEW vw_powerbi_vendor_payables AS
SELECT
    v.vendor_id,
    v.vendor_name,
    v.material_type,
    v.city,
    COUNT(po.po_id) AS purchase_order_count,
    SUM(po.total_amount) AS total_purchase_value,
    SUM(vp.amount_paid) AS total_amount_paid,
    SUM(po.total_amount - vp.amount_paid) AS outstanding_payable
FROM vendors v
INNER JOIN purchase_orders po
    ON v.vendor_id = po.vendor_id
INNER JOIN vendor_payments vp
    ON po.po_id = vp.po_id
GROUP BY
    v.vendor_id,
    v.vendor_name,
    v.material_type,
    v.city;
    
    SELECT *
FROM vw_powerbi_vendor_payables
ORDER BY outstanding_payable DESC;

SELECT COUNT(*) AS total_vendors
FROM vw_powerbi_vendor_payables;

-- Step 4 — Final Data Quality Check

SELECT
    COUNT(*) AS total_projects,
    SUM(budget_amount) AS total_budget,
    SUM(invoice_amount) AS total_invoice_value,
    SUM(purchase_order_value) AS total_purchase_value,
    SUM(employee_expenses) AS total_employee_expenses,
    SUM(estimated_margin) AS total_estimated_margin
FROM vw_powerbi_project_performance;

SELECT
    COUNT(*) AS total_clients,
    SUM(total_invoice_value) AS total_invoiced,
    SUM(total_amount_received) AS total_received,
    SUM(outstanding_amount) AS total_outstanding
FROM vw_powerbi_client_receivables;

SELECT
    COUNT(*) AS total_vendors,
    SUM(total_purchase_value) AS total_purchases,
    SUM(total_amount_paid) AS total_paid,
    SUM(outstanding_payable) AS total_payable
FROM vw_powerbi_vendor_payables;

SELECT *
FROM vw_powerbi_project_performance
WHERE budget_amount IS NULL
   OR invoice_amount IS NULL
   OR purchase_order_value IS NULL
   OR employee_expenses IS NULL
   OR estimated_margin IS NULL;
   
   SELECT *
FROM vw_powerbi_client_receivables
WHERE total_invoice_value IS NULL
   OR total_amount_received IS NULL
   OR outstanding_amount IS NULL;
   
   SELECT *
FROM vw_powerbi_vendor_payables
WHERE total_purchase_value IS NULL
   OR total_amount_paid IS NULL
   OR outstanding_payable IS NULL;
   
   
