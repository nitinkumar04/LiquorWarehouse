CREATE TABLE [dbo].[GoalLevel]
(
    [SalesGoalLevel]		VARCHAR (100) NOT NULL,
    [PrimaryAttrObject]		VARCHAR (100),
	[PrimaryAttrField]		VARCHAR (100), 
    CONSTRAINT [PK_GoalLevel] PRIMARY KEY ([SalesGoalLevel])
);