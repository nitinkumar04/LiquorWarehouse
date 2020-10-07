CREATE TABLE BFOut.[Product]
(
  Vendor_ID      VARCHAR(10) not null, 
  Vendor_Desc    nvarchar(100),
  Supplier_ID    VARCHAR(10),
  Supplier_Name  nvarchar(100),
  Brand_ID       VARCHAR(10),
  Brand_Desc     nvarchar(100),
  [Label_ID]     VARCHAR(10),
  Label_Desc     nvarchar(100),
  ProdID         VARCHAR(18) NOT NULL,
  Product_ID     VARCHAR(10),
  [Description]  nvarchar(100), 
    CONSTRAINT [PK_Product] PRIMARY KEY ([ProdID])
)
