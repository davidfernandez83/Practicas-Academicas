create trigger DIS_INSC_insert_delete
on inscriptos for insert,delete
as
if exists(select * from inserted join morosos on morosos.documento=inserted.documento)
	begin
	raiserror('El socio es moroso...',16,1)
	rollback transaction
	end
else
	if exists(select * from deleted join morosos on morosos.documento=deleted.documento)
		begin
		raiserror('El socio debe matricula, no puede borrarse...',16,1)
		rollback transaction
		end
	else
		if(select matricula from inserted)='n'
			begin
			insert into morosos select documento from inserted;
			end
			
			
			
			
insert into inscriptos values('11444444','Basketball','s');
insert into inscriptos values('11444444','Tenis','n');
insert into inscriptos values('11444444','Natacion','s');

delete from inscriptos
where numero=6