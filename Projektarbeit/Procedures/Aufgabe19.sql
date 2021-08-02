--Aufgabe 19--
--19.Mailingaktion an alle Kunden zu Werbezwecken 
--(hier soll eine Liste mit Adressen erzeugt werden, die als Basis für einen Serienbrief dienen soll –
--Lösung kann eine einfache View sein, die die gewünschten Daten liefert)

create view Mailingaktion (Firmaname, Firmaadresse,Firamemail)
as
select Fname, Fstrasse+' '+convert(varchar, Fplz)+' '+Fort, Fmailadresse from kunden;
select*from Mailingaktion;
