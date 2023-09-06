USE [TestDB]
GO

/****** Object:  Table [dbo].[Sucursal_092023]    Script Date: 06/09/2023 6:44:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sucursal_092023](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](250) NOT NULL,
	[Direccion] [nvarchar](250) NOT NULL,
	[Identificacion] [nvarchar](50) NOT NULL,
	[Fecha_Creacion] [datetime] NULL,
	[Codigo_Moneda] [int] NULL,
	[Es_Borrado] [bit] NULL,
	[Fecha_Modificacion] [datetime] NULL,
 CONSTRAINT [PK__Sucursal__06370DAD3246908E] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Sucursal_092023] ADD  CONSTRAINT [DF_Sucursal_092023_Fecha_Creacion]  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO

ALTER TABLE [dbo].[Sucursal_092023] ADD  CONSTRAINT [DF_Sucursal_092023_Es_Borrado]  DEFAULT ((0)) FOR [Es_Borrado]
GO

ALTER TABLE [dbo].[Sucursal_092023] ADD  CONSTRAINT [DF_Sucursal_092023_Fecha_Modificacion]  DEFAULT (getdate()) FOR [Fecha_Modificacion]
GO

ALTER TABLE [dbo].[Sucursal_092023]  WITH CHECK ADD  CONSTRAINT [fk_moneda] FOREIGN KEY([Codigo_Moneda])
REFERENCES [dbo].[Moneda_092023] ([Codigo_Moneda])
GO

ALTER TABLE [dbo].[Sucursal_092023] CHECK CONSTRAINT [fk_moneda]
GO

