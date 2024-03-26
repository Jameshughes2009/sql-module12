INSERT INTO departments (department_name)
VALUES
('C-Suite'),
('HR'),
('IT'),
('Customer Service'),
('QA'),
('QC');


INSERT INTO roles (title, salary, department_id)
VALUES 
('Chief Executive Officer', 555000.00, 1),
('Marketing Manager', 125000.00, 2),
('HR Director', 189000.00, 3),
('Finance Head', 145000.00, 4),
('Senior Engineer', 185000.00, 5),
('IT Manager', 125000.00, 6);


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

INSERT INTO roles (title, salary, department_id)
VALUES 
('Chief Executive Officer', 555000.00, 1),
('Marketing Manager', 125000.00, 2),
('HR Director', 189000.00, 3),
('Finance Head', 145000.00, 4),
('Senior Engineer', 185000.00, 5),
('IT Manager', 125000.00, 6);
