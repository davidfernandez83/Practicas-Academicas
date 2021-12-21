select Menu.nombre, Submenu.nombre
from Submenu
inner join 
(Menu inner join Menusub on Menu.id = Menusub.idm)
on Submenu.id = Menusub.ids