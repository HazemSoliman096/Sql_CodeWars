CREATE VIEW members_approved_for_voucher
as
SELECT  m.id, m.name as name, m.email as email, sum(p.price) as total_spending
FROM sales s
inner join members m
on m.id = s.member_id 
inner join products p
on p.id = s.product_id
inner join departments dep
on dep.id = s.department_id
where s.department_id in 
(
SELECT d.id
FROM sales s
inner join departments d
on d.id = s.department_id 
inner join products p
on p.id = s.product_id
group by d.id
having sum(p.price) > 10000
order by d.id asc
)
group by m.id,m.name,m.email
having sum(p.price) > 1000
order by m.id asc;

select * from members_approved_for_voucher;
