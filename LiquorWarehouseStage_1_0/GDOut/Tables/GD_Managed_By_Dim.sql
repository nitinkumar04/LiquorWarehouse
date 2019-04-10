CREATE TABLE [GDOut].[GD_Managed_By_Dim] (
    [Managed By Dim Id] VARCHAR (37) NOT NULL,
    [Manager Dim Id]    VARCHAR (18) NULL,
    [Person Dim Id]     VARCHAR (18) NULL,
    [Managed By Level]  VARCHAR (30) NULL,
    [Managed By Count]  VARCHAR (20) NULL, 
    CONSTRAINT [PK_GD_Managed_By_Dim] PRIMARY KEY ([Managed By Dim Id])
);


