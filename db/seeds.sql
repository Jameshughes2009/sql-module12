INSERT INTO departments (department_name)
VALUES
('C-Suite'),
('MR'),
('HR'),
('Customer Service'),
('QA'),
('IT'),
('C-Suite'),
('Scientific Affairs');



INSERT INTO roles (title, salary, department_id)
VALUES 
('Chief Executive Officer', 555000.00, 1),
('Marketing Manager', 125000.00, 2),
('HR Director', 45000.00, 3),
('Finance Head', 145000.00, 4),
('COO', 400000.00, 5),
('Chad', 96.00, 6),
('IT Manager', 300000.00, 7),
('VP of scientific affairs', 300000.00, 8);



INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
('James', 'Hughes', 1, 1),
('Jimmy', 'G', 2, 2),
('Iron', 'Man', 3, 3),
('James', 'Blunt', 4, 4),
('Thomas', 'Hobbes', 5, 5),
('Charles', 'Darwin', 6, 6),
('Ken', 'Chad(Dad)', 7,7),
('Mark', 'Luscher(Brad)', 8,8);

-- Completed --