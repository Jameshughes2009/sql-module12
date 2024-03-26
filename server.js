const inquirer = require("inquirer")
const mysql = require("mysql2")
const cfonts = require("cfonts")

// now adding the mysql connection for the account 
const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "UofTcoding12!@",
    database: "employeeTracker_db2"
});

connection.connect((err) => {
    if (err) throw err;
    console.log("you are now connected!!");
    start(); //used to start the app
});
cfonts.say("James Hughes SQL Employee Tracker", {
    font: "block",
    align: 'left',
    colors: ['red'],
    backgroup: 'transparent'
});

// // This will be used to start the function 
// function start(){
//     inquirer
//         .prompt({
//             type: "list",
//             name: "action",
//         })
// }
// Function to Start Thomas SQL Employee Tracker Application
function start() {
    inquirer
        .prompt({
            type: "list",
            name: "action",
            message: "What would you like to do?",
            choices: [
                "View all departments",
                "View all roles",
                "View all employees",
                "Add a department",
                "Add a role",
                "Add an employee",
                "Add a Manager",
                "Update an employee role",
                "View Employees by Manager",
                "View Employees by Department",
                "Delete Departments | Roles | Employees",
                "View the total utilized budget of a department",
                "Exit",
            ],
        })
        .then((answer) => {
            switch (answer.action) {
                case "View all departments":
                    viewAllDepartments();
                    break;
                case "View all roles":
                    viewAllRoles();
                    break;
                case "View all employees":
                    viewAllEmployees();
                    break;
                case "Add a department":
                    addDepartment();
                    break;
                case "Add a role":
                    addRole();
                    break;
                case "Add an employee":
                    addEmployee();
                    break;
                case "Add a Manager":
                    addManager();
                    break;
                case "Update an employee role":
                    updateEmployeeRole();
                    break;
                case "View Employees by Manager":
                    viewEmployeesByManager();
                    break;
                case "View Employees by Department":
                    viewEmployeesByDepartment();
                    break;
                case "Delete Departments | Roles | Employees":
                    deleteDepartmentsRolesEmployees();
                    break;
                case "View the total utilized budget of a department":
                    viewTotalUtilizedBudgetOfDepartment();
                    break;
                case "Exit":
                    connection.end();
                    console.log("Goodbye!");
                    break;
            }
        });
}
// Used to view all departments
function viewAllDepartments() {
    const query = "SELECT * FROM departments";
    connection.query(query, (err, res) => {
        if (err) throw err;
        console.table(res);
        start();
    });
}
// Used to view roles 
function viewAllRoles() {
    const query = "SELECT roles.title, roles.id, departments.department_name, roles.salary from roles join departments on roles.department_id = departments.id";// a left join is a better function to not create dubilcates - with data 
    connection.query(query, (err, res) => {
        if (err) throw err;
        console.table(res);
        start();
    });
}