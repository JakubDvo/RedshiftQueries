with NS AS (
  select 1 as n union all
  select 2 union all
  select 3 union all
  select 4 union all
  select 5 union all
  select 6 union all
  select 7 union all
  select 8 union all
  select 9 union all
  select 10 union all
  select 11 union all
  select 12 union all
  select 13 union all
  select 14 union all
  select 15
)
select b.id,
TRIM(SPLIT_PART(REPLACE(REPLACE(B.blacklist_dates, '}', ''), '{', ''), ',', NS.n))::date from  NS
inner join merchants B ON NS.n <= REGEXP_COUNT(REPLACE(REPLACE(B.blacklist_dates, '}', ''), '{', ''), ',') + 1
where id = 215;
