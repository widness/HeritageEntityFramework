
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/02/2018 13:37:34
-- Generated from EDMX file: C:\Users\Widness\Documents\Projects\HeritageEntityFramework\HeritageEntityFramework\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [heritage];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Items'
CREATE TABLE [dbo].[Items] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Price] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Items_Book'
CREATE TABLE [dbo].[Items_Book] (
    [ISBN] int IDENTITY(1,1) NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'Items_DVD'
CREATE TABLE [dbo].[Items_DVD] (
    [Pegi] int IDENTITY(1,1) NOT NULL,
    [Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Items'
ALTER TABLE [dbo].[Items]
ADD CONSTRAINT [PK_Items]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Items_Book'
ALTER TABLE [dbo].[Items_Book]
ADD CONSTRAINT [PK_Items_Book]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Items_DVD'
ALTER TABLE [dbo].[Items_DVD]
ADD CONSTRAINT [PK_Items_DVD]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Id] in table 'Items_Book'
ALTER TABLE [dbo].[Items_Book]
ADD CONSTRAINT [FK_Book_inherits_Item]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Items]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Items_DVD'
ALTER TABLE [dbo].[Items_DVD]
ADD CONSTRAINT [FK_DVD_inherits_Item]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Items]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------