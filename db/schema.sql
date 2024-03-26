DROP DATABASE IF EXISTS employeeTracker_db2;
CREATE DATABASE employeeTracker_db2;
USE employeeTracker_db2;

-- Now Create Tables to display info --
-- CREATE TABLE depart
CREATE TABLE departments (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR(70) NOT NULL
);

CREATE TABLE roles (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255),
salary DECIMAL(10,2),
department_id INT,
FOREIGN KEY (department_id)
REFERENCES departments(id)
ON DELETE SET NULL
);

CREATE TABLE employee (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(70) NOT NULL,
last_name VARCHAR(70) NOT NULL,
role_id INT,
manager_id INT NOT NULL
);

-- Completed--