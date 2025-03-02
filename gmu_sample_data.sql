USE it493_project_database;

/*SAMPLE DATA BELOW */
INSERT IGNORE INTO Teams (team_name) VALUES
('Team 1'),
('TEAM 2'),
('TEAM 3'),
('TEAM 4'),
('TEAM 5'),
('Team 6'), 
('Team 7'), 
('Team 8'), 
('Team 9'), 
('Team 10');


INSERT IGNORE INTO Professors (prof_gnum, first_name, last_name, email) VALUES
('G12345678', 'Dr. Ron', 'Therrien', 'jdoe@gmu.edu'),
('G87654321', 'Dr. Alice', 'Smith', 'asmith@gmu.edu'),
('G23456789', 'Dr. John', 'Doe', 'jdoe2@gmu.edu'), 
('G34567890', 'Dr. Emily', 'Davis', 'edavis@gmu.edu'), 
('G45678901', 'Dr. Mark', 'Anderson', 'manderson@gmu.edu'), 
('G56789012', 'Dr. Rachel', 'Johnson', 'rjohnson@gmu.edu');

INSERT IGNORE INTO TA (ta_gnum, first_name, last_name, email) VALUES
('G12345678', 'Venkata', 'Sai', 'venkata@gmu.edu'),
('G87654321', 'Sarah', 'Lee', 'slee@gmu.edu'),
('G23456789', 'Matthew', 'Williams', 'mwilliams@gmu.edu'), 
('G34567890', 'Sophia', 'Brown', 'sbrown@gmu.edu'), 
('G45678901', 'James', 'Martinez', 'jmartinez@gmu.edu'), 
('G56789012', 'Olivia', 'Garcia', 'ogarcia@gmu.edu');

INSERT IGNORE INTO Classes (class_id, class_name, term, ta_gnum, prof_gnum) VALUES
('IT-492-004', 'Senior Design 1', 'Fall 2024', 'G12345678', 'G12345678'),
('IT-493-DL1', 'Senior Design 2', 'Spring 2023', 'G87654321', 'G87654321'),
('IT-493-004', 'Senior Design 2', 'Spring 2025', 'G87654321', 'G87654321'),
('IT-493-001', 'Senior Design 2', 'Fall 2024', 'G23456789', 'G23456789'), 
('IT-493-002', 'Senior Design 2', 'Spring 2025', 'G34567890', 'G34567890'), 
('IT-493-003', 'Senior Design 2', 'Fall 2024', 'G45678901', 'G45678901'), 
('IT-493-005', 'Senior Design 2', 'Spring 2025', 'G56789012', 'G56789012');

INSERT IGNORE INTO Students (gnum, first_name, last_name, email, team_id, class_id) VALUES
('G01329619', 'Kevin', 'Aguilar', 'kaguila8@gmu.edu', 3, 'IT-493-004'),
('G01325489', 'Elias', 'Alouane', 'EA@gmu.edu', 3, 'IT-493-004'),
('G01329632', 'Tony', 'Jung', 'TJ@gmu.edu', 3, 'IT-493-004'),
('G01329875', 'Fernando', 'Siaw-Sappore', 'FSS@gmu.edu', 3, 'IT-493-004'),
('G01329652', 'Etsub', 'Yaregal', 'EY@gmu.edu', 3, 'IT-493-004'),
('G01327412', 'Heaven', 'Mamou', 'HM@gmu.edu', 3, 'IT-493-004'),
('G01311111', 'Ryan', 'White', 'rwhite@gmu.edu', 4, 'IT-493-001'), 
('G01322222', 'Emma', 'Taylor', 'etaylor@gmu.edu', 4, 'IT-493-001'), 
('G01333333', 'Lucas', 'Moore', 'lmoore@gmu.edu', 5, 'IT-493-002'), 
('G01344444', 'Sophia', 'Harris', 'sharris@gmu.edu', 5, 'IT-493-002'), 
('G01355555', 'Ethan', 'Clark', 'eclark@gmu.edu', 6, 'IT-493-003'), 
('G01366666', 'Ava', 'Rodriguez', 'arodriguez@gmu.edu', 6, 'IT-493-003');

INSERT IGNORE INTO Tasks (task_name) VALUES
('Team Meetings'),
('Sponsor Meetings'),
('Finalizing Solution'),
('Product Development Plan'),
('Go Live Demo'),
('Lessons Learned'),
('Dress Rehearsal'),
('Presentation Prep'),
('Team Management'),
('Product Development');

INSERT IGNORE INTO stud_work_hours (gnum, team_id, task_id, date_worked, start_time, end_time, task_description, approval_status) VALUES
('G01329619', 3, 1, '2025-02-12', '14:00:00', '16:30:00', 'Discussed project scope and assigned tasks.', 'Pending'),
('G01329619', 1, 1, '2025-02-12', '14:00:00', '16:30:00', 'Discussed project scope and assigned tasks with team.', 'Pending'),
('G01325489', 3, 2, '2025-02-12', '10:00:00', '12:00:00', 'Sponsor meeting about deliverables and expectations.', 'Pending'),
('G01329632', 3, 3, '2025-02-13', '09:30:00', '12:30:00', 'Worked on finalizing project solution.', 'Pending'),
('G01311111', 4, 4, '2025-03-10', '13:00:00', '15:00:00', 'Worked on project documentation.', 'Pending'), 
('G01322222', 4, 5, '2025-03-11', '09:00:00', '11:30:00', 'Prepared for go-live demo.', 'Approved'), 
('G01333333', 5, 6, '2025-03-12', '12:00:00', '14:30:00', 'Reviewed Lessons Learned.', 'Pending'), 
('G01344444', 5, 7, '2025-03-13', '10:30:00', '13:00:00', 'Conducted dress rehearsal.', 'Approved'), 
('G01355555', 6, 8, '2025-03-14', '14:00:00', '16:30:00', 'Finalized presentation slides.', 'Pending'), 
('G01366666', 6, 9, '2025-03-15', '11:00:00', '13:30:00', 'Managed team coordination.', 'Approved');

INSERT IGNORE INTO ta_work_hours (ta_gnum, date_worked, start_time, end_time, task_description, approval_status) VALUES
('G12345678', '2025-02-12', '10:00:00', '12:00:00', 'Assisted students with debugging and troubleshooting.', 'Pending'),
('G87654321', '2025-02-13', '09:00:00', '11:30:00', 'Helped students prepare for their final presentation.', 'Pending'),
('G23456789', '2025-02-20', '10:00:00', '12:00:00', 'Assisted students with debugging issues.', 'Pending'), 
('G34567890', '2025-02-21', '09:30:00', '11:30:00', 'Conducted review sessions.', 'Approved'), 
('G45678901', '2025-02-22', '11:00:00', '13:00:00', 'Graded student assignments.', 'Pending'), 
('G56789012', '2025-02-23', '12:30:00', '14:30:00', 'Helped prepare class materials.', 'Approved');


