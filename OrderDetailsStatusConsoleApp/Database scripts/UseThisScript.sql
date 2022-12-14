USE [NorthWindAzure3]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 8/16/2022 5:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerIdentifier] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[ContactTypeIdentifier] [int] NULL,
 CONSTRAINT [PK_Customers_1] PRIMARY KEY CLUSTERED 
(
	[CustomerIdentifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/16/2022 5:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/16/2022 5:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerIdentifier] [int] NULL,
	[OrderDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[Freight] [money] NULL,
	[ShipAddress] [nvarchar](60) NULL,
	[ShipCity] [nvarchar](15) NULL,
	[ShipPostalCode] [nvarchar](10) NULL,
	[ShipCountry] [nvarchar](15) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 8/16/2022 5:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/16/2022 5:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (1, N'Alfreds Futterkiste''s', N'Maria Anders', N'Obere Str. 57', N'Berlin', NULL, N'12209', N'Germany', N'030-0074321', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (2, N'Ana Trujillo Emparedados y helados', N'Ana Trujillo', N'Avda. de la Constitución 2222', N'México D.F.', NULL, N'05021', N'Mexico', N'(5) 555-4729', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (3, N'Antonio Moreno Taquería', N'Antonio Moreno', N'Mataderos  2312', N'México D.F.', NULL, N'05023', N'Mexico', N'(5) 555-3932', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (4, N'Around the Horn', N'Thomas Hardy', N'120 Hanover Sq.', N'London', NULL, N'WA1 1DP', N'UK', N'(171) 555-7788', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (5, N'Berglunds snabbköp', N'Christina Berglund', N'Berguvsvägen  8', N'Luleå', NULL, N'S-958 22', N'Sweden', N'0921-12 34 65', 6)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (6, N'Blauer See Delikatessen', N'Hanna Moos', N'Forsterstr. 57', N'Mannheim', NULL, N'68306', N'Germany', N'0621-08460', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (7, N'Blondesddsl père et fils', N'Frédérique Citeaux', N'24, place Kléber', N'Strasbourg', NULL, N'67000', N'France', N'88.60.15.31', 5)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (8, N'Bólido Comidas preparadas', N'Martín Sommer', N'C/ Araquil, 67', N'Madrid', NULL, N'28023', N'Spain', N'(91) 555 22 82', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (9, N'Bon app''', N'Laurence Lebihan', N'12, rue des Bouchers', N'Marseille', NULL, N'13008', N'France', N'91.24.45.40', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (10, N'B''s Beverages', N'Victoria Ashworth', N'Fauntleroy Circus', N'London', NULL, N'EC2 5NT', N'UK', N'(171) 555-1212', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (11, N'Cactus Comidas para llevar', N'Patricio Simpson', N'Cerrito 333', N'Buenos Aires', NULL, N'1010', N'Argentina', N'(1) 135-5555', 9)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (12, N'Centro comercial Moctezuma', N'Francisco Chang', N'Sierras de Granada 9993', N'México D.F.', NULL, N'05022', N'Mexico', N'(5) 555-3392', 5)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (13, N'Chop-suey Chinese', N'Yang Wang', N'Hauptstr. 29', N'Bern', NULL, N'3012', N'Switzerland', N'0452-076545', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (14, N'Consolidated Holdings', N'Elizabeth Brown', N'Berkeley Gardens 12  Brewery', N'London', NULL, N'WX1 6LT', N'UK', N'(171) 555-2282', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (15, N'Drachenblut Delikatessen', N'Sven Ottlieb', N'Walserweg 21', N'Aachen', NULL, N'52066', N'Germany', N'0241-039123', 6)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (16, N'Du monde entier', N'Janine Labrune', N'67, rue des Cinquante Otages', N'Nantes', NULL, N'44000', N'France', N'40.67.88.88', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (17, N'Eastern Connection', N'Ann Devon', N'35 King George', N'London', NULL, N'WX3 6FW', N'UK', N'(171) 555-0297', 9)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (18, N'Ernst Handel', N'Roland Mendel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria', N'7675-3425', 11)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (19, N'FISSA Fabrica Inter. Salchichas S.A.', N'Diego Roel', N'C/ Moralzarzal, 86', N'Madrid', NULL, N'28034', N'Spain', N'(91) 555 94 44', 1)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (20, N'Folies gourmandes', N'Martine Rancé', N'184, chaussée de Tournai', N'Lille', NULL, N'59000', N'France', N'20.16.10.16', 2)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (21, N'Folk och fä HB', N'Maria Larsson', N'Åkergatan 24', N'Bräcke', NULL, N'S-844 67', N'Sweden', N'0695-34 67 21', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (22, N'Frankenversand', N'Peter Franken', N'Berliner Platz 43', N'München', NULL, N'80805', N'Germany', N'089-0877310', 5)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (23, N'France restauration', N'Carine Schmitt', N'54, rue Royale', N'Nantes', NULL, N'44000', N'France', N'40.32.21.21', 5)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (24, N'Franchi S.p.A.', N'Paolo Accorti', N'Via Monte Bianco 34', N'Torino', NULL, N'10100', N'Italy', N'011-4988260', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (25, N'Furia Bacalhau e Frutos do Mar', N'Lino Rodriguez', N'Jardim das rosas n. 32', N'Lisboa', NULL, N'1675', N'Portugal', N'(1) 354-2534', 11)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (26, N'Galería del gastrónomo', N'Eduardo Saavedra', N'Rambla de Cataluña, 23', N'Barcelona', NULL, N'08022', N'Spain', N'(93) 203 4560', 5)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (27, N'Godos Cocina Típica', N'José Pedro Freyre', N'C/ Romero, 33', N'Sevilla', NULL, N'41101', N'Spain', N'(95) 555 82 82', 11)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (28, N'Königlich Essen', N'Philip Cramer', N'Maubelstr. 90', N'Brandenburg', NULL, N'14776', N'Germany', N'0555-09876', 10)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (29, N'La corne d''abondance', N'Daniel Tonini', N'67, avenue de l''Europe', N'Versailles', NULL, N'78000', N'France', N'30.59.84.10', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (30, N'La maison d''Asie', N'Annette Roulet', N'1 rue Alsace-Lorraine', N'Toulouse', NULL, N'31000', N'France', N'61.77.61.10', 11)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (31, N'Lehmanns Marktstand', N'Renate Messner', N'Magazinweg 7', N'Frankfurt a.M.', NULL, N'60528', N'Germany', N'069-0245984', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (32, N'Magazzini Alimentari Riuniti', N'Giovanni Rovelli', N'Via Ludovico il Moro 22', N'Bergamo', NULL, N'24100', N'Italy', N'035-640230', 5)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (33, N'Maison Dewey', N'Catherine Dewey', N'Rue Joseph-Bens 532', N'Bruxelles', NULL, N'B-1180', N'Belgium', N'(02) 201 24 67', 9)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (34, N'Morgenstern Gesundkost', N'Alexander Feuer', N'Heerstr. 22', N'Leipzig', NULL, N'04179', N'Germany', N'0342-023176', 4)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (35, N'North/South', N'Simon Crowther', N'South House 300 Queensbridge', N'London', NULL, N'SW7 1RZ', N'UK', N'(171) 555-7733', 10)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (36, N'Océano Atlántico Ltda.', N'Yvonne Moncada', N'Ing. Gustavo Moncada 8585 Piso 20-A', N'Buenos Aires', NULL, N'1010', N'Argentina', N'(1) 135-5333', 9)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (37, N'Ottilies Käseladen', N'Henriette Pfalzheim', N'Mehrheimerstr. 369', N'Köln', NULL, N'50739', N'Germany', N'0221-0644327', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (38, N'Paris spécialités', N'Marie Bertrand', N'265, boulevard Charonne', N'Paris', NULL, N'75012', N'France', N'(1) 42.34.22.66', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (39, N'Pericles Comidas clásicas', N'Guillermo Fernández', N'Calle Dr. Jorge Cash 321', N'México D.F.', NULL, N'05033', N'Mexico', N'(5) 552-3745', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (40, N'Piccolo und mehr', N'Georg Pipps', N'Geislweg 14', N'Salzburg', NULL, N'5020', N'Austria', N'6562-9722', 11)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (41, N'Princesa Isabel Vinhos', N'Isabel de Castro', N'Estrada da saúde n. 58', N'Lisboa', NULL, N'1756', N'Portugal', N'(1) 356-5634', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (42, N'QUICK Stop', N'Horst Kloss', N'Taucherstraße 10', N'Cunewalde', NULL, N'01307', N'Germany', N'0372-035188', 1)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (43, N'Rancho grande', N'Sergio Gutiérrez', N'Av. del Libertador 900', N'Buenos Aires', NULL, N'1010', N'Argentina', N'(1) 123-5555', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (44, N'Reggiani Caseifici', N'Maurizio Moroni', N'Strada Provinciale 124', N'Reggio Emilia', NULL, N'42100', N'Italy', N'0522-556721', 10)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (45, N'Richter Supermarkt', N'Michael Holz', N'Grenzacherweg 237', N'Genève', NULL, N'1203', N'Switzerland', N'0897-034214', 11)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (46, N'Romero y tomillo', N'Alejandra Camino', N'Gran Vía, 1', N'Madrid', NULL, N'28001', N'Spain', N'(91) 745 6200', 1)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (47, N'Santé Gourmet', N'Jonas Bergulfsen', N'Erling Skakkes gate 78', N'Stavern', NULL, N'4110', N'Norway', N'07-98 92 35', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (48, N'Seven Seas Imports', N'Hari Kumar', N'90 Wadhurst Rd.', N'London', NULL, N'OX15 4NB', N'UK', N'(171) 555-1717', 11)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (49, N'Simons bistro', N'Jytte Petersen', N'Vinbæltet 34', N'Kobenhavn', NULL, N'1734', N'Denmark', N'31 12 34 56', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (50, N'Spécialités du monde', N'Dominique Perrier', N'25, rue Lauriston', N'Paris', NULL, N'75016', N'France', N'(1) 47.55.60.10', 5)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (51, N'Suprêmes délices', N'Pascale Cartrain', N'Boulevard Tirou, 255', N'Charleroi', NULL, N'B-6000', N'Belgium', N'(071) 23 67 22 20', 1)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (52, N'Toms Spezialitäten', N'Karin Josephs', N'Luisenstr. 48', N'Münster', NULL, N'44087', N'Germany', N'0251-031259', 5)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (53, N'Tortuga Restaurante', N'Miguel Angel Paolino', N'Avda. Azteca 123', N'México D.F.', NULL, N'05033', N'Mexico', N'(5) 555-2933', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (54, N'Vaffeljernet', N'Palle Ibsen', N'Smagsloget 45', N'Århus', NULL, N'8200', N'Denmark', N'86 21 32 43', 11)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (55, N'Victuailles en stock', N'Mary Saveley', N'2, rue du Commerce', N'Lyon', NULL, N'69004', N'France', N'78.32.54.86', 9)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (56, N'Vins et alcools Chevalier', N'Paul Henriot', N'59 rue de l''Abbaye', N'Reims', NULL, N'51100', N'France', N'26.47.15.10', 1)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (57, N'Die Wandernde Kuh', N'Rita Müller', N'Adenauerallee 900', N'Stuttgart', NULL, N'70563', N'Germany', N'0711-020361', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (58, N'Wartian Herkku', N'Pirkko Koskitalo', N'Torikatu 38', N'Oulu', NULL, N'90110', N'Finland', N'981-443655', 1)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (59, N'Wilman Kala', N'Matti Karttunen', N'Keskuskatu 45', N'Helsinki', NULL, N'21240', N'Finland', N'90-224 8858', 8)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (60, N'Wolski  Zajazd', N'Zbyszek Piestrzeniewicz', N'ul. Filtrowa 68', N'Warszawa', NULL, N'01-012', N'Poland', N'(26) 642-7012', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (61, N'Old World Delicatessen', N'Rene Phillips', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', N'USA', N'(907) 555-7584', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (62, N'Bottom-Dollar Markets', N'Elizabeth Lincoln', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', N'Canada', N'(604) 555-4729', 1)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (63, N'Laughing Bacchus Wine Cellars', N'Yoshi Tannamuri', N'1900 Oak St.', N'Vancouver', N'BC', N'V3F 2K1', N'Canada', N'(604) 555-3392', 4)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (64, N'Let''s Stop N Shop', N'Jaime Yorres', N'87 Polk St. Suite 5', N'San Francisco', N'CA', N'94117', N'USA', N'(415) 555-5938', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (65, N'Hungry Owl All-Night Grocers', N'Patricia McKenna', N'8 Johnstown Road', N'Cork', N'Co. Cork', NULL, N'Ireland', N'2967 542', 10)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (66, N'GROSELLA-Restaurante', N'Manuel Pereira', N'5ª Ave. Los Palos Grandes', N'Caracas', N'DF', N'1081', N'Venezuela', N'(2) 283-2951', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (67, N'Save-a-lot Markets', N'Jose Pavarotti', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', N'USA', N'(208) 555-8097', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (68, N'Island Trading', N'Helen Bennett', N'Garden House Crowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', N'UK', N'(198) 555-8888', 5)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (69, N'LILA-Supermercado', N'Carlos González', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', N'Venezuela', N'(9) 331-6954', 1)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (70, N'The Cracker Box', N'Liu Wong', N'55 Grizzly Peak Rd.', N'Butte', N'MT', N'59801', N'USA', N'(406) 555-5834', 4)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (71, N'Rattlesnake Canyon Grocery', N'Paula Wilson', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', N'USA', N'(505) 555-5939', 3)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (72, N'LINO-Delicateses', N'Felipe Izquierdo', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', N'Venezuela', N'(8) 34-56-12', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (73, N'Great Lakes Food Market', N'Howard Snyder', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', N'USA', N'(503) 555-7555', 5)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (74, N'Hungry Coyote Import Store', N'Yoshi Latimer', N'City Center Plaza 516 Main St.', N'Elgin', N'OR', N'97827', N'USA', N'(503) 555-6874', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (75, N'Lonesome Pine Restaurant', N'Fran Wilson', N'89 Chiaroscuro Rd.', N'Portland', N'OR', N'97219', N'USA', N'(503) 555-9573', 11)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (76, N'The Big Cheese', N'Liz Nixon', N'89 Jefferson Way Suite 2', N'Portland', N'OR', N'97201', N'USA', N'(503) 555-3612', 5)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (77, N'Mère Paillarde', N'Jean Fresnière', N'43 rue St. Laurent', N'Montréal', N'Québec', N'H1J 1C3', N'Canada', N'(514) 555-8054', 4)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (78, N'Hanari Carnes', N'Mario Pontes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', N'Brazil', N'(21) 555-0091', 1)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (79, N'Que Delícia', N'Bernardo Batista', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'RJ', N'02389-673', N'Brazil', N'(21) 555-4252', 1)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (80, N'Ricardo Adocicados', N'Janete Limeira', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', N'Brazil', N'(21) 555-3412', 2)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (81, N'Comércio Mineiro', N'Pedro Afonso', N'Av. dos Lusíadas, 23', N'Sao Paulo', N'SP', N'05432-043', N'Brazil', N'(11) 555-7647', 10)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (82, N'Familia Arquibaldo', N'Aria Cruz', N'Rua Orós, 92', N'Sao Paulo', N'SP', N'05442-030', N'Brazil', N'(11) 555-9857', 4)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (83, N'Gourmet Lanchonetes', N'André Fonseca', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', N'Brazil', N'(11) 555-9482', 10)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (84, N'Queen Cozinha', N'Lúcia Carvalho', N'Alameda dos Canàrios, 891', N'Sao Paulo', N'SP', N'05487-020', N'Brazil', N'(11) 555-1189', 4)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (85, N'Tradição Hipermercados', N'Anabela Domingues', N'Av. Inês de Castro, 414', N'Sao Paulo', N'SP', N'05634-030', N'Brazil', N'(11) 555-2167', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (86, N'Wellington Importadora', N'Paula Parente', N'Rua do Mercado, 12', N'Resende', N'SP', N'08737-363', N'Brazil', N'(14) 555-8122', 11)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (87, N'HILARION-Abastos', N'Carlos Hernández', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela', N'(5) 555-1340', 12)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (88, N'Lazy K Kountry Store', N'John Steel', N'12 Orchestra Terrace', N'Walla Walla', N'WA', N'99362', N'USA', N'(509) 555-7969', 5)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (89, N'Trail''s Head Gourmet Provisioners', N'Helvetius Nagy', N'722 DaVinci Blvd.', N'Kirkland', N'WA', N'98034', N'USA', N'(206) 555-8257', 10)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (90, N'White Clover Markets', N'Karl Jablonski', N'305 - 14th Ave. S. Suite 3B', N'Seattle', N'WA', N'98128', N'USA', N'(206) 555-4112', 7)
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactName], [Address], [City], [Region], [PostalCode], [Country], [Phone], [ContactTypeIdentifier]) VALUES (91, N'Split Rail Beer & Ale', N'Art Braunschweiger', N'P.O. Box 555', N'Lander', N'WY', N'82520', N'USA', N'(307) 555-4680', 11)
SET IDENTITY_INSERT [dbo].[Customers] OFF
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount], [StatusId]) VALUES (10248, 11, 14.0000, 12, 0, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount], [StatusId]) VALUES (10248, 42, 9.8000, 10, 0, 3)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount], [StatusId]) VALUES (10248, 72, 34.8000, 5, 0, 2)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount], [StatusId]) VALUES (10249, 14, 18.6000, 9, 0, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount], [StatusId]) VALUES (10249, 51, 42.4000, 40, 0, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount], [StatusId]) VALUES (10250, 41, 7.7000, 10, 0, 2)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount], [StatusId]) VALUES (10250, 51, 42.4000, 35, 0.15, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount], [StatusId]) VALUES (10250, 65, 16.8000, 15, 0.15, 1)
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10248, 56, CAST(N'2015-07-04T00:00:00.000' AS DateTime), CAST(N'2015-07-16T00:00:00.000' AS DateTime), 98.3500, N'59 rue de l''Abbaye', N'Reims', N'51100', N'France', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10249, 52, CAST(N'2014-07-05T00:00:00.000' AS DateTime), CAST(N'2014-07-10T00:00:00.000' AS DateTime), 11.6100, N'Luisenstr. 48', N'Münster', N'44087', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10250, 78, CAST(N'2014-07-08T00:00:00.000' AS DateTime), CAST(N'2014-07-12T00:00:00.000' AS DateTime), 65.8300, N'Rua do Paço, 67', N'Rio de Janeiro', N'05454-876', N'Brazil', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10251, 55, CAST(N'2014-07-08T00:00:00.000' AS DateTime), CAST(N'2014-07-15T00:00:00.000' AS DateTime), 41.3400, N'2, rue du Commerce', N'Lyon', N'69004', N'France', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10252, 51, CAST(N'2014-07-09T00:00:00.000' AS DateTime), CAST(N'2014-07-11T00:00:00.000' AS DateTime), 51.3000, N'Boulevard Tirou, 255', N'Charleroi', N'B-6000', N'Belgium', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10253, 78, CAST(N'2014-07-10T00:00:00.000' AS DateTime), CAST(N'2017-07-16T00:00:00.000' AS DateTime), 58.1700, N'Rua do Paço, 67', N'Rio de Janeiro', N'05454-876', N'Brazil', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10254, 13, CAST(N'2014-07-11T00:00:00.000' AS DateTime), CAST(N'2014-07-23T00:00:00.000' AS DateTime), 22.9800, N'Hauptstr. 31', N'Bern', N'3012', N'Switzerland', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10255, 45, CAST(N'2014-07-12T00:00:00.000' AS DateTime), CAST(N'2014-07-15T00:00:00.000' AS DateTime), 148.3300, N'Starenweg 5', N'Genève', N'1204', N'Switzerland', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10256, 86, CAST(N'2014-07-15T00:00:00.000' AS DateTime), CAST(N'2014-07-17T00:00:00.000' AS DateTime), 13.9700, N'Rua do Mercado, 12', N'Resende', N'08737-363', N'Brazil', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10257, 87, CAST(N'2014-07-16T00:00:00.000' AS DateTime), CAST(N'2014-07-22T00:00:00.000' AS DateTime), 81.9100, N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'5022', N'Venezuela', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10258, 18, CAST(N'2014-07-17T00:00:00.000' AS DateTime), CAST(N'2014-07-23T00:00:00.000' AS DateTime), 140.5100, N'Kirchgasse 6', N'Graz', N'8010', N'Austria', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10259, 12, CAST(N'2014-07-18T00:00:00.000' AS DateTime), CAST(N'2014-07-25T00:00:00.000' AS DateTime), 3.2500, N'Sierras de Granada 9993', N'México D.F.', N'05022', N'Mexico', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10260, 37, CAST(N'2014-07-19T00:00:00.000' AS DateTime), CAST(N'2014-07-29T00:00:00.000' AS DateTime), 55.0900, N'Mehrheimerstr. 369', N'Köln', N'50739', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10261, 79, CAST(N'2014-07-19T00:00:00.000' AS DateTime), CAST(N'2014-07-30T00:00:00.000' AS DateTime), 3.0500, N'Rua da Panificadora, 12', N'Rio de Janeiro', N'02389-673', N'Brazil', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10262, 71, CAST(N'2014-07-22T00:00:00.000' AS DateTime), CAST(N'2014-07-25T00:00:00.000' AS DateTime), 48.2900, N'2817 Milton Dr.', N'Albuquerque', N'87110', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10263, 18, CAST(N'2014-07-23T00:00:00.000' AS DateTime), CAST(N'2014-07-31T00:00:00.000' AS DateTime), 146.0600, N'Kirchgasse 6', N'Graz', N'8010', N'Austria', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10264, 21, CAST(N'2014-07-24T00:00:00.000' AS DateTime), CAST(N'2014-08-23T00:00:00.000' AS DateTime), 3.6700, N'Åkergatan 24', N'Bräcke', N'S-844 67', N'Sweden', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10265, 7, CAST(N'2014-07-25T00:00:00.000' AS DateTime), CAST(N'2014-08-12T00:00:00.000' AS DateTime), 55.2800, N'24, place Kléber', N'Strasbourg', N'67000', N'France', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10266, 18, CAST(N'2014-07-26T00:00:00.000' AS DateTime), CAST(N'2014-07-31T00:00:00.000' AS DateTime), 25.7300, N'Torikatu 38', N'Oulu', N'90110', N'Finland', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10267, 22, CAST(N'2014-07-29T00:00:00.000' AS DateTime), CAST(N'2014-08-06T00:00:00.000' AS DateTime), 208.5800, N'Berliner Platz 43', N'München', N'80805', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10268, 66, CAST(N'2014-07-30T00:00:00.000' AS DateTime), CAST(N'2014-08-02T00:00:00.000' AS DateTime), 66.2900, N'5ª Ave. Los Palos Grandes', N'Caracas', N'1081', N'Venezuela', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10269, 90, CAST(N'2014-07-31T00:00:00.000' AS DateTime), CAST(N'2014-08-09T00:00:00.000' AS DateTime), 4.5600, N'1029 - 12th Ave. S.', N'Seattle', N'98124', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10270, 58, CAST(N'2014-08-01T00:00:00.000' AS DateTime), CAST(N'2014-08-02T00:00:00.000' AS DateTime), 136.5400, N'Torikatu 38', N'Oulu', N'90110', N'Finland', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10271, 18, CAST(N'2014-08-01T00:00:00.000' AS DateTime), CAST(N'2014-08-30T00:00:00.000' AS DateTime), 4.5400, N'P.O. Box 555', N'Lander', N'82520', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10272, 71, CAST(N'2014-08-02T00:00:00.000' AS DateTime), CAST(N'2014-08-06T00:00:00.000' AS DateTime), 98.0300, N'2817 Milton Dr.', N'Albuquerque', N'87110', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10273, 42, CAST(N'2014-08-05T00:00:00.000' AS DateTime), CAST(N'2014-08-12T00:00:00.000' AS DateTime), 76.0700, N'Taucherstraße 10', N'Cunewalde', N'01307', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10274, 56, CAST(N'2014-08-06T00:00:00.000' AS DateTime), CAST(N'2014-08-16T00:00:00.000' AS DateTime), 6.0100, N'59 rue de l''Abbaye', N'Reims', N'51100', N'France', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10275, 32, CAST(N'2014-08-07T00:00:00.000' AS DateTime), CAST(N'2014-08-09T00:00:00.000' AS DateTime), 26.9300, N'Via Ludovico il Moro 22', N'Bergamo', N'24100', N'Italy', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10276, 53, CAST(N'2014-08-08T00:00:00.000' AS DateTime), CAST(N'2014-08-14T00:00:00.000' AS DateTime), 13.8400, N'Avda. Azteca 123', N'México D.F.', N'05033', N'Mexico', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10277, 34, CAST(N'2014-08-09T00:00:00.000' AS DateTime), CAST(N'2014-08-13T00:00:00.000' AS DateTime), 125.7700, N'Heerstr. 22', N'Leipzig', N'04179', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10278, 5, CAST(N'2014-08-12T00:00:00.000' AS DateTime), CAST(N'2014-08-16T00:00:00.000' AS DateTime), 92.6900, N'Berguvsvägen  8', N'Luleå', N'S-958 22', N'Sweden', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10279, 31, CAST(N'2014-08-13T00:00:00.000' AS DateTime), CAST(N'2014-08-16T00:00:00.000' AS DateTime), 25.8300, N'Magazinweg 7', N'Frankfurt a.M.', N'60528', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10280, 5, CAST(N'2014-08-14T00:00:00.000' AS DateTime), CAST(N'2014-09-12T00:00:00.000' AS DateTime), 8.9800, N'Berguvsvägen  8', N'Luleå', N'S-958 22', N'Sweden', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10281, 18, CAST(N'2014-08-14T00:00:00.000' AS DateTime), CAST(N'2014-08-21T00:00:00.000' AS DateTime), 2.9400, N'Gran Vía, 1', N'Madrid', N'28001', N'Spain', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10282, 46, CAST(N'2014-08-15T00:00:00.000' AS DateTime), CAST(N'2014-08-21T00:00:00.000' AS DateTime), 12.6900, N'Gran Vía, 1', N'Madrid', N'28001', N'Spain', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10283, 69, CAST(N'2014-08-16T00:00:00.000' AS DateTime), CAST(N'2014-08-23T00:00:00.000' AS DateTime), 84.8100, N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'3508', N'Venezuela', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10284, 31, CAST(N'2014-08-19T00:00:00.000' AS DateTime), CAST(N'2014-08-27T00:00:00.000' AS DateTime), 76.5600, N'Magazinweg 7', N'Frankfurt a.M.', N'60528', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10285, 42, CAST(N'2014-08-20T00:00:00.000' AS DateTime), CAST(N'2014-08-26T00:00:00.000' AS DateTime), 76.8300, N'Taucherstraße 10', N'Cunewalde', N'01307', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10286, 42, CAST(N'2014-08-21T00:00:00.000' AS DateTime), CAST(N'2014-08-30T00:00:00.000' AS DateTime), 229.2400, N'Taucherstraße 10', N'Cunewalde', N'01307', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10287, 80, CAST(N'2014-08-22T00:00:00.000' AS DateTime), CAST(N'2014-08-28T00:00:00.000' AS DateTime), 12.7600, N'Av. Copacabana, 267', N'Rio de Janeiro', N'02389-890', N'Brazil', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10288, 44, CAST(N'2014-08-23T00:00:00.000' AS DateTime), CAST(N'2014-09-03T00:00:00.000' AS DateTime), 7.4500, N'Strada Provinciale 124', N'Reggio Emilia', N'42100', N'Italy', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10289, 10, CAST(N'2014-08-26T00:00:00.000' AS DateTime), CAST(N'2014-08-28T00:00:00.000' AS DateTime), 22.7700, N'Fauntleroy Circus', N'London', N'EC2 5NT', N'UK', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10290, 81, CAST(N'2014-08-27T00:00:00.000' AS DateTime), CAST(N'2014-09-03T00:00:00.000' AS DateTime), 79.7000, N'Av. dos Lusíadas, 23', N'Sao Paulo', N'05432-043', N'Brazil', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10291, 79, CAST(N'2014-08-27T00:00:00.000' AS DateTime), CAST(N'2014-09-04T00:00:00.000' AS DateTime), 6.4000, N'Rua da Panificadora, 12', N'Rio de Janeiro', N'02389-673', N'Brazil', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10292, 85, CAST(N'2014-08-28T00:00:00.000' AS DateTime), CAST(N'2014-09-02T00:00:00.000' AS DateTime), 1.3500, N'Av. Inês de Castro, 414', N'Sao Paulo', N'05634-030', N'Brazil', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10293, 53, CAST(N'2014-08-29T00:00:00.000' AS DateTime), CAST(N'2014-09-11T00:00:00.000' AS DateTime), 21.1800, N'Avda. Azteca 123', N'México D.F.', N'05033', N'Mexico', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10294, 71, CAST(N'2014-08-30T00:00:00.000' AS DateTime), CAST(N'2014-09-05T00:00:00.000' AS DateTime), 147.2600, N'2817 Milton Dr.', N'Albuquerque', N'87110', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10295, 56, CAST(N'2014-09-02T00:00:00.000' AS DateTime), CAST(N'2014-09-10T00:00:00.000' AS DateTime), 1.1500, N'59 rue de l''Abbaye', N'Reims', N'51100', N'France', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10296, 69, CAST(N'2014-09-03T00:00:00.000' AS DateTime), CAST(N'2014-09-11T00:00:00.000' AS DateTime), 0.1200, N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'3508', N'Venezuela', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10297, 7, CAST(N'2014-09-04T00:00:00.000' AS DateTime), CAST(N'2014-09-10T00:00:00.000' AS DateTime), 5.7400, N'24, place Kléber', N'Strasbourg', N'67000', N'France', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10298, 65, CAST(N'2014-09-05T00:00:00.000' AS DateTime), CAST(N'2014-09-11T00:00:00.000' AS DateTime), 168.2200, N'8 Johnstown Road', N'Cork', NULL, N'Ireland', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10299, 80, CAST(N'2014-09-06T00:00:00.000' AS DateTime), CAST(N'2014-09-13T00:00:00.000' AS DateTime), 29.7600, N'Av. Copacabana, 267', N'Rio de Janeiro', N'02389-890', N'Brazil', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10300, 32, CAST(N'2014-09-09T00:00:00.000' AS DateTime), CAST(N'2014-09-18T00:00:00.000' AS DateTime), 17.6800, N'Via Ludovico il Moro 22', N'Bergamo', N'24100', N'Italy', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10301, 57, CAST(N'2014-09-09T00:00:00.000' AS DateTime), CAST(N'2014-09-17T00:00:00.000' AS DateTime), 45.0800, N'Adenauerallee 900', N'Stuttgart', N'70563', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10302, 51, CAST(N'2014-09-10T00:00:00.000' AS DateTime), CAST(N'2014-10-09T00:00:00.000' AS DateTime), 6.2700, N'Boulevard Tirou, 255', N'Charleroi', N'B-6000', N'Belgium', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10303, 27, CAST(N'2014-09-11T00:00:00.000' AS DateTime), CAST(N'2014-09-18T00:00:00.000' AS DateTime), 107.8300, N'C/ Romero, 33', N'Sevilla', N'41101', N'Spain', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10304, 53, CAST(N'2014-09-12T00:00:00.000' AS DateTime), CAST(N'2014-09-17T00:00:00.000' AS DateTime), 63.7900, N'Avda. Azteca 123', N'México D.F.', N'05033', N'Mexico', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10305, 61, CAST(N'2014-09-13T00:00:00.000' AS DateTime), CAST(N'2014-10-09T00:00:00.000' AS DateTime), 257.6200, N'2743 Bering St.', N'Anchorage', N'99508', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10306, 46, CAST(N'2014-09-16T00:00:00.000' AS DateTime), CAST(N'2014-09-23T00:00:00.000' AS DateTime), 7.5600, N'Gran Vía, 1', N'Madrid', N'28001', N'Spain', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10307, 75, CAST(N'2014-09-17T00:00:00.000' AS DateTime), CAST(N'2014-09-25T00:00:00.000' AS DateTime), 0.5600, N'89 Chiaroscuro Rd.', N'Portland', N'97219', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10308, 2, CAST(N'2014-09-18T00:00:00.000' AS DateTime), CAST(N'2014-09-24T00:00:00.000' AS DateTime), 1.6100, N'Avda. de la Constitución 2222', N'México D.F.', N'05021', N'Mexico', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10309, 65, CAST(N'2014-09-19T00:00:00.000' AS DateTime), CAST(N'2014-10-23T00:00:00.000' AS DateTime), 47.3000, N'8 Johnstown Road', N'Cork', NULL, N'Ireland', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10310, 76, CAST(N'2014-09-20T00:00:00.000' AS DateTime), CAST(N'2014-09-27T00:00:00.000' AS DateTime), 17.5200, N'89 Jefferson Way Suite 2', N'Portland', N'97201', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10311, 16, CAST(N'2014-09-20T00:00:00.000' AS DateTime), CAST(N'2014-09-26T00:00:00.000' AS DateTime), 24.6900, N'67, rue des Cinquante Otages', N'Nantes', N'44000', N'France', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10312, 57, CAST(N'2014-09-23T00:00:00.000' AS DateTime), CAST(N'2014-10-03T00:00:00.000' AS DateTime), 40.2600, N'Adenauerallee 900', N'Stuttgart', N'70563', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10313, 42, CAST(N'2014-09-24T00:00:00.000' AS DateTime), CAST(N'2014-10-04T00:00:00.000' AS DateTime), 1.9600, N'Taucherstraße 10', N'Cunewalde', N'01307', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10314, 71, CAST(N'2014-09-25T00:00:00.000' AS DateTime), CAST(N'2014-10-04T00:00:00.000' AS DateTime), 74.1600, N'2817 Milton Dr.', N'Albuquerque', N'87110', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10315, 68, CAST(N'2014-09-26T00:00:00.000' AS DateTime), CAST(N'2014-10-03T00:00:00.000' AS DateTime), 41.7600, N'Garden House Crowther Way', N'Cowes', N'PO31 7PJ', N'UK', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10316, 71, CAST(N'2014-09-27T00:00:00.000' AS DateTime), CAST(N'2014-10-08T00:00:00.000' AS DateTime), 150.1500, N'2817 Milton Dr.', N'Albuquerque', N'87110', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10317, 75, CAST(N'2014-09-30T00:00:00.000' AS DateTime), CAST(N'2014-10-10T00:00:00.000' AS DateTime), 12.6900, N'89 Chiaroscuro Rd.', N'Portland', N'97219', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10318, 68, CAST(N'2014-10-01T00:00:00.000' AS DateTime), CAST(N'2014-10-04T00:00:00.000' AS DateTime), 4.7300, N'Garden House Crowther Way', N'Cowes', N'PO31 7PJ', N'UK', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10319, 53, CAST(N'2014-10-02T00:00:00.000' AS DateTime), CAST(N'2014-10-11T00:00:00.000' AS DateTime), 64.5000, N'Avda. Azteca 123', N'México D.F.', N'05033', N'Mexico', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10320, 58, CAST(N'2014-10-03T00:00:00.000' AS DateTime), CAST(N'2014-10-18T00:00:00.000' AS DateTime), 34.5700, N'Torikatu 38', N'Oulu', N'90110', N'Finland', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10321, 68, CAST(N'2014-10-03T00:00:00.000' AS DateTime), CAST(N'2014-10-11T00:00:00.000' AS DateTime), 3.4300, N'Garden House Crowther Way', N'Cowes', N'PO31 7PJ', N'UK', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10322, 39, CAST(N'2014-10-04T00:00:00.000' AS DateTime), CAST(N'2014-10-23T00:00:00.000' AS DateTime), 0.4000, N'Calle Dr. Jorge Cash 321', N'México D.F.', N'05033', N'Mexico', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10323, 28, CAST(N'2014-10-07T00:00:00.000' AS DateTime), CAST(N'2014-10-14T00:00:00.000' AS DateTime), 4.8800, N'Maubelstr. 90', N'Brandenburg', N'14776', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10324, 67, CAST(N'2014-10-08T00:00:00.000' AS DateTime), CAST(N'2014-10-10T00:00:00.000' AS DateTime), 214.2700, N'187 Suffolk Ln.', N'Boise', N'83720', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10325, 28, CAST(N'2014-10-09T00:00:00.000' AS DateTime), CAST(N'2014-10-14T00:00:00.000' AS DateTime), 64.8600, N'Maubelstr. 90', N'Brandenburg', N'14776', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10326, 8, CAST(N'2014-10-10T00:00:00.000' AS DateTime), CAST(N'2014-10-14T00:00:00.000' AS DateTime), 77.9200, N'C/ Araquil, 67', N'Madrid', N'28023', N'Spain', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10327, 21, CAST(N'2014-10-11T00:00:00.000' AS DateTime), CAST(N'2014-10-14T00:00:00.000' AS DateTime), 63.3600, N'Åkergatan 24', N'Bräcke', N'S-844 67', N'Sweden', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10328, 25, CAST(N'2014-10-14T00:00:00.000' AS DateTime), CAST(N'2014-10-17T00:00:00.000' AS DateTime), 87.0300, N'Jardim das rosas n. 32', N'Lisboa', N'1675', N'Portugal', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10329, 91, CAST(N'2014-10-15T00:00:00.000' AS DateTime), CAST(N'2014-10-23T00:00:00.000' AS DateTime), 191.6700, N'P.O. Box 555', N'Lander', N'82520', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10330, 69, CAST(N'2014-10-16T00:00:00.000' AS DateTime), CAST(N'2014-10-28T00:00:00.000' AS DateTime), 12.7500, N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'3508', N'Venezuela', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10331, 9, CAST(N'2014-10-16T00:00:00.000' AS DateTime), CAST(N'2014-10-21T00:00:00.000' AS DateTime), 10.1900, N'12, rue des Bouchers', N'Marseille', N'13008', N'France', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10332, 77, CAST(N'2014-10-17T00:00:00.000' AS DateTime), CAST(N'2014-10-21T00:00:00.000' AS DateTime), 52.8400, N'43 rue St. Laurent', N'Montréal', N'H1J 1C3', N'Canada', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10333, 58, CAST(N'2014-10-18T00:00:00.000' AS DateTime), CAST(N'2014-10-25T00:00:00.000' AS DateTime), 0.5900, N'Torikatu 38', N'Oulu', N'90110', N'Finland', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10334, 55, CAST(N'2014-10-21T00:00:00.000' AS DateTime), CAST(N'2014-10-28T00:00:00.000' AS DateTime), 8.5600, N'2, rue du Commerce', N'Lyon', N'69004', N'France', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10335, 65, CAST(N'2014-10-22T00:00:00.000' AS DateTime), CAST(N'2014-10-24T00:00:00.000' AS DateTime), 42.1100, N'8 Johnstown Road', N'Cork', NULL, N'Ireland', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10336, 41, CAST(N'2014-10-23T00:00:00.000' AS DateTime), CAST(N'2014-10-25T00:00:00.000' AS DateTime), 15.5100, N'Estrada da saúde n. 58', N'Lisboa', N'1756', N'Portugal', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10337, 22, CAST(N'2014-10-24T00:00:00.000' AS DateTime), CAST(N'2014-10-29T00:00:00.000' AS DateTime), 108.2600, N'Berliner Platz 43', N'München', N'80805', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10338, 61, CAST(N'2014-10-25T00:00:00.000' AS DateTime), CAST(N'2014-10-29T00:00:00.000' AS DateTime), 84.2100, N'2743 Bering St.', N'Anchorage', N'99508', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10339, 77, CAST(N'2014-10-28T00:00:00.000' AS DateTime), CAST(N'2014-11-04T00:00:00.000' AS DateTime), 15.6600, N'43 rue St. Laurent', N'Montréal', N'H1J 1C3', N'Canada', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10340, 9, CAST(N'2014-10-29T00:00:00.000' AS DateTime), CAST(N'2014-11-08T00:00:00.000' AS DateTime), 166.3100, N'12, rue des Bouchers', N'Marseille', N'13008', N'France', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10341, 49, CAST(N'2014-10-29T00:00:00.000' AS DateTime), CAST(N'2014-11-05T00:00:00.000' AS DateTime), 26.7800, N'Vinbæltet 34', N'Kobenhavn', N'1734', N'Denmark', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10342, 22, CAST(N'2014-10-30T00:00:00.000' AS DateTime), CAST(N'2014-11-04T00:00:00.000' AS DateTime), 54.8300, N'Berliner Platz 43', N'München', N'80805', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10343, 31, CAST(N'2014-10-31T00:00:00.000' AS DateTime), CAST(N'2014-11-06T00:00:00.000' AS DateTime), 110.3700, N'Magazinweg 7', N'Frankfurt a.M.', N'60528', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10344, 90, CAST(N'2014-11-01T00:00:00.000' AS DateTime), CAST(N'2014-11-05T00:00:00.000' AS DateTime), 23.2900, N'1029 - 12th Ave. S.', N'Seattle', N'98124', N'USA', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10345, 42, CAST(N'2014-11-04T00:00:00.000' AS DateTime), CAST(N'2014-11-11T00:00:00.000' AS DateTime), 249.0600, N'Taucherstraße 10', N'Cunewalde', N'01307', N'Germany', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10346, 71, CAST(N'2014-11-05T00:00:00.000' AS DateTime), CAST(N'2014-11-08T00:00:00.000' AS DateTime), 142.0800, N'2817 Milton Dr.', N'Albuquerque', N'87110', N'USA', 0)
GO
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10347, 82, CAST(N'2014-11-06T00:00:00.000' AS DateTime), CAST(N'2014-11-08T00:00:00.000' AS DateTime), 3.1000, N'Rua Orós, 92', N'Sao Paulo', N'05442-030', N'Brazil', 0)
INSERT [dbo].[Orders] ([OrderID], [CustomerIdentifier], [OrderDate], [ShippedDate], [Freight], [ShipAddress], [ShipCity], [ShipPostalCode], [ShipCountry], [IsDeleted]) VALUES (10348, 57, CAST(N'2014-11-07T00:00:00.000' AS DateTime), CAST(N'2014-11-15T00:00:00.000' AS DateTime), 0.7800, N'Adenauerallee 900', N'Stuttgart', N'70563', N'Germany', 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([StatusId], [Description]) VALUES (1, N'In progress')
INSERT [dbo].[OrderStatus] ([StatusId], [Description]) VALUES (2, N'Canceled')
INSERT [dbo].[OrderStatus] ([StatusId], [Description]) VALUES (3, N'Completed')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (1, N'Chai', 18.0000, 39)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (2, N'Chang', 19.0000, 17)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (3, N'Aniseed Syrup', 10.0000, 13)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (4, N'Chef Anton''s Cajun Seasoning', 22.0000, 53)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (5, N'Chef Anton''s Gumbo Mix', 21.3500, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (6, N'Grandma''s Boysenberry Spread', 25.0000, 120)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (7, N'Uncle Bob''s Organic Dried Pears', 30.0000, 15)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (8, N'Northwoods Cranberry Sauce', 40.0000, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (9, N'Mishi Kobe Niku', 97.0000, 29)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (10, N'Ikura', 31.0000, 31)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (11, N'Queso Cabrales', 21.0000, 22)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (12, N'Queso Manchego La Pastora', 38.0000, 86)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (13, N'Konbu', 6.0000, 24)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (14, N'Tofu', 23.2500, 35)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (15, N'Genen Shouyu', 15.5000, 39)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (16, N'Pavlova', 17.4500, 29)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (17, N'Alice Mutton', 39.0000, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (18, N'Carnarvon Tigers', 62.5000, 42)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (19, N'Teatime Chocolate Biscuits', 9.2000, 25)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (20, N'Sir Rodney''s Marmalade', 81.0000, 40)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (21, N'Sir Rodney''s Scones', 10.0000, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (22, N'Gustaf''s Knäckebröd', 21.0000, 104)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (23, N'Tunnbröd', 9.0000, 61)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (24, N'Guaraná Fantástica', 4.5000, 20)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (25, N'NuNuCa Nuß-Nougat-Creme', 14.0000, 76)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (26, N'Gumbär Gummibärchen', 31.2300, 15)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (27, N'Schoggi Schokolade', 43.9000, 49)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (28, N'Rössle Sauerkraut', 45.6000, 26)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (29, N'Thüringer Rostbratwurst', 123.7900, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (30, N'Nord-Ost Matjeshering', 25.8900, 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (31, N'Gorgonzola Telino', 12.5000, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (32, N'Mascarpone Fabioli', 32.0000, 9)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (33, N'Geitost', 2.5000, 112)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (34, N'Sasquatch Ale', 14.0000, 111)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (35, N'Steeleye Stout', 18.0000, 20)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (36, N'Inlagd Sill', 19.0000, 112)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (37, N'Gravad lax', 26.0000, 11)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (38, N'Côte de Blaye', 263.5000, 17)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (39, N'Chartreuse verte', 18.0000, 69)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (40, N'Boston Crab Meat', 18.4000, 123)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (41, N'Jack''s New England Clam Chowder', 9.6500, 85)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (42, N'Singaporean Hokkien Fried Mee', 14.0000, 26)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (43, N'Ipoh Coffee', 46.0000, 17)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (44, N'Gula Malacca', 19.4500, 27)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (45, N'Rogede sild', 9.5000, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (46, N'Spegesild', 12.0000, 95)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (47, N'Zaanse koeken', 9.5000, 36)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (48, N'Chocolade', 12.7500, 15)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (49, N'Maxilaku', 20.0000, 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (50, N'Valkoinen suklaa', 16.2500, 65)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (51, N'Manjimup Dried Apples', 53.0000, 20)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (52, N'Filo Mix', 7.0000, 38)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (53, N'Perth Pasties', 32.8000, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (54, N'Tourtière', 7.4500, 21)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (55, N'Pâté chinois', 24.0000, 115)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (56, N'Gnocchi di nonna Alice', 38.0000, 21)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (57, N'Ravioli Angelo', 19.5000, 36)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (58, N'Escargots de Bourgogne', 13.2500, 62)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (59, N'Raclette Courdavault', 55.0000, 79)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (60, N'Camembert Pierrot', 34.0000, 19)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (61, N'Sirop d''érable', 28.5000, 113)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (62, N'Tarte au sucre', 49.3000, 17)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (63, N'Vegie-spread', 43.9000, 24)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (64, N'Wimmers gute Semmelknödel', 33.2500, 22)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (65, N'Louisiana Fiery Hot Pepper Sauce', 21.0500, 76)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (66, N'Louisiana Hot Spiced Okra', 17.0000, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (67, N'Laughing Lumberjack Lager', 14.0000, 52)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (68, N'Scottish Longbreads', 12.5000, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (69, N'Gudbrandsdalsost', 36.0000, 26)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (70, N'Outback Lager', 15.0000, 15)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (71, N'Flotemysost', 21.5000, 26)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (72, N'Mozzarella di Giovanni', 34.8000, 14)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (73, N'Röd Kaviar', 15.0000, 101)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (74, N'Longlife Tofu', 10.0000, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (75, N'Rhönbräu Klosterbier', 7.7500, 125)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (76, N'Lakkalikööri', 18.0000, 57)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock]) VALUES (77, N'Original Frankfurter grüne Soße', 13.0000, 32)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [Freight]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] NOCHECK CONSTRAINT [FK_Order_Details_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] NOCHECK CONSTRAINT [FK_Order_Details_Products]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[OrderStatus] ([StatusId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderStatus]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers2] FOREIGN KEY([CustomerIdentifier])
REFERENCES [dbo].[Customers] ([CustomerIdentifier])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers2]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is the primary key for a single product' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is the product name of the product' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
