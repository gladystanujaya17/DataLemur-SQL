--Well Paid Employees

SELECT emp.employee_id AS employee_id, emp.name AS employee_name
FROM employee AS mgr 
INNER JOIN employee emp ON mgr.employee_id = emp.manager_id
WHERE emp.salary > mgr.salary

-- Tabel Employee dan Manager ini dipecah dulu, lalu digabung pakai JOIN
-- JOIN tabel employee dengan manager_id karena setiap employee yang bukan
-- manager pasti punya manager_id