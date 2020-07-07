CREATE TABLE ERPIn.[Product]
(
  Item_Number           varchar(255) not null, 
  Item_Name             varchar(80) not null,
  Label_Key             varchar(50) not null,
  Label_Name            varchar(80) not null,
  Varietal_Name         varchar(50),
  Product_Type          varchar(20),
  Product_Line          varchar(50),
  Brand_Key             varchar(255) not null,
  Brand_Name            varchar(80) not null,
  Brand_Ownership       varchar(50),
  Designation           varchar(50),
  Supplier_Key          varchar(255) not null,
  Supplier_Name         varchar(80) not null,
  Size_Key              varchar(255) not null,
  Size_Name             varchar(80) not null,
  Size_Volume           decimal(15,3) not null,
  Units_per_Case        int not null,
  Vintage               varchar(15),
  Active_Flag           varchar(10),
  ABV                   decimal(4,2),
  Item_Key              varchar(255) not null,
  gvp__Custom_1__c      varchar(80),
  Package_Type          varchar(10),
  Container             varchar(20),
  Primary_Conversion    decimal(15,3),
  Secondary_Conversion  decimal(15,3),
  Label_Custom_1        varchar(80),
  Label_Custom_2        varchar(80)

    CONSTRAINT [PK_Product] PRIMARY KEY ([Item_Number]), 
    [Item_Description] VARCHAR(100) NULL
)
