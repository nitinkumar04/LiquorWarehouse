/* This really should use coalesce to build the strings, but just looking for a quick solution */
declare @prodschemaname varchar(25), @testschemaname varchar(25), @tablename varchar(50), @idfieldname varchar(50)
set @prodschemaname = 'dbo'
set @testschemaname = 'GDOut'
set @tablename = 'GD_Contact_Dim'
set @idfieldname = 'Contact Dim Id'

declare @maxrowid int
declare @selectresults table (id int identity(1,1), clause varchar(4000))
declare @fromresults table (id int identity(1,1), clause varchar(200))
declare @whereresults table (id int identity(1,1), clause varchar(4000))

insert into @selectresults
  select 'p.[' + c.name + '], t.[' + c.name + '],'
  from sys.columns c 
    inner join sys.tables t on c.object_id = t.object_id
    inner join sys.schemas s on t.schema_id = s.schema_id
  where s.name = @prodschemaname
    and t.name = @tablename

-- Add 'select' to the first row
update @selectresults set clause = 'select ' + clause where id = 1

-- Get rid of the comma in the last column name
set @maxrowid = (select max(id) from @selectresults)
update @selectresults set clause = substring(clause, 1, len(clause) - 1) where id = @maxrowid

--select * from @selectresults

insert into @fromresults
  select 'from ' + @prodschemaname + '.[' + @tablename + '] p full outer join ' + @testschemaname + '.[' + @tablename + '] t on p.[' + @idfieldname + '] = t.[' + @idfieldname + ']'

--select * from @fromresults

insert into @whereresults
  select 'or p.[' + c.name + '] <> t.[' + c.name + ']'
  from sys.columns c 
    inner join sys.tables t on c.object_id = t.object_id
    inner join sys.schemas s on t.schema_id = s.schema_id
  where s.name = @prodschemaname
    and t.name = @tablename
    and c.name <> @idfieldname
 
-- Replace 'or' with 'where' from the first row
update @whereresults set clause = replace(clause, 'or', 'where') where id = 1

--select * from @whereresults

select clause from @selectresults
union all
select clause from @fromresults 
union all
select clause from @whereresults
