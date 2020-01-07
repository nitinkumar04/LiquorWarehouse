create or replace  procedure DeleteClientData (GoodDataPID varchar(32), tableschema varchar(25)) AS $$

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
    select row_number() over(order by table_name) as id, table_name from svv_tables where table_schema = tableschema and table_catalog = 'gooddatatest';
  
  select into i 1;
  select into maxvalue count(*) from tables;
  
  for i in 1..maxvalue loop
    select into curtable tablename from tables where id = i;
    execute 'delete from ' || tableschema || '.' || curtable || ' where x__client_id = ' || '''' || GoodDataPID || '''';
  end loop;

end;
$$ language plpgsql;