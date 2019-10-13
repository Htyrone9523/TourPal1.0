
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/09/2019 21:28:02
-- Generated from EDMX file: C:\Users\龙神9523\source\repos\TourPal1.0\TourPal1.0\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Database1];
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

-- Creating table 'Clients'
CREATE TABLE [dbo].[Clients] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [DateOfBirth] nvarchar(max)  NOT NULL,
    [Occupation] nvarchar(max)  NULL,
    [Destination] nvarchar(max)  NULL,
    [SelfDescription] nvarchar(max)  NULL,
    [Gender] nvarchar(max)  NOT NULL,
    [GroupId] int  NULL,
    [Image] nvarchar(max)  NULL,
    [TimeScheduledToTravel] nvarchar(max)  NULL
);
GO

-- Creating table 'Administrators'
CREATE TABLE [dbo].[Administrators] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [DateOfBirth] nvarchar(max)  NOT NULL,
    [Gender] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Activities'
CREATE TABLE [dbo].[Activities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Destination] nvarchar(max)  NOT NULL,
    [TimeToGo] nvarchar(max)  NOT NULL,
    [BriefDescription] nvarchar(max)  NOT NULL,
    [AdministratorId] int  NOT NULL,
    [MaximumNumberOfParticipant] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Groups'
CREATE TABLE [dbo].[Groups] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Destination] nvarchar(max)  NOT NULL,
    [GroupBuiltDate] nvarchar(max)  NOT NULL,
    [MenberId1] nvarchar(max)  NULL,
    [MenberId2] nvarchar(max)  NULL
);
GO

-- Creating table 'preferredPartners'
CREATE TABLE [dbo].[preferredPartners] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PartnerId] nvarchar(max)  NULL,
    [ClientId] int  NOT NULL,
    [ThumbedDate] datetime  NOT NULL
);
GO

-- Creating table 'ClientActivity'
CREATE TABLE [dbo].[ClientActivity] (
    [Clients_Id] int  NOT NULL,
    [Activities_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [PK_Clients]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Administrators'
ALTER TABLE [dbo].[Administrators]
ADD CONSTRAINT [PK_Administrators]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Activities'
ALTER TABLE [dbo].[Activities]
ADD CONSTRAINT [PK_Activities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Groups'
ALTER TABLE [dbo].[Groups]
ADD CONSTRAINT [PK_Groups]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'preferredPartners'
ALTER TABLE [dbo].[preferredPartners]
ADD CONSTRAINT [PK_preferredPartners]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Clients_Id], [Activities_Id] in table 'ClientActivity'
ALTER TABLE [dbo].[ClientActivity]
ADD CONSTRAINT [PK_ClientActivity]
    PRIMARY KEY CLUSTERED ([Clients_Id], [Activities_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AdministratorId] in table 'Activities'
ALTER TABLE [dbo].[Activities]
ADD CONSTRAINT [FK_ActivityAdministrator]
    FOREIGN KEY ([AdministratorId])
    REFERENCES [dbo].[Administrators]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActivityAdministrator'
CREATE INDEX [IX_FK_ActivityAdministrator]
ON [dbo].[Activities]
    ([AdministratorId]);
GO

-- Creating foreign key on [Clients_Id] in table 'ClientActivity'
ALTER TABLE [dbo].[ClientActivity]
ADD CONSTRAINT [FK_ClientActivity_Client]
    FOREIGN KEY ([Clients_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Activities_Id] in table 'ClientActivity'
ALTER TABLE [dbo].[ClientActivity]
ADD CONSTRAINT [FK_ClientActivity_Activity]
    FOREIGN KEY ([Activities_Id])
    REFERENCES [dbo].[Activities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientActivity_Activity'
CREATE INDEX [IX_FK_ClientActivity_Activity]
ON [dbo].[ClientActivity]
    ([Activities_Id]);
GO

-- Creating foreign key on [GroupId] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [FK_ClientGroup]
    FOREIGN KEY ([GroupId])
    REFERENCES [dbo].[Groups]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientGroup'
CREATE INDEX [IX_FK_ClientGroup]
ON [dbo].[Clients]
    ([GroupId]);
GO

-- Creating foreign key on [ClientId] in table 'preferredPartners'
ALTER TABLE [dbo].[preferredPartners]
ADD CONSTRAINT [FK_ClientpreferredPartner]
    FOREIGN KEY ([ClientId])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientpreferredPartner'
CREATE INDEX [IX_FK_ClientpreferredPartner]
ON [dbo].[preferredPartners]
    ([ClientId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------