begin transaction

	insert into dozentenqual values (1,1);
	insert into dozentenqual values (1,2);
	insert into dozentenqual values (2,1);
	insert into dozentenqual values (2,2);
	insert into dozentenqual values (3,1);
	insert into dozentenqual values (3,2);
	insert into dozentenqual values (4,3);
	insert into dozentenqual values (4,4);
	insert into dozentenqual values (5,3);
	insert into dozentenqual values (5,4);
	insert into dozentenqual values (6,3);
	insert into dozentenqual values (6,4);
	insert into dozentenqual values (7,5);
	insert into dozentenqual values (7,6);
	insert into dozentenqual values (8,5);
	insert into dozentenqual values (8,6);
	insert into dozentenqual values (9,5);
	insert into dozentenqual values (9,6);
	insert into dozentenqual values (10,7);
	insert into dozentenqual values (10,8);
	insert into dozentenqual values (11,7);
	insert into dozentenqual values (11,8);
	insert into dozentenqual values (12,7);
	insert into dozentenqual values (12,8);
	insert into dozentenqual values (13,9);
	insert into dozentenqual values (13,10);
	insert into dozentenqual values (14,9);
	insert into dozentenqual values (14,10);
	insert into dozentenqual values (15,9);
	insert into dozentenqual values (15,10);
	insert into dozentenqual values (16,11);
	insert into dozentenqual values (16,12);
	insert into dozentenqual values (17,11);
	insert into dozentenqual values (17,12);
	insert into dozentenqual values (18,11);
	insert into dozentenqual values (18,12);
	insert into dozentenqual values (19,5);
	insert into dozentenqual values (19,8);
	insert into dozentenqual values (20,2);
	insert into dozentenqual values (20,4);
	insert into dozentenqual values (21,9);
	insert into dozentenqual values (21,11);
	insert into dozentenqual values (22,1);
	insert into dozentenqual values (22,5);
	insert into dozentenqual values (23,6);
	insert into dozentenqual values (23,8);
	insert into dozentenqual values (24,2);
	insert into dozentenqual values (24,4);
	insert into dozentenqual values (25,9);
	insert into dozentenqual values (25,10);
	insert into dozentenqual values (26,11);
	insert into dozentenqual values (26,12);
	insert into dozentenqual values (27,6);
	insert into dozentenqual values (27,8);

	commit

	select * from dozentenqual