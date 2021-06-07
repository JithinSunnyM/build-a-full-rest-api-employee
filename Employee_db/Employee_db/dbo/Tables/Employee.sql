CREATE TABLE [dbo].[Employee] (
    [Id]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Name]         VARCHAR (50)     NOT NULL,
    [Description]  VARCHAR (50)     NULL,
    [PhoneNumber]  VARCHAR (50)     NULL,
    [City]         VARCHAR (50)     NULL,
    [State]        VARCHAR (50)     NULL,
    [Notes]        VARCHAR (50)     NULL,
    [EmailAddress] VARCHAR (50)     NULL,
    [Address]      VARCHAR (50)     NULL,
    [PostalCode]   VARCHAR (50)     NULL,
    [Disabled]     BIT              NULL,
    [Created]      DATETIME         NULL,
    [CreatedBy]    VARCHAR (50)     NULL,
    [Modified]     DATETIME         NULL,
    [ModifiedBy]   VARCHAR (50)     NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

