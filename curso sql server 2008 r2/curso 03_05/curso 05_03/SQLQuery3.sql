select COUNT(*) from productos
where marca='ser'

select COUNT(*) from productos
where marca='nucete'

use CursoSql
select marca, COUNT(*) as cant
from productos
where marca is not null
group by Marca
order by 2 desc, 1 asc