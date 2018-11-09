==========================================================
Echo Project, Software Engineering for Web Applications

	Authors: 
			Román Rey Pedrero: 	183694
			Gary Ulloa Rodríguez:	183672
==========================================================
Folder contents:
	
	Lab3.war: 		Code of the project,
			(models, controllers, Utils, WebContent)
				To import in Eclipse

	servlet-api.jar		framwework for Java Servlets
				To import in build Path of eclipse project
			
	echo_filled.sql:	Database model and data fot demo
				To import in mysql 'tweet' DB

	Report.pdf		Report explaining the development

	README.txt		this

==========================================================
Install instructions:
	==================================================
	DATABASE install:

		1. Execute mysqld.exe
		2. Log in mysql as root

	“C:\Program Files\MySQL\MySQL Server 5.6\bin\mysql.exe” -u root -p

		3. Create user

	mysql>
		CREATE USER 'mysql'@'localhost' IDENTIFIED BY 'mysql';
		GRANT ALL PRIVILEGES ON * . * TO 'mysql'@'localhost';
		\quit
		
		4. Enter with created user

	 “C:\Program Files\MySQL\MySQL Server 5.6\bin\mysql.exe” - u mysql -p

		5. Create database and fix timezone bug
		
	mysql >
		CREATE DATABASE tweet;
		SET GLOBAL time_zone = '-1:00';
		\quit

		5. Import echo_filled.sql

	“C:\C:\Users\<User>"C:\Program Files\MySQL\MySQL Server 5.6\bin\mysql.exe" -u mysql -p tweet< C:\Users\<User>\Desktop\echo_filled.sql 

	==================================================
	Eclipse project set up:
		
		1. Open eclipse

		2. File -> Import -> War file -> select Lab3.war

		3. Right click in project -> Build Path ->  Condifure Build Path -> Libraries ->Add External JARs -> select servlet-api.jar

		4. Click Run -> Run on server -> select Tomcat 8.0 -> Next -> Select Apache Installation Folder -> Fitxers de Programax86 -> Apache

		5. When server up, open any modern browser (Chrome or Firefox), 

		6. Url go to localhost:8080/Lab3

THE END
