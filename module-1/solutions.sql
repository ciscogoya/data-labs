-- Challenge 1 --

select a.au_id, a.au_lname, a.au_fname, p.pub_name, t.title
from authors a

inner join titleauthor ta
on ta.au_id = a.au_id

inner join titles t
on ta.title_id = t.title_id

inner join publishers p
on t.pub_id = p.pub_id

order by a.au_id asc;

-- Challenge 2 --

select a.au_id, a.au_lname, a.au_fname, count(t.title) as 'title count', p.pub_name
from authors a

inner join titleauthor ta
on ta.au_id = a.au_id

inner join titles t
on ta.title_id = t.title_id

inner join publishers p
on t.pub_id = p.pub_id

group by a.au_id, p.pub_name

order by a.au_id asc;

-- Challenge 3 --

select a.au_id, a.au_lname, a.au_fname, sum(s.qty) as 'copies sold'
from authors a

inner join titleauthor ta
on ta.au_id = a.au_id

inner join sales s
on ta.title_id = s.title_id

group by a.au_id

order by sum(s.qty) desc

limit 3;

-- Challenge 4 --

select a.au_id, a.au_lname, a.au_fname, sum(s.qty) as 'copies sold'
from authors a

inner join titleauthor ta
on ta.au_id = a.au_id

inner join sales s
on ta.title_id = s.title_id

group by a.au_id

order by sum(s.qty) desc;