CREATE TABLE [TraxIn].[SurveyImages]
(
  [SurveyAnswer_ID] INT NOT NULL PRIMARY KEY, 
    [TraxStoreNumber] NCHAR(10) NULL, 
    [ExternalProjectName] NCHAR(10) NULL, 
    [ExternalTaskCode] NCHAR(10) NULL, 
    [Survey_ID] NCHAR(10) NULL, 
    [Image_ID] NCHAR(10) NULL, 
    [Body] NCHAR(10) NULL, 
    [BodyLength] NCHAR(10) NULL, 
    [Image_UUID] NCHAR(10) NULL
)
