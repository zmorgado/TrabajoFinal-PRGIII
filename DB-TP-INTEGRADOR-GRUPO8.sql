USE [master]
GO
/****** Object:  Database [RELOJESDUARTE]    Script Date: 5/7/2021 03:35:32 ******/
CREATE DATABASE [RELOJESDUARTE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RELOJESDUARTE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\RELOJESDUARTE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RELOJESDUARTE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\RELOJESDUARTE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [RELOJESDUARTE] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RELOJESDUARTE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RELOJESDUARTE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET ARITHABORT OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RELOJESDUARTE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RELOJESDUARTE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RELOJESDUARTE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RELOJESDUARTE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RELOJESDUARTE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RELOJESDUARTE] SET  MULTI_USER 
GO
ALTER DATABASE [RELOJESDUARTE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RELOJESDUARTE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RELOJESDUARTE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RELOJESDUARTE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RELOJESDUARTE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RELOJESDUARTE] SET QUERY_STORE = OFF
GO
USE [RELOJESDUARTE]
GO
/****** Object:  Table [dbo].[ADMINISTRADOR]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMINISTRADOR](
	[IDAdmin_A] [varchar](10) NOT NULL,
	[Contraseña_A] [varchar](20) NOT NULL,
	[Nombre_A] [varchar](20) NOT NULL,
	[Apellido_A] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ADMINISTRADOR] PRIMARY KEY CLUSTERED 
(
	[IDAdmin_A] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARTICULOS]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARTICULOS](
	[CodArticulo_Art] [char](5) NOT NULL,
	[IDCategoria_Art] [char](5) NOT NULL,
	[Descripcion_Art] [varchar](60) NULL,
	[Stock_Art] [int] NOT NULL,
	[Precio_Art] [money] NOT NULL,
	[Imagen_Art] [varchar](200) NULL,
 CONSTRAINT [PK_ARTICULOS] PRIMARY KEY CLUSTERED 
(
	[CodArticulo_Art] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORIAS]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIAS](
	[IDCategoria_Cat] [char](5) NOT NULL,
	[Nombre_Cat] [varchar](20) NOT NULL,
	[Descripcion_Cat] [varchar](60) NULL,
	[Imagen_Cat] [varchar](200) NULL,
 CONSTRAINT [PK_CATEGORIAS] PRIMARY KEY CLUSTERED 
(
	[IDCategoria_Cat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavoritosXUsuario]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoritosXUsuario](
	[CodArt_FxU] [char](5) NOT NULL,
	[NombreUsuario_FxU] [varchar](20) NOT NULL,
 CONSTRAINT [PK_FavoritosXUsuario] PRIMARY KEY CLUSTERED 
(
	[NombreUsuario_FxU] ASC,
	[CodArt_FxU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[NombreUsuario_U] [varchar](20) NOT NULL,
	[Contraseña_U] [varchar](20) NOT NULL,
	[Nombre_U] [varchar](20) NOT NULL,
	[Apellido_U] [varchar](20) NOT NULL,
	[Email_U] [varchar](30) NULL,
	[Telefono_U] [varchar](20) NOT NULL,
 CONSTRAINT [PK_USUARIOS] PRIMARY KEY CLUSTERED 
(
	[NombreUsuario_U] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ARTICULOS]  WITH CHECK ADD  CONSTRAINT [FK_ARTICULOS] FOREIGN KEY([IDCategoria_Art])
REFERENCES [dbo].[CATEGORIAS] ([IDCategoria_Cat])
GO
ALTER TABLE [dbo].[ARTICULOS] CHECK CONSTRAINT [FK_ARTICULOS]
GO
ALTER TABLE [dbo].[FavoritosXUsuario]  WITH CHECK ADD  CONSTRAINT [FK_FavoritosXUsuario_Articulos] FOREIGN KEY([CodArt_FxU])
REFERENCES [dbo].[ARTICULOS] ([CodArticulo_Art])
GO
ALTER TABLE [dbo].[FavoritosXUsuario] CHECK CONSTRAINT [FK_FavoritosXUsuario_Articulos]
GO
ALTER TABLE [dbo].[FavoritosXUsuario]  WITH CHECK ADD  CONSTRAINT [FK_FavoritosXUsuario_Usuarios] FOREIGN KEY([NombreUsuario_FxU])
REFERENCES [dbo].[USUARIOS] ([NombreUsuario_U])
GO
ALTER TABLE [dbo].[FavoritosXUsuario] CHECK CONSTRAINT [FK_FavoritosXUsuario_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarArticulo]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ActualizarArticulo]
	@NroArticulo char(5),
	@IdCategoria char(5),
	@Descripcion varchar(50),
	@Stock       int,
	@Precio      money,
	@Imagen      varchar(200)
	AS
	UPDATE ARTICULOS
	SET  
		 CodArticulo_Art = @NroArticulo,
		 IDCategoria_Art = @IdCategoria,
		 Descripcion_Art = @Descripcion,
		 Stock_Art = @Stock,
		 Precio_Art = @Precio,
		 Imagen_Art = @Imagen
	WHERE  CodArticulo_Art = @NroArticulo
GO
/****** Object:  StoredProcedure [dbo].[SP_AgregarAdministrador]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_AgregarAdministrador]
	@Nombre varchar (20),
	@Apellido varchar (20),
	@Contraseña varchar (20),
	@IdAdmin varchar (10)
	AS
	INSERT INTO ADMINISTRADOR (Nombre_A, Apellido_A, Contraseña_A, IDAdmin_A)
	SELECT @Nombre, @Apellido, @Contraseña, @IdAdmin
GO
/****** Object:  StoredProcedure [dbo].[SP_AgregarArticulo]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_AgregarArticulo]

	@NroArticulo char(5),
	@IdCategoria char(5),
	@Descripcion varchar(50),
	@Stock       int,
	@Precio      money,
	@Imagen      varchar(200)
	AS
	INSERT INTO ARTICULOS (CodArticulo_Art, IDCategoria_Art, Descripcion_Art, Stock_Art, Precio_Art, Imagen_Art)
	VALUES (@NroArticulo, @IdCategoria, @Descripcion, @Stock, @Precio, @Imagen)
GO
/****** Object:  StoredProcedure [dbo].[SP_AgregarFavoritos]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AgregarFavoritos]
@usuario varchar(20),
@codigo char(5) as

INSERT INTO FavoritosXUsuario(CodArt_FxU,NombreUsuario_FxU)
	VALUES (@codigo, @usuario)
GO
/****** Object:  StoredProcedure [dbo].[SP_AgregarUsuario]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_AgregarUsuario]

	@Usuario varchar(20),
	@Contrasenia varchar(20),
	@Nombre varchar(20),
	@Apellido varchar(20),
	@Mail varchar(30),
	@Telefono varchar(20)
	AS
	insert into Usuarios(NombreUsuario_U, Contraseña_U, Nombre_U, Apellido_U, Email_U, Telefono_U) 
	values (@Usuario, @Contrasenia, @Nombre, @Apellido, @Mail, @Telefono)
GO
/****** Object:  StoredProcedure [dbo].[SP_ConseguirFavoritos]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ConseguirFavoritos]
@User varchar(20) as
SELECT[CodArticulo_Art], [Descripcion_Art], [Precio_Art], [Imagen_Art] FROM[ARTICULOS] inner join FavoritosXUsuario on FavoritosXUsuario.NombreUsuario_FxU = @user and FavoritosXUsuario.CodArt_FxU = ARTICULOS.CodArticulo_Art
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarArticulo]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EliminarArticulo]
	@NroArticulo char(5)
	AS
	DELETE FROM ARTICULOS WHERE CodArticulo_Art = @NroArticulo
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarFavoritos]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_EliminarFavoritos]
@usuario varchar(20),
@codigo char(5) as
delete from FavoritosXUsuario where NombreUsuario_FxU=@usuario and CodArt_FxU=@codigo
GO
/****** Object:  StoredProcedure [dbo].[SP_ValidarAdmin]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ValidarAdmin]
@Usuario varchar(10),
@Contrasenia varchar(20)
AS
select*from ADMINISTRADOR where IDAdmin_A=@Usuario and Contraseña_A=@Contrasenia
GO
/****** Object:  StoredProcedure [dbo].[SP_ValidarUsuario]    Script Date: 5/7/2021 03:35:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ValidarUsuario]
@Usuario varchar(20),
@Contrasenia varchar(20)
AS
select*from Usuarios where NombreUsuario_U=@Usuario and Contraseña_U=@Contrasenia
GO
USE [master]
GO
ALTER DATABASE [RELOJESDUARTE] SET  READ_WRITE 
GO
