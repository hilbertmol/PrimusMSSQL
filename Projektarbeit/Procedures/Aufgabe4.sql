create procedure NeuerDozent
(@dvorname varchar(30), @dname varchar(30),@dstrasse varchar(50),@dplz int, @dort varchar(30),@dmailadresse varchar(60))
as
declare @dozentennr int
begin
	begin transaction
		insert into dozenten (dvorname,dname, dstrasse, dplz, dort, dmailadresse)
		values (@dvorname, @dname, @dstrasse, @dplz, @dort, @dmailadresse);
		set @dozentennr=@@identity
		commit;
end;
select * from dozenten;
execute NeuerDozent 'Karl', 'Marx', 'bonnerstr 4', 56490, 'Aachen','karlmarx@primus.com'

alter procedure changedoz
(@dozentennr int,@dvorname varchar(30), @dname varchar(30),@dstrasse varchar(50),@dplz int, @dort varchar(30),@dmailadresse varchar(60))
as
begin
	begin transaction
		update dozenten set dvorname=@dvorname,dname= @dname,dstrasse= @dstrasse,dplz= @dplz, dort=@dort, dmailadresse=@dmailadresse where dozentennr=@dozentennr;
			commit;
end;
execute changedoz 55,'Siegfried','Nebelunge', 'Reihnlandstr 2', 45360,'Koeln', 'niebelungen@primus.com'

select * from dozenten;

alter procedure deletedoz
(@dozentennr int)
as
begin
	begin transaction
	delete from dozenten where dozentennr=@dozentennr;
	commit;
end;
execute deletedoz 58;