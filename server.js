// const inquirer = require("inquirer")
const mysql = require("mysql2")
const cfonts = require("cfonts")

// now adding the mysql connection for the account 
const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "UofTcoding12!@",
    database: "employeeTracker_db"
});

connection.connect((err) => {
    if (err) throw err;
    console.log("you are now connected!!");
    start(); //used to start the app
});
