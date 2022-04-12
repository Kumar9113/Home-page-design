CREATE TABLE projects(
    id SERIAL PRIMARY KEY,
    title VARCHAR (300)NOT NULL,
    deadline DATE 
);
CREATE TABLE  company_buildings
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(200)
   
);
CREATE TABLE teams(
     id SERIAL PRIMARY KEY,
     name VARCHAR(300) NOT NULL,
     building_id  INT DEFAULT 1 REFERENCES company_buildings ON DELETE SET DEFAULT 
);

CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    birthdata DATE NOT NULL,
   -- email VARCHAR(300) REFERENCES intranet_accounts ON DELETE 
   email VARCHAR(200) UNIQUE NOT NULL,
   team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
);
CREATE TABLE intranet_accounts
(
    id SERIAL PRIMARY KEY,
    email VARCHAR(300) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(200)
   
);

CREATE TABLE projects_employee(
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees ON DELETE CASCADE,
    project_id INT REFERENCES projects ON DELETE CASCADE
);


