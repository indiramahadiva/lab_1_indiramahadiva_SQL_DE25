---
title: Sakila DVD Rental Analysis
---

This dashboard shows insights from the Sakila DVD rental database.

## Top 5 Customers by Total Spend

These are our best customers who spent the most money.

```sql customers
from sakila.top_customers;
```

<BarChart
data={customers}
x=customer_name
y=total_spend
title="Top 5 Customers by Total Spend"
swapXY=true
colorPalette={['#7dd3fc']}
/>

## Revenue by Film Category

Sports and Sci-Fi generate the most revenue.

```sql categories
select *
from sakila.category_revenue
where category_name like '${inputs.category.value}';
```

<Dropdown data={categories} name=category value=category_name>
    <DropdownOption value="%" valueLabel="All Categories"/>
</Dropdown>

<BarChart
data={categories}
x=category_name
y=total_revenue
title="Total Revenue by Category"
swapXY=true
colorPalette={['#7dd3fc']}
/>

## Films by Rating

Most films are rated PG-13 and NC-17.

```sql ratings
select *
from sakila.films_by_rating
where rating like '${inputs.rating.value}';
```

<Dropdown data={ratings} name=rating value=rating>
    <DropdownOption value="%" valueLabel="All Ratings"/>
</Dropdown>

<BarChart
data={ratings}
x=rating
y=num_films
title="Number of Films by Rating"
colorPalette={['#7dd3fc']}
/>

## Most Popular Categories by Rentals

Sports and Animation are the most rented categories.

```sql popular
from sakila.popular_categories;
```

<BarChart
data={popular}
x=category
y=rental_count
title="Most Popular Categories by Rentals"
swapXY=true
colorPalette={['#7dd3fc']}
/>
