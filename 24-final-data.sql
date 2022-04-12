INSERT INTO company_buildings (name)
VALUES('tekur'),
('yerasala'),
('seetha')
;
INSERT INTO teams(name,building_id)
VALUES
('admin',1),
('data analyse',3),
('red',2)
;
INSERT INTO employees( first_name,last_name,birthdata,email,team_id)
VALUES
('kumar','gogula','07/06/2003','a@1003',3),
('mar','cogula','04/06/2004','s@738',1),
('sukumar','gola','07/02/2013','f@836e',2)
;
INSERT INTO intranet_accounts(email,password)
VALUES
('a@1003','hfhf'),
('s@738','rhrh'),
('f@836e','efiuwi')
;
INSERT INTO projects(title,deadline)
VALUES('mastering sql','2024-10-01'),
('kumar','2022-09-9'),
('kavi','2021-10-2')
;
INSERT INTO projects_employee(employee_id,project_id)
VALUES
(1,2),
(2,2),
(1,2),
(3,1),
(3,3),
(2,3);


