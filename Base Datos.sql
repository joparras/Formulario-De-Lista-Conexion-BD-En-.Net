CREATE DATABASE Laboratorio1
GO 


USE Laboratorio1
GO

/****** Object:  Table [dbo].[CATEGORIA]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIA](
	[idCategoria] [int] IDENTITY(1,1) NOT NULL,
	[nombreCategoria] [varchar](150) NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [CATEGORIA_pk] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORIA_CLIENTE]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIA_CLIENTE](
	[idCategoriaCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombreCategoria] [varchar](150) NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [CATEGORIA_CLIENTE_pk] PRIMARY KEY CLUSTERED 
(
	[idCategoriaCliente] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[razonSocial] [varchar](150) NOT NULL,
	[direccion] [varchar](150) NOT NULL,
	[telefono] [varchar](20) NOT NULL,
	[idCategoriaCliente] [int] NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [CLIENTE_pk] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURA]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURA](
	[idFactura] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](10) NOT NULL,
	[fechaEmision] [date] NOT NULL,
	[idCliente] [int] NOT NULL,
	[subtotal] [decimal](18, 6) NOT NULL,
	[igv] [decimal](18, 6) NOT NULL,
	[total] [decimal](18, 6) NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [FACTURA_pk] PRIMARY KEY CLUSTERED 
(
	[idFactura] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURA_DETALLE]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURA_DETALLE](
	[idFacturaDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idFactura] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[precioUnitario] [decimal](18, 6) NOT NULL,
	[cantidad] [decimal](18, 6) NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [FACTURA_DETALLE_pk] PRIMARY KEY CLUSTERED 
(
	[idFacturaDetalle] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDEN_COMPRA]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDEN_COMPRA](
	[idOrdenCompra] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](10) NOT NULL,
	[fechaEmision] [date] NOT NULL,
	[idProveedor] [int] NOT NULL,
	[subtotal] [decimal](18, 6) NOT NULL,
	[igv] [decimal](18, 6) NOT NULL,
	[total] [decimal](18, 6) NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [ORDEN_COMPRA_pk] PRIMARY KEY CLUSTERED 
(
	[idOrdenCompra] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDEN_COMPRA_DETALLE]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDEN_COMPRA_DETALLE](
	[idOrdenCompraDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idOrdenCompra] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[precioUnitario] [decimal](18, 6) NOT NULL,
	[cantidad] [decimal](18, 6) NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [ORDEN_COMPRA_DETALLE_pk] PRIMARY KEY CLUSTERED 
(
	[idOrdenCompraDetalle] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAIS]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAIS](
	[idPais] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [PAIS_pk] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEDIDO_VENTA]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDO_VENTA](
	[idPedidoVenta] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](10) NOT NULL,
	[fechaEmision] [date] NOT NULL,
	[idCliente] [int] NOT NULL,
	[subtotal] [decimal](18, 6) NOT NULL,
	[igv] [decimal](18, 6) NOT NULL,
	[total] [decimal](18, 6) NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [PEDIDO_VENTA_pk] PRIMARY KEY CLUSTERED 
(
	[idPedidoVenta] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEDIDO_VENTA_DETALLE]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDO_VENTA_DETALLE](
	[idPedidoVentaDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idPedidoVenta] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[precioUnidad] [decimal](18, 6) NOT NULL,
	[cantidad] [decimal](18, 6) NOT NULL,
	[monto] [decimal](18, 6) NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [PEDIDO_VENTA_DETALLE_pk] PRIMARY KEY CLUSTERED 
(
	[idPedidoVentaDetalle] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[idCategoria] [int] NOT NULL,
	[nombreProducto] [varchar](150) NOT NULL,
	[precioUnitario] [decimal](18, 2) NOT NULL,
	[stock] [int] NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [PRODUCTO_pk] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVEEDOR]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEEDOR](
	[idProveedor] [int] IDENTITY(1,1) NOT NULL,
	[razonSocial] [varchar](150) NOT NULL,
	[direccion] [varchar](150) NOT NULL,
	[telefono] [varchar](20) NOT NULL,
	[idPais] [int] NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [PROVEEDOR_pk] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUPERVISOR]    Script Date: 24/10/2022 21:53:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUPERVISOR](
	[idSupervisor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[apellidos] [varchar](200) NOT NULL,
	[direccion] [varchar](255) NULL,
	[email] [varchar](255) NOT NULL,
	[idPais] [int] NOT NULL,
	[activo] [bit] NOT NULL,
	[eliminado] [bit] NOT NULL,
	[usuarioRegistro] [varchar](20) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[usuarioModificacion] [varchar](20) NULL,
	[fechaModificacion] [datetime] NULL,
	[usuarioEliminacion] [varchar](20) NULL,
	[fechaEliminacion] [datetime] NULL,
 CONSTRAINT [SUPERVISOR_pk] PRIMARY KEY CLUSTERED 
(
	[idSupervisor] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CATEGORIA] ON 

INSERT [dbo].[CATEGORIA] ([idCategoria], [nombreCategoria], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (1, N'BATERIA', 1, 0, N'FPERALTA', CAST(N'2022-09-14T18:51:03.137' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CATEGORIA] ([idCategoria], [nombreCategoria], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (2, N'FILTROS', 1, 0, N'FPERALTA', CAST(N'2022-09-14T18:51:03.137' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CATEGORIA] ([idCategoria], [nombreCategoria], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (3, N'LLANTAS', 1, 0, N'FPERALTA', CAST(N'2022-09-14T18:51:03.137' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CATEGORIA] ([idCategoria], [nombreCategoria], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (4, N'REENCAUCHE', 1, 0, N'FPERALTA', CAST(N'2022-09-14T18:51:03.137' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CATEGORIA] OFF
GO
SET IDENTITY_INSERT [dbo].[CATEGORIA_CLIENTE] ON 

INSERT [dbo].[CATEGORIA_CLIENTE] ([idCategoriaCliente], [nombreCategoria], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (1, N'METALMECANICA', 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:23:11.690' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CATEGORIA_CLIENTE] ([idCategoriaCliente], [nombreCategoria], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (2, N'TRANSPORTISTA', 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:23:11.690' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CATEGORIA_CLIENTE] ([idCategoriaCliente], [nombreCategoria], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (3, N'AGROINDUSTRIA', 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:23:11.690' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CATEGORIA_CLIENTE] OFF
GO
SET IDENTITY_INSERT [dbo].[CLIENTE] ON 

INSERT [dbo].[CLIENTE] ([idCliente], [razonSocial], [direccion], [telefono], [idCategoriaCliente], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (1, N'ELIACON S.A.C.', N'AV. EL POLO NRO 380', N'986782930', 1, 1, 0, N'ADMIN', CAST(N'2022-09-28T18:25:43.697' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CLIENTE] ([idCliente], [razonSocial], [direccion], [telefono], [idCategoriaCliente], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (2, N'AQUA GLOBAL S.A.C.', N'ANX. 22 JICAMARCA MZA. X LOTE. 13 PORTON', N'985666149', 1, 1, 0, N'ADMIN', CAST(N'2022-09-28T18:25:43.697' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CLIENTE] ([idCliente], [razonSocial], [direccion], [telefono], [idCategoriaCliente], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (3, N'EMASTRAM S.A.C.', N'MONTERREY 221', N'974563222', 2, 1, 0, N'ADMIN', CAST(N'2022-09-28T18:25:43.697' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CLIENTE] ([idCliente], [razonSocial], [direccion], [telefono], [idCategoriaCliente], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (4, N'DROKASA PERU SA', N'EL PARAISO - URB. EL PARAISO MZA. K LOTE. 01', N'044718593', 3, 1, 0, N'ADMIN', CAST(N'2022-09-28T18:25:43.697' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CLIENTE] ([idCliente], [razonSocial], [direccion], [telefono], [idCategoriaCliente], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (5, N'ARATO PERU SA', N'R. CUTERVO 1818 URB. CHACRA RIOS NORTE DPTO. 203 INT. A ', N'945862574', 3, 1, 0, N'ADMIN', CAST(N'2022-09-28T18:25:43.697' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CLIENTE] OFF
GO
SET IDENTITY_INSERT [dbo].[FACTURA] ON 

INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (1, N'F0001', CAST(N'2022-04-10' AS Date), 1, CAST(50.000000 AS Decimal(18, 6)), CAST(9.000000 AS Decimal(18, 6)), CAST(59.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (2, N'F0002', CAST(N'2022-04-15' AS Date), 2, CAST(20.000000 AS Decimal(18, 6)), CAST(3.600000 AS Decimal(18, 6)), CAST(23.600000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (3, N'F0003', CAST(N'2022-04-18' AS Date), 3, CAST(35.000000 AS Decimal(18, 6)), CAST(6.300000 AS Decimal(18, 6)), CAST(41.300000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (4, N'F0004', CAST(N'2022-04-22' AS Date), 1, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (5, N'F0005', CAST(N'2022-04-25' AS Date), 4, CAST(18.000000 AS Decimal(18, 6)), CAST(3.240000 AS Decimal(18, 6)), CAST(21.240000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (6, N'F0006', CAST(N'2022-04-30' AS Date), 2, CAST(44.000000 AS Decimal(18, 6)), CAST(7.920000 AS Decimal(18, 6)), CAST(51.920000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (7, N'F0007', CAST(N'2022-05-02' AS Date), 5, CAST(33.330000 AS Decimal(18, 6)), CAST(5.999400 AS Decimal(18, 6)), CAST(39.329400 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (8, N'F0008', CAST(N'2022-05-08' AS Date), 3, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (9, N'F0009', CAST(N'2022-05-08' AS Date), 4, CAST(50.000000 AS Decimal(18, 6)), CAST(9.000000 AS Decimal(18, 6)), CAST(59.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (10, N'F0010', CAST(N'2022-05-12' AS Date), 1, CAST(33.600000 AS Decimal(18, 6)), CAST(6.048000 AS Decimal(18, 6)), CAST(39.648000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (11, N'F0011', CAST(N'2022-05-12' AS Date), 2, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (12, N'F0012', CAST(N'2022-05-15' AS Date), 2, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (13, N'F0013', CAST(N'2022-06-04' AS Date), 4, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (14, N'F0014', CAST(N'2022-06-09' AS Date), 1, CAST(50.000000 AS Decimal(18, 6)), CAST(9.000000 AS Decimal(18, 6)), CAST(59.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (15, N'F0015', CAST(N'2022-06-11' AS Date), 5, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (16, N'F0016', CAST(N'2022-06-13' AS Date), 3, CAST(69.900000 AS Decimal(18, 6)), CAST(12.582000 AS Decimal(18, 6)), CAST(82.482000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (17, N'F0017', CAST(N'2022-06-24' AS Date), 2, CAST(55.550000 AS Decimal(18, 6)), CAST(9.999000 AS Decimal(18, 6)), CAST(65.549000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (18, N'F0018', CAST(N'2022-06-28' AS Date), 4, CAST(88.600000 AS Decimal(18, 6)), CAST(15.948000 AS Decimal(18, 6)), CAST(104.548000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (19, N'F0019', CAST(N'2022-07-01' AS Date), 1, CAST(47.700000 AS Decimal(18, 6)), CAST(8.586000 AS Decimal(18, 6)), CAST(56.286000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (20, N'F0020', CAST(N'2022-07-05' AS Date), 4, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (21, N'F0021', CAST(N'2022-07-14' AS Date), 3, CAST(33.600000 AS Decimal(18, 6)), CAST(6.048000 AS Decimal(18, 6)), CAST(39.648000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (22, N'F0022', CAST(N'2022-07-18' AS Date), 2, CAST(88.600000 AS Decimal(18, 6)), CAST(15.948000 AS Decimal(18, 6)), CAST(104.548000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (23, N'F0023', CAST(N'2022-07-22' AS Date), 2, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (24, N'F0024', CAST(N'2022-07-29' AS Date), 5, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (25, N'F0025', CAST(N'2022-08-01' AS Date), 3, CAST(223.400000 AS Decimal(18, 6)), CAST(40.212000 AS Decimal(18, 6)), CAST(263.612000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (26, N'F0026', CAST(N'2022-08-05' AS Date), 4, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (27, N'F0027', CAST(N'2022-08-14' AS Date), 3, CAST(33.600000 AS Decimal(18, 6)), CAST(6.048000 AS Decimal(18, 6)), CAST(39.648000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (28, N'F0028', CAST(N'2022-08-18' AS Date), 1, CAST(88.600000 AS Decimal(18, 6)), CAST(15.948000 AS Decimal(18, 6)), CAST(104.548000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (29, N'F0029', CAST(N'2022-08-22' AS Date), 2, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (30, N'F0030', CAST(N'2022-08-29' AS Date), 5, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (31, N'F0031', CAST(N'2022-09-01' AS Date), 1, CAST(47.700000 AS Decimal(18, 6)), CAST(8.586000 AS Decimal(18, 6)), CAST(56.286000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (32, N'F0032', CAST(N'2022-09-05' AS Date), 2, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (33, N'F0033', CAST(N'2022-09-14' AS Date), 3, CAST(33.600000 AS Decimal(18, 6)), CAST(6.048000 AS Decimal(18, 6)), CAST(39.648000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (34, N'F0034', CAST(N'2022-09-18' AS Date), 1, CAST(223.400000 AS Decimal(18, 6)), CAST(40.212000 AS Decimal(18, 6)), CAST(263.612000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (35, N'F0035', CAST(N'2022-09-22' AS Date), 4, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA] ([idFactura], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (36, N'F0036', CAST(N'2022-09-29' AS Date), 5, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:31:27.043' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[FACTURA] OFF
GO
SET IDENTITY_INSERT [dbo].[FACTURA_DETALLE] ON 

INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (1, 1, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (2, 1, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (3, 1, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (4, 1, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (5, 5, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (6, 5, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (7, 5, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (8, 5, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (9, 8, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (10, 8, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (11, 8, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (12, 8, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (13, 9, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (14, 9, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (15, 9, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (16, 9, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (17, 12, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (18, 12, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (19, 12, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (20, 12, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (21, 16, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (22, 16, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (23, 16, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (24, 16, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (25, 20, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (26, 20, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (27, 20, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (28, 20, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (29, 24, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (30, 24, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (31, 24, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (32, 24, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (33, 26, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (34, 26, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (35, 26, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (36, 26, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (37, 31, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (38, 31, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (39, 31, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (40, 31, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (41, 33, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (42, 33, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (43, 33, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (44, 33, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (45, 36, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (46, 36, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (47, 36, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (48, 36, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:23.363' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (49, 2, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (50, 2, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (51, 2, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (52, 4, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (53, 4, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (54, 4, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (55, 10, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (56, 10, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (57, 10, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (58, 14, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (59, 14, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (60, 14, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (61, 19, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (62, 19, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (63, 19, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (64, 21, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (65, 21, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (66, 21, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (67, 25, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (68, 25, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (69, 25, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (70, 29, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (71, 29, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (72, 29, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (73, 34, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (74, 34, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (75, 34, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (76, 35, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (77, 35, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (78, 35, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:33:56.197' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (79, 3, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (80, 3, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (81, 3, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (82, 6, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (83, 6, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (84, 6, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (85, 7, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (86, 7, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (87, 7, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (88, 11, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (89, 11, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (90, 11, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (91, 13, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (92, 13, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (93, 13, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (94, 15, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (95, 15, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (96, 15, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (97, 17, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (98, 17, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (99, 17, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (100, 18, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (101, 18, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (102, 18, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (103, 22, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (104, 22, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (105, 22, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (106, 23, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (107, 23, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (108, 23, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (109, 27, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (110, 27, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (111, 27, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (112, 28, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (113, 28, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (114, 28, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (115, 30, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (116, 30, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (117, 30, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (118, 32, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (119, 32, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[FACTURA_DETALLE] ([idFacturaDetalle], [idFactura], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (120, 32, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:34:13.070' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[FACTURA_DETALLE] OFF
GO
SET IDENTITY_INSERT [dbo].[ORDEN_COMPRA] ON 

INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (1, N'OC0001', CAST(N'2022-04-10' AS Date), 1, CAST(50.000000 AS Decimal(18, 6)), CAST(9.000000 AS Decimal(18, 6)), CAST(59.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (2, N'OC0002', CAST(N'2022-04-15' AS Date), 2, CAST(20.000000 AS Decimal(18, 6)), CAST(3.600000 AS Decimal(18, 6)), CAST(23.600000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (3, N'OC0003', CAST(N'2022-04-18' AS Date), 3, CAST(35.000000 AS Decimal(18, 6)), CAST(6.300000 AS Decimal(18, 6)), CAST(41.300000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (4, N'OC0004', CAST(N'2022-04-22' AS Date), 1, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (5, N'OC0005', CAST(N'2022-04-25' AS Date), 4, CAST(18.000000 AS Decimal(18, 6)), CAST(3.240000 AS Decimal(18, 6)), CAST(21.240000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (6, N'OC0006', CAST(N'2022-04-30' AS Date), 2, CAST(44.000000 AS Decimal(18, 6)), CAST(7.920000 AS Decimal(18, 6)), CAST(51.920000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (7, N'OC0007', CAST(N'2022-05-02' AS Date), 5, CAST(33.330000 AS Decimal(18, 6)), CAST(5.999400 AS Decimal(18, 6)), CAST(39.329400 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (8, N'OC0008', CAST(N'2022-05-08' AS Date), 3, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (9, N'OC0009', CAST(N'2022-05-08' AS Date), 4, CAST(50.000000 AS Decimal(18, 6)), CAST(9.000000 AS Decimal(18, 6)), CAST(59.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (10, N'OC0010', CAST(N'2022-05-12' AS Date), 1, CAST(33.600000 AS Decimal(18, 6)), CAST(6.048000 AS Decimal(18, 6)), CAST(39.648000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (11, N'OC0011', CAST(N'2022-05-12' AS Date), 2, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (12, N'OC0012', CAST(N'2022-05-15' AS Date), 2, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (13, N'OC0013', CAST(N'2022-06-04' AS Date), 4, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (14, N'OC0014', CAST(N'2022-06-09' AS Date), 1, CAST(50.000000 AS Decimal(18, 6)), CAST(9.000000 AS Decimal(18, 6)), CAST(59.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (15, N'OC0015', CAST(N'2022-06-11' AS Date), 5, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (16, N'OC0016', CAST(N'2022-06-13' AS Date), 3, CAST(69.900000 AS Decimal(18, 6)), CAST(12.582000 AS Decimal(18, 6)), CAST(82.482000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (17, N'OC0017', CAST(N'2022-06-24' AS Date), 2, CAST(55.550000 AS Decimal(18, 6)), CAST(9.999000 AS Decimal(18, 6)), CAST(65.549000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (18, N'OC0018', CAST(N'2022-06-28' AS Date), 4, CAST(88.600000 AS Decimal(18, 6)), CAST(15.948000 AS Decimal(18, 6)), CAST(104.548000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (19, N'OC0019', CAST(N'2022-07-01' AS Date), 1, CAST(47.700000 AS Decimal(18, 6)), CAST(8.586000 AS Decimal(18, 6)), CAST(56.286000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (20, N'OC0020', CAST(N'2022-07-05' AS Date), 4, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (21, N'OC0021', CAST(N'2022-07-14' AS Date), 3, CAST(33.600000 AS Decimal(18, 6)), CAST(6.048000 AS Decimal(18, 6)), CAST(39.648000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (22, N'OC0022', CAST(N'2022-07-18' AS Date), 5, CAST(88.600000 AS Decimal(18, 6)), CAST(15.948000 AS Decimal(18, 6)), CAST(104.548000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (23, N'OC0023', CAST(N'2022-07-22' AS Date), 2, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (24, N'OC0024', CAST(N'2022-07-29' AS Date), 5, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (25, N'OC0025', CAST(N'2022-08-01' AS Date), 1, CAST(223.400000 AS Decimal(18, 6)), CAST(40.212000 AS Decimal(18, 6)), CAST(263.612000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (26, N'OC0026', CAST(N'2022-08-05' AS Date), 4, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (27, N'OC0027', CAST(N'2022-08-14' AS Date), 3, CAST(33.600000 AS Decimal(18, 6)), CAST(6.048000 AS Decimal(18, 6)), CAST(39.648000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (28, N'OC0028', CAST(N'2022-08-18' AS Date), 5, CAST(88.600000 AS Decimal(18, 6)), CAST(15.948000 AS Decimal(18, 6)), CAST(104.548000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (29, N'OC0029', CAST(N'2022-08-22' AS Date), 2, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (30, N'OC0030', CAST(N'2022-08-29' AS Date), 5, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (31, N'OC0031', CAST(N'2022-09-01' AS Date), 1, CAST(47.700000 AS Decimal(18, 6)), CAST(8.586000 AS Decimal(18, 6)), CAST(56.286000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (32, N'OC0032', CAST(N'2022-09-05' AS Date), 4, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (33, N'OC0033', CAST(N'2022-09-14' AS Date), 3, CAST(33.600000 AS Decimal(18, 6)), CAST(6.048000 AS Decimal(18, 6)), CAST(39.648000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (34, N'OC0034', CAST(N'2022-09-18' AS Date), 5, CAST(223.400000 AS Decimal(18, 6)), CAST(40.212000 AS Decimal(18, 6)), CAST(263.612000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (35, N'OC0035', CAST(N'2022-09-22' AS Date), 2, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA] ([idOrdenCompra], [codigo], [fechaEmision], [idProveedor], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (36, N'OC0036', CAST(N'2022-09-29' AS Date), 5, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:52:57.503' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ORDEN_COMPRA] OFF
GO
SET IDENTITY_INSERT [dbo].[ORDEN_COMPRA_DETALLE] ON 

INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (1, 1, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (2, 1, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (3, 1, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (4, 1, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (5, 5, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (6, 5, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (7, 5, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (8, 5, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (9, 8, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (10, 8, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (11, 8, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (12, 8, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (13, 9, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (14, 9, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (15, 9, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (16, 9, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (17, 12, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (18, 12, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (19, 12, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (20, 12, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (21, 16, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (22, 16, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (23, 16, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (24, 16, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (25, 20, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (26, 20, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (27, 20, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (28, 20, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (29, 24, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (30, 24, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (31, 24, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (32, 24, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (33, 26, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (34, 26, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (35, 26, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (36, 26, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (37, 31, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (38, 31, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (39, 31, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (40, 31, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (41, 33, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (42, 33, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (43, 33, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (44, 33, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (45, 36, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (46, 36, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (47, 36, 5, CAST(21.000000 AS Decimal(18, 6)), CAST(12.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (48, 36, 6, CAST(30.000000 AS Decimal(18, 6)), CAST(15.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T17:59:40.050' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (49, 2, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (50, 2, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (51, 2, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (52, 4, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (53, 4, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (54, 4, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (55, 10, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (56, 10, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (57, 10, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (58, 14, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (59, 14, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (60, 14, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (61, 19, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (62, 19, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (63, 19, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (64, 21, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (65, 21, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (66, 21, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (67, 25, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (68, 25, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (69, 25, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (70, 29, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (71, 29, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (72, 29, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (73, 34, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (74, 34, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (75, 34, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (76, 35, 2, CAST(19.000000 AS Decimal(18, 6)), CAST(17.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (77, 35, 3, CAST(10.000000 AS Decimal(18, 6)), CAST(13.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (78, 35, 4, CAST(22.000000 AS Decimal(18, 6)), CAST(53.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:00:52.637' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (79, 3, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (80, 3, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (81, 3, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (82, 6, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (83, 6, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (84, 6, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (85, 7, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (86, 7, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (87, 7, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (88, 11, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (89, 11, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (90, 11, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (91, 13, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (92, 13, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (93, 13, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (94, 15, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (95, 15, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (96, 15, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (97, 17, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (98, 17, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (99, 17, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (100, 18, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (101, 18, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (102, 18, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (103, 22, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (104, 22, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (105, 22, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (106, 23, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (107, 23, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (108, 23, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (109, 27, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (110, 27, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (111, 27, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (112, 28, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (113, 28, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (114, 28, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (115, 30, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (116, 30, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (117, 30, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (118, 32, 1, CAST(18.000000 AS Decimal(18, 6)), CAST(39.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (119, 32, 7, CAST(22.000000 AS Decimal(18, 6)), CAST(30.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[ORDEN_COMPRA_DETALLE] ([idOrdenCompraDetalle], [idOrdenCompra], [idProducto], [precioUnitario], [cantidad], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (120, 32, 8, CAST(38.000000 AS Decimal(18, 6)), CAST(16.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T18:01:29.607' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ORDEN_COMPRA_DETALLE] OFF
GO
SET IDENTITY_INSERT [dbo].[PAIS] ON 

INSERT [dbo].[PAIS] ([idPais], [nombre], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (1, N'PERU', 1, 0, N'FPERALTA', CAST(N'2022-09-07T19:18:52.737' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PAIS] ([idPais], [nombre], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (2, N'COLOMBIA', 1, 0, N'FPERALTA', CAST(N'2022-09-07T19:18:52.737' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PAIS] OFF
GO
SET IDENTITY_INSERT [dbo].[PEDIDO_VENTA] ON 

INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (1, N'PV0001', CAST(N'2021-06-10' AS Date), 1, CAST(50.000000 AS Decimal(18, 6)), CAST(9.000000 AS Decimal(18, 6)), CAST(59.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (2, N'PV0002', CAST(N'2021-06-15' AS Date), 2, CAST(20.000000 AS Decimal(18, 6)), CAST(3.600000 AS Decimal(18, 6)), CAST(23.600000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (3, N'PV0003', CAST(N'2021-06-18' AS Date), 3, CAST(35.000000 AS Decimal(18, 6)), CAST(6.300000 AS Decimal(18, 6)), CAST(41.300000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (4, N'PV0004', CAST(N'2021-06-22' AS Date), 1, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (5, N'PV0005', CAST(N'2021-06-25' AS Date), 4, CAST(18.000000 AS Decimal(18, 6)), CAST(3.240000 AS Decimal(18, 6)), CAST(21.240000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (6, N'PV0006', CAST(N'2021-06-30' AS Date), 2, CAST(44.000000 AS Decimal(18, 6)), CAST(7.920000 AS Decimal(18, 6)), CAST(51.920000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (7, N'PV0007', CAST(N'2022-07-02' AS Date), 5, CAST(33.330000 AS Decimal(18, 6)), CAST(5.999400 AS Decimal(18, 6)), CAST(39.329400 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (8, N'PV0008', CAST(N'2022-07-08' AS Date), 3, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (9, N'PV0009', CAST(N'2022-07-08' AS Date), 4, CAST(50.000000 AS Decimal(18, 6)), CAST(9.000000 AS Decimal(18, 6)), CAST(59.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (10, N'PV0010', CAST(N'2022-07-12' AS Date), 1, CAST(33.600000 AS Decimal(18, 6)), CAST(6.048000 AS Decimal(18, 6)), CAST(39.648000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (11, N'PV0011', CAST(N'2022-07-12' AS Date), 2, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (12, N'PV0012', CAST(N'2022-07-15' AS Date), 2, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (13, N'PV0013', CAST(N'2022-08-04' AS Date), 4, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (14, N'PV0014', CAST(N'2022-08-09' AS Date), 1, CAST(50.000000 AS Decimal(18, 6)), CAST(9.000000 AS Decimal(18, 6)), CAST(59.000000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (15, N'PV0015', CAST(N'2022-08-11' AS Date), 5, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (16, N'PV0016', CAST(N'2022-08-13' AS Date), 3, CAST(69.900000 AS Decimal(18, 6)), CAST(12.582000 AS Decimal(18, 6)), CAST(82.482000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (17, N'PV0017', CAST(N'2022-08-24' AS Date), 2, CAST(55.550000 AS Decimal(18, 6)), CAST(9.999000 AS Decimal(18, 6)), CAST(65.549000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (18, N'PV0018', CAST(N'2022-08-28' AS Date), 4, CAST(88.600000 AS Decimal(18, 6)), CAST(15.948000 AS Decimal(18, 6)), CAST(104.548000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (19, N'PV0019', CAST(N'2022-09-01' AS Date), 1, CAST(47.700000 AS Decimal(18, 6)), CAST(8.586000 AS Decimal(18, 6)), CAST(56.286000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (20, N'PV0020', CAST(N'2022-09-05' AS Date), 4, CAST(110.300000 AS Decimal(18, 6)), CAST(19.854000 AS Decimal(18, 6)), CAST(130.154000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (21, N'PV0022', CAST(N'2022-09-14' AS Date), 3, CAST(33.600000 AS Decimal(18, 6)), CAST(6.048000 AS Decimal(18, 6)), CAST(39.648000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (22, N'PV0023', CAST(N'2022-09-18' AS Date), 5, CAST(88.600000 AS Decimal(18, 6)), CAST(15.948000 AS Decimal(18, 6)), CAST(104.548000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (23, N'PV0024', CAST(N'2022-09-22' AS Date), 2, CAST(22.500000 AS Decimal(18, 6)), CAST(4.050000 AS Decimal(18, 6)), CAST(26.550000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PEDIDO_VENTA] ([idPedidoVenta], [codigo], [fechaEmision], [idCliente], [subtotal], [igv], [total], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (24, N'PV0025', CAST(N'2022-09-28' AS Date), 5, CAST(44.250000 AS Decimal(18, 6)), CAST(7.965000 AS Decimal(18, 6)), CAST(52.215000 AS Decimal(18, 6)), 1, 0, N'FPERALTA', CAST(N'2022-09-28T19:53:20.530' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PEDIDO_VENTA] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCTO] ON 

INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (1, 3, N'BATERIA 925 CCA TRP', CAST(18.00 AS Decimal(18, 2)), 39, 1, 0, N'FPERALTA', CAST(N'2022-09-14T18:53:08.623' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (2, 1, N'BATERIA MOTORED 1000 AMPERIOS', CAST(19.00 AS Decimal(18, 2)), 17, 1, 0, N'FPERALTA', CAST(N'2022-09-14T18:53:08.623' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (3, 2, N'FILTRO AF1968M (AIRE)', CAST(10.00 AS Decimal(18, 2)), 13, 1, 0, N'FPERALTA', CAST(N'2022-09-14T18:53:08.623' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (4, 2, N'FILTRO FS1007 (COMBUSTIBLE)', CAST(22.00 AS Decimal(18, 2)), 53, 1, 0, N'FPERALTA', CAST(N'2022-09-14T18:53:08.623' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (5, 2, N'FILTRO LF -750D (ACEITE )', CAST(21.00 AS Decimal(18, 2)), 12, 1, 0, N'FPERALTA', CAST(N'2022-09-14T18:53:08.623' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (6, 3, N'LLANTA 245/65 R17 MICHELIN', CAST(30.00 AS Decimal(18, 2)), 15, 1, 0, N'FPERALTA', CAST(N'2022-09-14T18:53:08.623' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (7, 4, N'REENCAUCHADA 295/80R22.5 BRIDGESTONE', CAST(22.00 AS Decimal(18, 2)), 30, 1, 0, N'FPERALTA', CAST(N'2022-09-14T18:53:08.623' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (8, 4, N'REENCAUCHADA 425/65 R22.5 MICHELIN', CAST(38.00 AS Decimal(18, 2)), 16, 1, 0, N'FPERALTA', CAST(N'2022-09-14T18:53:08.623' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (24, 1, N'ds@ds', CAST(23.33 AS Decimal(18, 2)), 5, 1, 0, N'REGISTRADO', CAST(N'2022-10-05T23:01:41.587' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (25, 1, N'ds@d2', CAST(23.33 AS Decimal(18, 2)), 5, 1, 0, N'REGISTRADO', CAST(N'2022-10-05T23:02:19.693' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (26, 1, N'ds@d3', CAST(8.00 AS Decimal(18, 2)), 6, 1, 0, N'REGISTRADO', CAST(N'2022-10-05T23:02:38.460' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (27, 3, N'Llanta 01', CAST(5.00 AS Decimal(18, 2)), 6, 1, 1, N'ADMIN ', CAST(N'2022-10-19T20:29:05.723' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PRODUCTO] ([idProducto], [idCategoria], [nombreProducto], [precioUnitario], [stock], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (28, 3, N'Llanta 02', CAST(100.00 AS Decimal(18, 2)), 10, 1, 0, N'ADMIN ', CAST(N'2022-10-19T20:30:10.730' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PRODUCTO] OFF
GO
SET IDENTITY_INSERT [dbo].[PROVEEDOR] ON 

INSERT [dbo].[PROVEEDOR] ([idProveedor], [razonSocial], [direccion], [telefono], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (1, N'Bolsas del Norte S.A.C.', N'AV. GUILLERMO DANSEY NRO. 471 INT. B LIMA - LIMA - LIMA', N'6193838', 1, 1, 0, N'ADMIN', CAST(N'2022-09-28T17:49:27.780' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PROVEEDOR] ([idProveedor], [razonSocial], [direccion], [telefono], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (2, N'DECTRONIC E.I.R.L.', N'JR. AZANGARO 1020 LIMA / AV. GUILLERMO DANSEY 481 INT. 121 - 122', N'4268284', 1, 1, 0, N'ADMIN', CAST(N'2022-09-28T17:49:27.780' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PROVEEDOR] ([idProveedor], [razonSocial], [direccion], [telefono], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (3, N'DIANA IMPORT EIRL', N'AV. REPUBLICA DE ARGENTINA NRO. 327 INT. E1-7 URB. LIMA INDUSTRIAL LIMA - LIMA - LIMA', N'3393462', 1, 1, 0, N'ADMIN', CAST(N'2022-09-28T17:49:27.780' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PROVEEDOR] ([idProveedor], [razonSocial], [direccion], [telefono], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (4, N'ELIQUATEC EIRL', N'JR. SANTIAGO CARDENAS NRO. 270 URB. BALCONCILLO (ALT CDRA 5 AV CANADA PQUE LA HUACA) LIMA - LIMA - LA VICTORIA', N'4722663', 2, 1, 0, N'ADMIN', CAST(N'2022-09-28T17:49:27.780' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[PROVEEDOR] ([idProveedor], [razonSocial], [direccion], [telefono], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (5, N'FIRTS HIDRAULIC SAC', N'AV. MARISCAL OSCAR R. BENAVIDES NRO. 206 INT. 2014 URB. LIMA INDUSTRIAL (CENTRO COMERC. PLAZA FERRETERO 2DO PISO) LIMA - LIMA - LIMA', N'986782930', 2, 1, 0, N'ADMIN', CAST(N'2022-09-28T17:49:27.780' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PROVEEDOR] OFF
GO
SET IDENTITY_INSERT [dbo].[SUPERVISOR] ON 

INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (1, N'FABIO ALEJANDRO', N'PERALTA MEDINA', N'CALLE 9 DE OCTUBRE 644', N'fperalta@gmail.com', 1, 1, 0, N'FPERALTA', CAST(N'2022-09-22T01:21:51.210' AS DateTime), N'ADMINISTRADOR', CAST(N'2022-10-19T19:59:14.910' AS DateTime), NULL, NULL)
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (2, N'RICARDO ANTONY', N'ASMAT MARINES', N'AV. PEDRO MUÑIZ 233', N'rasmat@gmail.com', 1, 1, 0, N'FPERALTA', CAST(N'2022-09-22T01:21:51.210' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (3, N'KEVIN', N'ESPEJO ALAYO', N'AV. LARCO 488', N'kespejo@gmail.com', 1, 1, 0, N'FPERALTA', CAST(N'2022-09-22T01:21:51.210' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (4, N'JUAN CARLOS', N'CARDENAS ROJAS', N'CALLE MAGNOLIAS 289', N'jcardenas@gmail.com', 2, 1, 0, N'FPERALTA', CAST(N'2022-09-22T01:21:51.210' AS DateTime), N'ADMINISTRADOR', CAST(N'2022-09-22T03:43:50.913' AS DateTime), NULL, NULL)
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (5, N'Maria', N'Alvarado', N'calle 9 de octubre', N'aalvarez@GMAIL.COM', 1, 1, 0, N'ADMINISTRADOR', CAST(N'2022-09-22T02:55:51.383' AS DateTime), N'ADMINISTRADOR', CAST(N'2022-09-22T03:38:21.090' AS DateTime), NULL, NULL)
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (6, N'Rosa', N'Alvarado', NULL, N'design@extech.pe', 1, 1, 0, N'ADMINISTRADOR', CAST(N'2022-09-22T02:57:24.760' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (7, N'Maria', N'Alvarado', N'calle 9 de octubre', N'aalvarez@GMAIL.COM', 1, 1, 0, N'ADMINISTRADOR', CAST(N'2022-09-22T03:00:14.840' AS DateTime), N'ADMINISTRADOR', CAST(N'2022-09-22T03:38:09.743' AS DateTime), NULL, NULL)
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (8, N'Rosa', N'Alvarado', N'calle 9 de octubre', N'ralvarado@gmail.com', 1, 1, 0, N'ADMINISTRADOR', CAST(N'2022-09-22T03:05:45.873' AS DateTime), N'ADMINISTRADOR', CAST(N'2022-09-22T03:31:27.240' AS DateTime), NULL, NULL)
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (9, N'Rosa', N'Alvarado', N'calle 9 de octubre', N'fabio.peralta@extech.pe', 2, 1, 0, N'ADMINISTRADOR', CAST(N'2022-09-22T03:06:06.480' AS DateTime), N'ADMINISTRADOR', CAST(N'2022-09-22T03:34:18.133' AS DateTime), NULL, NULL)
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (10, N'Maria', N'Alvarado', N'calle 9 de octubre', N'aalvarez@GMAIL.COM', 1, 1, 0, N'ADMINISTRADOR', CAST(N'2022-09-22T03:37:25.127' AS DateTime), N'ADMINISTRADOR', CAST(N'2022-09-22T03:37:57.400' AS DateTime), NULL, NULL)
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (11, N'das', N'das', N'das', N'dsa@gmail.com', 1, 1, 0, N'ADMINISTRADOR', CAST(N'2022-09-28T22:11:54.630' AS DateTime), N'ADMINISTRADOR', CAST(N'2022-10-19T19:59:18.333' AS DateTime), NULL, NULL)
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (12, N'das', N'das', N'dsa', N'das@gmail.com', 1, 1, 0, N'ADMINISTRADOR', CAST(N'2022-09-28T22:14:05.293' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[SUPERVISOR] ([idSupervisor], [nombre], [apellidos], [direccion], [email], [idPais], [activo], [eliminado], [usuarioRegistro], [fechaRegistro], [usuarioModificacion], [fechaModificacion], [usuarioEliminacion], [fechaEliminacion]) VALUES (13, N'Fabio', N'das', N'dsa', N'das@gmail.com', 1, 1, 0, N'ADMINISTRADOR', CAST(N'2022-09-28T22:14:50.360' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SUPERVISOR] OFF
GO
ALTER TABLE [dbo].[CATEGORIA] ADD  CONSTRAINT [DF_CATEGORIA_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[CATEGORIA] ADD  CONSTRAINT [DF_CATEGORIA_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[CATEGORIA_CLIENTE] ADD  CONSTRAINT [DF_CATEGORIA_CLIENTE_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[CATEGORIA_CLIENTE] ADD  CONSTRAINT [DF_CATEGORIA_CLIENTE_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[CLIENTE] ADD  CONSTRAINT [DF_CLIENTE_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[CLIENTE] ADD  CONSTRAINT [DF_CLIENTE_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[FACTURA] ADD  CONSTRAINT [DF_FACTURA_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[FACTURA] ADD  CONSTRAINT [DF_FACTURA_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[FACTURA_DETALLE] ADD  CONSTRAINT [DF_FACTURA_DETALLE_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[FACTURA_DETALLE] ADD  CONSTRAINT [DF_FACTURA_DETALLE_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[ORDEN_COMPRA] ADD  CONSTRAINT [DF_ORDEN_COMPRA_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[ORDEN_COMPRA] ADD  CONSTRAINT [DF_ORDEN_COMPRA_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[ORDEN_COMPRA_DETALLE] ADD  CONSTRAINT [DF_ORDEN_COMPRA_DETALLE_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[ORDEN_COMPRA_DETALLE] ADD  CONSTRAINT [DF_ORDEN_COMPRA_DETALLE_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[PAIS] ADD  CONSTRAINT [DF_PAIS_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[PAIS] ADD  CONSTRAINT [DF_PAIS_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[PEDIDO_VENTA] ADD  CONSTRAINT [DF_PEDIDO_VENTA1_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[PEDIDO_VENTA] ADD  CONSTRAINT [DF_PEDIDO_VENTA1_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[PEDIDO_VENTA_DETALLE] ADD  CONSTRAINT [DF_PEDIDO_VENTA_DETALLE_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[PEDIDO_VENTA_DETALLE] ADD  CONSTRAINT [DF_PEDIDO_VENTA_DETALLE_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[PRODUCTO] ADD  CONSTRAINT [DF_PRODUCTO_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[PRODUCTO] ADD  CONSTRAINT [DF_PRODUCTO_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[PROVEEDOR] ADD  CONSTRAINT [DF_PROVEEDOR_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[PROVEEDOR] ADD  CONSTRAINT [DF_PROVEEDOR_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[SUPERVISOR] ADD  CONSTRAINT [DF_SUPERVISOR_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[SUPERVISOR] ADD  CONSTRAINT [DF_SUPERVISOR_eliminado]  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [CLIENTE_CATEGORIA_CLIENTE] FOREIGN KEY([idCategoriaCliente])
REFERENCES [dbo].[CATEGORIA_CLIENTE] ([idCategoriaCliente])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [CLIENTE_CATEGORIA_CLIENTE]
GO
ALTER TABLE [dbo].[FACTURA]  WITH CHECK ADD  CONSTRAINT [FACTURA_CLIENTE] FOREIGN KEY([idCliente])
REFERENCES [dbo].[CLIENTE] ([idCliente])
GO
ALTER TABLE [dbo].[FACTURA] CHECK CONSTRAINT [FACTURA_CLIENTE]
GO
ALTER TABLE [dbo].[FACTURA_DETALLE]  WITH CHECK ADD  CONSTRAINT [FACTURA_DETALLE_FACTURA] FOREIGN KEY([idFactura])
REFERENCES [dbo].[FACTURA] ([idFactura])
GO
ALTER TABLE [dbo].[FACTURA_DETALLE] CHECK CONSTRAINT [FACTURA_DETALLE_FACTURA]
GO
ALTER TABLE [dbo].[FACTURA_DETALLE]  WITH CHECK ADD  CONSTRAINT [FACTURA_DETALLE_PRODUCTO] FOREIGN KEY([idProducto])
REFERENCES [dbo].[PRODUCTO] ([idProducto])
GO
ALTER TABLE [dbo].[FACTURA_DETALLE] CHECK CONSTRAINT [FACTURA_DETALLE_PRODUCTO]
GO
ALTER TABLE [dbo].[ORDEN_COMPRA]  WITH CHECK ADD  CONSTRAINT [ORDEN_COMPRA_PROVEEDOR] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[PROVEEDOR] ([idProveedor])
GO
ALTER TABLE [dbo].[ORDEN_COMPRA] CHECK CONSTRAINT [ORDEN_COMPRA_PROVEEDOR]
GO
ALTER TABLE [dbo].[ORDEN_COMPRA_DETALLE]  WITH CHECK ADD  CONSTRAINT [ORDEN_COMPRA_DETALLE_ORDEN_COMPRA] FOREIGN KEY([idOrdenCompra])
REFERENCES [dbo].[ORDEN_COMPRA] ([idOrdenCompra])
GO
ALTER TABLE [dbo].[ORDEN_COMPRA_DETALLE] CHECK CONSTRAINT [ORDEN_COMPRA_DETALLE_ORDEN_COMPRA]
GO
ALTER TABLE [dbo].[ORDEN_COMPRA_DETALLE]  WITH CHECK ADD  CONSTRAINT [ORDEN_COMPRA_DETALLE_PRODUCTO] FOREIGN KEY([idProducto])
REFERENCES [dbo].[PRODUCTO] ([idProducto])
GO
ALTER TABLE [dbo].[ORDEN_COMPRA_DETALLE] CHECK CONSTRAINT [ORDEN_COMPRA_DETALLE_PRODUCTO]
GO
ALTER TABLE [dbo].[PEDIDO_VENTA]  WITH CHECK ADD  CONSTRAINT [PEDIDO_VENTA_CLIENTE] FOREIGN KEY([idCliente])
REFERENCES [dbo].[CLIENTE] ([idCliente])
GO
ALTER TABLE [dbo].[PEDIDO_VENTA] CHECK CONSTRAINT [PEDIDO_VENTA_CLIENTE]
GO
ALTER TABLE [dbo].[PEDIDO_VENTA_DETALLE]  WITH CHECK ADD  CONSTRAINT [PEDIDO_VENTA_DETALLE_PEDIDO_VENTA] FOREIGN KEY([idPedidoVenta])
REFERENCES [dbo].[PEDIDO_VENTA] ([idPedidoVenta])
GO
ALTER TABLE [dbo].[PEDIDO_VENTA_DETALLE] CHECK CONSTRAINT [PEDIDO_VENTA_DETALLE_PEDIDO_VENTA]
GO
ALTER TABLE [dbo].[PEDIDO_VENTA_DETALLE]  WITH CHECK ADD  CONSTRAINT [PEDIDO_VENTA_DETALLE_PRODUCTO] FOREIGN KEY([idProducto])
REFERENCES [dbo].[PRODUCTO] ([idProducto])
GO
ALTER TABLE [dbo].[PEDIDO_VENTA_DETALLE] CHECK CONSTRAINT [PEDIDO_VENTA_DETALLE_PRODUCTO]
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [PRODUCTO_CATEGORIA] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[CATEGORIA] ([idCategoria])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [PRODUCTO_CATEGORIA]
GO
ALTER TABLE [dbo].[PROVEEDOR]  WITH CHECK ADD  CONSTRAINT [PROVEEDOR_PAIS] FOREIGN KEY([idPais])
REFERENCES [dbo].[PAIS] ([idPais])
GO
ALTER TABLE [dbo].[PROVEEDOR] CHECK CONSTRAINT [PROVEEDOR_PAIS]
GO



ALTER PROCEDURE sp_GetProveedores
AS
BEGIN

	SELECT 
		oc.idOrdenCompra, oc.codigo, oc.fechaEmision, Pa.idProveedor, PA.razonSocial , oc.total  AS total
	FROM ORDEN_COMPRA oc
	INNER JOIN PROVEEDOR PA ON PA.idProveedor = oc.idOrdenCompra

END
GO

EXEC sp_GetProveedores

ALTER PROCEDURE sp_GetComprasByFechasProveedor  
  @prmdatFechaInicio DATETIME,
  @prmdatFechaFin DATETIME,
  @prmintIdProveedor int

AS
BEGIN
		SELECT oc.idOrdenCompra, oc.codigo, oc.fechaEmision, PA.idProveedor, PA.razonSocial , oc.total  AS total
	FROM ORDEN_COMPRA oc
	INNER JOIN PROVEEDOR PA ON PA.idProveedor = oc.idProveedor
	WHERE  oc.fechaEmision BETWEEN  @prmdatFechaInicio AND  @prmdatFechaFin AND @prmintIdProveedor=  PA.idProveedor
END
GO 

EXEC sp_GetComprasByFechasProveedor  '2022-06-01', '2022-11-05',1




CREATE PROC sp_GetProductos
AS
BEGIN 
	SELECT P.idProducto, C.nombreCategoria AS nombreCategoria, P.nombreProducto, 
	P.precioUnitario, P.Stock

	FROM PRODUCTO P
	INNER JOIN CATEGORIA C ON C.idCategoria = P.idCategoria
END 
GO 

EXEC sp_GetProductos

CREATE PROC sp_GetCategorias 
AS
BEGIN
	SELECT idCategoria, nombreCategoria FROM CATEGORIA
END
GO 
EXEC sp_GetCategorias 

ALTER PROC sp_InsertProducto
	@prmstridCategoria int,
	@prmstrnombreProducto varchar(150),
	@prmstrprecioUnitario decimal(18,2),
	@prmintrStock int

AS
BEGIN 
	INSERT INTO PRODUCTO (idCategoria, nombreProducto, precioUnitario, stock,
		activo,eliminado,usuarioRegistro,fechaRegistro)
		VALUES(@prmstridCategoria,@prmstrnombreProducto, @prmstrprecioUnitario, @prmintrStock,
		1, 0, 'FPERALTA', GETDATE()
	)
END
GO 


CREATE PROC sp_UpdateProducto 
	@prmstridProducto int,
	@prmstridcategoria int,
	@prmstrnombreProducto varchar(150),
	@prmstrprecioUnitario decimal(18,2),
	@prmintrStock int

AS
BEGIN 
	UPDATE PRODUCTO
	SET
		 idCategoria = @prmstridcategoria,
		 nombreProducto = @prmstrnombreProducto,
		 precioUnitario = @prmstrprecioUnitario,
		 stock = @prmintrStock

		 WHERE idProducto = @prmstridProducto
END
GO 

CREATE PROC sp_DeleteProducto

	@prmstridProducto int
AS
BEGIN 
	DELETE FROM PRODUCTO WHERE idProducto = @prmstridProducto
END 
GO 
