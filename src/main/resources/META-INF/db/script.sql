CREATE TABLE project.login(
    userid character varying(25) NOT NULL,
    username character varying(50),
    password character varying(50),
    lastlogin timestamp(6) without time zone,
    CONSTRAINT login_pkey PRIMARY KEY (userid)
);

insert into  project.login values (101,'rahman',123,'2019-01-26');
insert into  project.login values (102,'shyam',123,'2019-01-26');
insert into  project.login values (103,'kiran',123,'2019-01-26');
insert into  project.login values (104,'swathi',123,'2019-01-26');
insert into  project.login values (105,'vijaya',123,'2019-01-26');

CREATE TABLE project.Address (
  addressid Varchar(25) NOT NULL PRIMARY KEY, 
  userid Varchar(25) REFERENCES project.login(userid),
  address varchar(200),
  city Varchar(25),
  state Varchar(25),
  zip integer
);

CREATE TABLE project.generalinfo (
  infoid Varchar(25) NOT NULL PRIMARY KEY, 
  userid Varchar(25) REFERENCES project.login(userid),
  firstname varchar(50),
  lastname Varchar(50),
  gender Varchar(1),
  dob DATE
);

CREATE TABLE project.contactinfo (
  contactid Varchar(20) NOT NULL PRIMARY KEY , 
  userid Varchar(25) REFERENCES project.login(userid),
  homephone integer,
  officeno integer,
  cellno integer,
  email Varchar(50)
);