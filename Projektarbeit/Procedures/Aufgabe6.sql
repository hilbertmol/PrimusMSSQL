-- Aufgabe 6
create procedure eingabeQual
(@dozentennr int, @produktid int)
as
declare @did int
begin
	begin transaction
	insert into dozentenqual (dozentennr, produktid) values (@dozentennr, @produktid);
	set @did=@@identity;
	commit;
end;

select * from dozentenqual;

execute eingabequal 27,7

create procedure changequal
(@did int, @dozentennr int, @produktid int)
as
begin
begin transaction
update dozentenqual set dozentennr=@dozentennr, produktid=@produktid where did=@did;
commit;
end;
select * from dozentenqual;
execute changequal 58, 27,6