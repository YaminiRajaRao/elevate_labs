create database ecommerce;
use ecommerce;
-- ----------------------------------------select,groupby,orderby,where----------------
select 
customer_city,
customer_state,
count(*) as city_count from customers
group by  customer_city,customer_state
order by count(*) desc;
-- -------------------------
select 
order_purchase_timestamp,
count(*)
from orders
group by order_purchase_timestamp;

-- --------------------------
select 
date(order_purchase_timestamp),
count(*)
from orders
group by date(order_purchase_timestamp);
-- ----------------------------
select 
date(order_purchase_timestamp),
count(*)
from orders
group by date(order_purchase_timestamp)
order by date(order_purchase_timestamp)asc;
-- -------------------------------
select 
date(order_purchase_timestamp),
count(*)
from orders
group by date(order_purchase_timestamp) 
order by count(*)desc;
-- -----------------------------------
select 
date(order_purchase_timestamp),
count(*)
from orders
group by date(order_purchase_timestamp)
order by date(order_purchase_timestamp)desc;
-- ---------------------
select customer_id,customer_unique_id,customer_state
from customers where customer_state='sp';
-- ------------------------
select order_id,customer_id,order_status
from orders
where order_status='delivered';
-- --------------------
select
product_category_name,
count(*)as product_count
from
products
where
product_category_name in('electronics','furniture','toys')
group by product_category_name
order by product_count desc;
-- -----------------------------------------inner join----------------------------------
select
p.product_id,
p.product_category_name,
oi.order_id,
oi.order_item_id
from products as p
inner join orderitems as oi on p.product_id=oi.product_id;
-- ----------------------------------------
select
p.product_category_name,
count(*)
from products as p
inner join orderitems as oi on p.product_id=oi.product_id
group by p.product_category_name;
-- ----------------------------------------
select
pc.product_category_name_english,
count(*) as count_orders
from products as p
inner join orderitems as oi on p.product_id=oi.product_id
inner join productcategory as pc on p.product_category_name=pc.product_category_name_english
group by pc.product_category_name_english
order by count(*) desc;
-- -----------------------------------
select
order_id,order_status,order_delivered_customer_date,order_estimated_delivery_date
from orders;
-- -----------------------------------
select
order_id,order_status,order_delivered_customer_date,order_estimated_delivery_date
from orders
where order_status='delivered';
-- ---------------------------
select
order_id,
order_status,
order_delivered_customer_date,
order_estimated_delivery_date-order_delivered_customer_date as date_diff
from orders
where order_status='delivered';
-- -------------------------------------------left join---------------------------------
select c.customer_id,o.order_id,oi.product_id,p.product_category_name
from customers c
left join orders o on c.customer_id=o.customer_id
left join orderitems oi on o.order_id=oi.order_id
left join products p on oi.product_id=p.product_id;
-- -------------------------------
select o.order_id,
oi.product_id,oi.seller_id
from orders o 
left join
orderitems oi on o.order_id=oi.order_id;
-- ----------------------------------------------right join--------------------------------------
select
c.customer_id,c.customer_unique_id,o.order_id,o.order_status
from customers c right join orders o on c.customer_id=o.customer_id;
-- ---------------
select
p.product_id,
p.product_category_name,
oi.order_id,
oi.seller_id
from products p
right join orderitems oi on p.product_id=oi.product_id;
 -- ------------------------------------------------subqueries-------------------------------------
select o.customer_id
from
orders o where
o.order_status='delivered';
-- -------------------
select
product_id,product_category_name,product_weight_g
from products p where
p.product_weight_g>(select avg(product_weight_g)from products);
-- -----------------
select
s.seller_id,s.seller_city
from sellers s where(select sum(oi.price)from orderitems oi
where oi.seller_id=s.seller_id)>(select avg(price)from orderitems);

-- ------------------------------------------views and indexes----------------------------------------
create view customer_orders as select
c.customer_id,c.customer_unique_id,o.order_id,o.order_status
from customers c join orders o on c.customer_id=o.customer_id;
-- ----------
create view product_sales as select p.product_id,p.product_category_name,sum(oi.price)as total_sales
from products p
join orderitems oi on p.product_id=oi.product_id
group by
p.product_id,
p.product_category_name;
-- -------------------------------
create index idx_geolocation_zip_code_prefix on geolocation(geolocation_zip_code_prefix(2));
-- -------------
create index idx_seller_state on sellers(seller_state(5));
-- --------------------
create index idx_product_id on products(product_id(10));
