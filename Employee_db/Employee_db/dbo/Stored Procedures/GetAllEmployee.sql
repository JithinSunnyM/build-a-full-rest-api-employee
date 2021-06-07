-- Author: Jithin Sunny
-- Date: 07/06/2021
-- Purpose: To fetch a list of employees

CREATE PROCEDURE [dbo].[GetAllEmployee]  
AS  
BEGIN  
 SELECT [s].[Id],  
      [s].[Name],  
     [s].[Description],    
     [s].[EmailAddress],  
     [s].[PhoneNumber],  
     [s].[Address],    
     [s].[City],  
     [s].[State],  
     [s].[PostalCode],  
     [s].[Notes],  
     [s].[Disabled],  
     [s].[Created],   
     [s].[CreatedBy],  
     [s].[Modified],  
     [s].[ModifiedBy]  
 FROM [dbo].[Employee] [s] 
END  
