	create database users;

	use users;

	CREATE TABLE users (
		id INT PRIMARY KEY IDENTITY(1,1),
		username NVARCHAR(50),
		password_hash NVARCHAR(100),
		role NVARCHAR(20),
		failed_attempts INT DEFAULT 0,
		last_attempt DATETIME DEFAULT GETDATE(),
		is_locked BIT DEFAULT 0
	);
	INSERT INTO users (username, password_hash, role)
VALUES ('Abse', '123', 'admin');

