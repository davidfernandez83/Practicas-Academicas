select Usuarios.nombre, Pc.nombre
from Pc
inner join
(Usuarios inner join Usupc
on Usuarios.id = Usupc.idUsuario)
on Pc.id = Usupc.idPc