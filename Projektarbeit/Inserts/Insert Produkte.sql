use primus
go

begin transaction
	-- Gruppe 1 (Anwenderprogramme)
	insert into produkte values ('Anwenderprogr.', 'Office', 380, 3);
	insert into produkte values ('Anwenderprogr.', 'CAD', 380, 5);
	insert into produkte values ('Anwenderprogr.', 'Adobe Grafikdesign', 380, 5);
	insert into produkte values ('Anwenderprogr.', 'SAP', 380, 5);
	-- Gruppe 2 (Backend Produkte)
	insert into produkte values ('Backend', 'Relationale Datenbanken', 500, 10);
	insert into produkte values ('Backend', 'Oracle Datenbanken',500 , 10);
	insert into produkte values ('Backend', 'Softwareentwicklung Java', 500, 12);
	insert into produkte values ('Backend', 'IT-Security Administration', 500, 15);
	-- Gruppe 3 (Zertifizierte Produkte)
	insert into produkte values ('Zert. Produkte', 'Microsoft Cert. Pro', 500, 20);
	insert into produkte values ('Zert. Produkte', 'Oracle Cert. Pro', 500, 20);
	insert into produkte values ('Zert. Produkte', 'Cisco Cert. Pro', 500, 20);
	insert into produkte values ('Zert. Produkte', 'Novell Cert. Pro', 500, 20);
commit;

select * from produkte;

