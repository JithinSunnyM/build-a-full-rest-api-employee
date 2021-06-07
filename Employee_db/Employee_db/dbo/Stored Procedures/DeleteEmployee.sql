-- Author: Jithin Sunny
-- Date: 07/06/2021
-- Purpose: To delete an employee by their ID

CREATE PROCEDURE [dbo].[DeleteEmployee]  
  @Id [uniqueidentifier]  
AS  
BEGIN  
  DELETE FROM [dbo].[Employee]  
  WHERE [Id] = @Id  
END
