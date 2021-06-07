-- Author: Jithin Sunny
-- Date: 07/06/2021
-- Purpose: To add an employee to the list

CREATE PROCEDURE [dbo].[InsertEmployee]  
 (  
  @Name [nvarchar](50),    
  @Description [nvarchar](300),  
  @EmailAddress [nvarchar](100), 
  @PhoneNumber [nvarchar](50),  
  @Address [nvarchar](100),   
  @City [nvarchar](100),  
  @State [nvarchar](50),  
  @PostalCode [nvarchar](20),  
  @Notes [nvarchar](max),  
  @Disabled [bit]  ,

  @Created [datetime],
  @CreatedBy [nvarchar](50), 
  @Modified [datetime],
  @ModifiedBy [nvarchar](50) 
 )  
AS  
SET NOCOUNT ON  
BEGIN  
 DECLARE @NewID uniqueidentifier = NEWID()  
 INSERT INTO [dbo].[Employee]  
 (  
  [Id], [Name], [Description], [EmailAddress], [PhoneNumber], [Address], [City], [State], [PostalCode], [Notes], [Disabled]  ,[Created], [CreatedBy], [Modified], [ModifiedBy]
 )  
 VALUES  
 (  
  @NewID,  
  @Name,  
  @Description,    
  @EmailAddress, 
  @PhoneNumber,  
  @Address,   
  @City,  
  @State,  
  @PostalCode,   
  @Notes,  
  @Disabled,
  @Created,
  @CreatedBy,
  @Modified,
  @ModifiedBy
 )   
 SELECT @NewID  
END  
