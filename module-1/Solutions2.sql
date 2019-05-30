-- Challenge 1 --

-- Step 1 --

create temporary table publications.ch1
select ta.title_id, ta.au_id, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as sales_royalty
from titleauthor ta

inner join sales s
on ta.title_id = s.title_id

inner join titles t
on ta.title_id = t.title_id

order by ta.title_id asc;

select *
from publications.ch1;

-- Challenge 1 --

-- Step 2 --

create temporary table publications.ch2

select ch1.title_id, ch1.au_id, sum(ch1.sales_royalty)
from publications.ch1 as ch1

group by ch1.title_id

order by ch1.title_id asc;

select *
from publications.ch2;