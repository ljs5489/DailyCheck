 
use jslee

update sp.comment
set notify = 'Y'
where id = ?
  
update sp.comment
set notify = 'N'
where id = 29