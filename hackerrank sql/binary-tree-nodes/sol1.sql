select N, 
case when P is NULL then 'Root' 
when N in (select P from BST) then 'Inner' 
else 'Leaf' 
end as Node 
from BST 
order by N

-- 关键注意1.条件的顺序2.在P列中的要么是Inner要么是Root（when N in (select P from BST) then 'Inner' ）