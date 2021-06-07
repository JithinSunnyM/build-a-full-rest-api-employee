-- Author: Jithin Sunny
-- Date: 07/06/2021
-- Purpose: To update an employee using their ID

CREATE PROCEDURE [dbo].[UpdateEmployee]  
 (  
  @Id [uniqueidentifier],
  @Name  [nvarchar](50),    
  @Description [nvarchar](300),  
  @EmailAddress [nvarchar](100), 
  @PhoneNumber [nvarchar](50),  
  @Address [nvarchar](100),   
  @City  [nvarchar](100),  
  @State  [nvarchar](50),  
  @PostalCode [nvarchar](20),    
  @Notes  [nvarchar](max),  
  @Disabled [bit] ,  
  
  @Created [datetime],  
  @CreatedBy [nvarchar](50),   
  @Modified [datetime],  
  @ModifiedBy [nvarchar](50)  
 )  
AS  
SET NOCOUNT ON  
BEGIN  


 UPDATE [dbo].[Employee]  
  SET [Name] = @Name, [Description] = @Description, [EmailAddress] = @EmailAddress, [PhoneNumber] = @PhoneNumber, [Address] = @Address, [City] = @City, [State] = @State, [PostalCode] = 
@PostalCode, [Notes] = @Notes, [Disabled] = @Disabled, Modified = @Modified, ModifiedBy =  @ModifiedBy
  
  WHERE [Id] = @Id 



  
  
END  
