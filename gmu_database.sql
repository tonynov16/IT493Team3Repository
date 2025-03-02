DROP DATABASE IF EXISTS it493_project_database;
CREATE DATABASE it493_project_database;
use IT493_Project_Database;

/* Professors Table */
CREATE TABLE IF NOT EXISTS Professors (
prof_gnum VARCHAR(9) PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL
);

/*TA Table*/
CREATE TABLE IF NOT EXISTS TA (
ta_gnum VARCHAR(9) PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL
);

/*Classes Table*/
CREATE TABLE IF NOT EXISTS Classes (
class_id VARCHAR(10) PRIMARY KEY,
class_name VARCHAR(100) NOT NULL,
term VARCHAR(20) NOT NULL,
ta_gnum VARCHAR(9) NOT NULL,
prof_gnum VARCHAR(9) NOT NULL,
FOREIGN KEY (ta_gnum) REFERENCES TA(ta_gnum),
FOREIGN KEY (prof_gnum) REFERENCES Professors(prof_gnum)
);

/*Team Table */
CREATE TABLE IF NOT EXISTS Teams (
team_id INT AUTO_INCREMENT PRIMARY KEY,
team_name VARCHAR(50) NOT NULL
);

/*Student Table */
CREATE TABLE IF NOT EXISTS Students (
gnum VARCHAR(9) PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
team_id INT NOT NULL,
class_id VARCHAR(10) NOT NULL,
FOREIGN KEY (team_id) REFERENCES teams(team_id),
FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

/* Task Table */
CREATE TABLE IF NOT EXISTS Tasks (
task_id INT AUTO_INCREMENT PRIMARY KEY,
task_name VARCHAR(100) NOT NULL
);

/* Student Worked Hours Table */
CREATE TABLE IF NOT EXISTS stud_work_hours (
entry_id INT AUTO_INCREMENT PRIMARY KEY,
gnum VARCHAR(9) NOT NULL,
team_id INT NOT NULL,
task_id INT NOT NULL, 
date_worked DATE NOT NULL,
start_time TIME NOT NULL,
end_time TIME NOT NULL,
hours_worked DECIMAL(5,2) GENERATED ALWAYS AS (TIMESTAMPDIFF(MINUTE, start_time, end_time) / 60.0) STORED,
task_description TEXT NOT NULL,
approval_status ENUM('Pending', 'Approved', 'Declined') DEFAULT 'Pending',
FOREIGN KEY (gnum) REFERENCES students(gnum),
FOREIGN KEY (team_id) REFERENCES teams(team_id),
FOREIGN KEY (task_id) REFERENCES tasks(task_id) ON DELETE CASCADE
);

/* Student Worked Hours Table */
CREATE TABLE IF NOT EXISTS ta_work_hours (
entry_id INT AUTO_INCREMENT PRIMARY KEY,
ta_gnum VARCHAR(9) NOT NULL,
date_worked DATE NOT NULL,
start_time TIME NOT NULL,
end_time TIME NOT NULL,
hours_worked DECIMAL(5,2) GENERATED ALWAYS AS (TIMESTAMPDIFF(MINUTE, start_time, end_time) / 60.0) STORED,
task_description TEXT NOT NULL,
approval_status ENUM('Pending', 'Approved', 'Declined') DEFAULT 'Pending',
FOREIGN KEY (ta_gnum) REFERENCES TA(ta_gnum) ON DELETE CASCADE
);