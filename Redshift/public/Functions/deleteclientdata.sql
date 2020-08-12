CREATE OR REPLACE PROCEDURE public.deleteclientdata(gooddatapid character varying(32), tableschema character varying(25))
 LANGUAGE plpgsql
AS $$

declare
  i			int;
  maxvalue	int;
  curtable  varchar(50);
  tablenames varchar(1000);
begin

  set statement_timeout = 0;

  drop table if exists tables;
  create temporary table tables (
    id	int,
    tablename	varchar(50),
    primary key (id));

  insert into tables (id, tablename)
    select row_number() over(order by table_name) as id, table_name from svv_tables where table_schema = tableschema and table_catalog = 'gooddataprod';
  
  select into i 1;
  select into maxvalue count(*) from tables;
  
  for i in 1..maxvalue loop
    select into curtable tablename from tables where id = i;
    execute 'delete from ' || tableschema || '.' || curtable || ' where x__client_id = ' || '''' || GoodDataPID || '''';
  end loop;

end;
$$
