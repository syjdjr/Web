CREATE TABLE IF NOT EXISTS ww_members (
	id VARCHAR(20) NOT NULL,
	passwd VARCHAR(20),
	name VARCHAR(20),
	PRIMARY KEY (id)
);

ALTER TABLE member
ADD COLUMN phone VARCHAR(20),
ADD COLUMN email VARCHAR(20);


select * from member;

drop table member;
