USE [master]
GO
/****** Object:  Database [MiMusicaPreferida]    Script Date: 09/11/2016 18:45:21 ******/
CREATE DATABASE [MiMusicaPreferida]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MiMusicaPreferida', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MiMusicaPreferida.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MiMusicaPreferida_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MiMusicaPreferida_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MiMusicaPreferida] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MiMusicaPreferida].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MiMusicaPreferida] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET ARITHABORT OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MiMusicaPreferida] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MiMusicaPreferida] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MiMusicaPreferida] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MiMusicaPreferida] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MiMusicaPreferida] SET  MULTI_USER 
GO
ALTER DATABASE [MiMusicaPreferida] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MiMusicaPreferida] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MiMusicaPreferida] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MiMusicaPreferida] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MiMusicaPreferida] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MiMusicaPreferida]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 09/11/2016 18:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Album](
	[IdAlbum] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[FechaDeEmision] [date] NULL,
	[Portada] [varchar](max) NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[IdAlbum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComentarioMusica]    Script Date: 09/11/2016 18:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComentarioMusica](
	[IdComentarioM] [int] NULL,
	[Comentario] [varchar](max) NULL,
	[Nombre] [varchar](50) NULL,
	[IdMusica] [int] NULL,
	[FechaDeCreacion] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComentariosAlbum]    Script Date: 09/11/2016 18:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComentariosAlbum](
	[IdComentarioA] [int] NOT NULL,
	[Comentario] [varchar](max) NULL,
	[Nombre] [varchar](50) NULL,
	[IdAlbum] [int] NULL,
	[FechaDeCracion] [date] NULL,
 CONSTRAINT [PK_ComentariosAlbum] PRIMARY KEY CLUSTERED 
(
	[IdComentarioA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 09/11/2016 18:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genero](
	[IdGenero] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[IdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GenerosGrupos]    Script Date: 09/11/2016 18:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenerosGrupos](
	[IdGrupo] [int] NOT NULL,
	[IdGenero] [int] NOT NULL,
 CONSTRAINT [PK_GenerosGrupos] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC,
	[IdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 09/11/2016 18:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupo](
	[IdGrupo] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Formacion] [date] NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Musica]    Script Date: 09/11/2016 18:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Musica](
	[IdMusica] [int] NOT NULL,
	[Titulo] [varchar](50) NULL,
	[NumeroPista] [int] NULL,
	[duracion] [int] NULL,
	[IdAlbum] [int] NULL,
	[IdGenero] [int] NULL,
 CONSTRAINT [PK_Musica] PRIMARY KEY CLUSTERED 
(
	[IdMusica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MusicaMusico]    Script Date: 09/11/2016 18:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusicaMusico](
	[IdMusica] [int] NOT NULL,
	[IdMusico] [int] NOT NULL,
 CONSTRAINT [PK_MusicaMusico] PRIMARY KEY CLUSTERED 
(
	[IdMusica] ASC,
	[IdMusico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Musico]    Script Date: 09/11/2016 18:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Musico](
	[IdMusico] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[LugarDeNacimiento] [varchar](50) NULL,
	[FechaDeNacimiento] [date] NULL,
	[FechaDeMuerte] [date] NULL,
	[UrlDeYouTube] [varchar](max) NULL,
 CONSTRAINT [PK_Musico] PRIMARY KEY CLUSTERED 
(
	[IdMusico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MusicosGrupos]    Script Date: 09/11/2016 18:45:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusicosGrupos](
	[IdGrupo] [int] NOT NULL,
	[IdMusico] [int] NOT NULL,
 CONSTRAINT [PK_MusicosGrupos] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC,
	[IdMusico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ComentarioMusica]  WITH CHECK ADD  CONSTRAINT [FK_ComentarioMusica_Musica] FOREIGN KEY([IdMusica])
REFERENCES [dbo].[Musica] ([IdMusica])
GO
ALTER TABLE [dbo].[ComentarioMusica] CHECK CONSTRAINT [FK_ComentarioMusica_Musica]
GO
ALTER TABLE [dbo].[ComentariosAlbum]  WITH CHECK ADD  CONSTRAINT [FK_ComentariosAlbum_Album] FOREIGN KEY([IdAlbum])
REFERENCES [dbo].[Album] ([IdAlbum])
GO
ALTER TABLE [dbo].[ComentariosAlbum] CHECK CONSTRAINT [FK_ComentariosAlbum_Album]
GO
ALTER TABLE [dbo].[GenerosGrupos]  WITH CHECK ADD  CONSTRAINT [FK_GenerosGrupos_Genero] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Genero] ([IdGenero])
GO
ALTER TABLE [dbo].[GenerosGrupos] CHECK CONSTRAINT [FK_GenerosGrupos_Genero]
GO
ALTER TABLE [dbo].[GenerosGrupos]  WITH CHECK ADD  CONSTRAINT [FK_GenerosGrupos_Grupo] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[Grupo] ([IdGrupo])
GO
ALTER TABLE [dbo].[GenerosGrupos] CHECK CONSTRAINT [FK_GenerosGrupos_Grupo]
GO
ALTER TABLE [dbo].[Musica]  WITH CHECK ADD  CONSTRAINT [FK_Musica_Album] FOREIGN KEY([IdAlbum])
REFERENCES [dbo].[Album] ([IdAlbum])
GO
ALTER TABLE [dbo].[Musica] CHECK CONSTRAINT [FK_Musica_Album]
GO
ALTER TABLE [dbo].[Musica]  WITH CHECK ADD  CONSTRAINT [FK_Musica_Genero] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Genero] ([IdGenero])
GO
ALTER TABLE [dbo].[Musica] CHECK CONSTRAINT [FK_Musica_Genero]
GO
ALTER TABLE [dbo].[MusicaMusico]  WITH CHECK ADD  CONSTRAINT [FK_MusicaMusico_Musica] FOREIGN KEY([IdMusica])
REFERENCES [dbo].[Musica] ([IdMusica])
GO
ALTER TABLE [dbo].[MusicaMusico] CHECK CONSTRAINT [FK_MusicaMusico_Musica]
GO
ALTER TABLE [dbo].[MusicaMusico]  WITH CHECK ADD  CONSTRAINT [FK_MusicaMusico_Musico] FOREIGN KEY([IdMusico])
REFERENCES [dbo].[Musico] ([IdMusico])
GO
ALTER TABLE [dbo].[MusicaMusico] CHECK CONSTRAINT [FK_MusicaMusico_Musico]
GO
ALTER TABLE [dbo].[MusicosGrupos]  WITH CHECK ADD  CONSTRAINT [FK_MusicosGrupos_Grupo] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[Grupo] ([IdGrupo])
GO
ALTER TABLE [dbo].[MusicosGrupos] CHECK CONSTRAINT [FK_MusicosGrupos_Grupo]
GO
ALTER TABLE [dbo].[MusicosGrupos]  WITH CHECK ADD  CONSTRAINT [FK_MusicosGrupos_Musico] FOREIGN KEY([IdMusico])
REFERENCES [dbo].[Musico] ([IdMusico])
GO
ALTER TABLE [dbo].[MusicosGrupos] CHECK CONSTRAINT [FK_MusicosGrupos_Musico]
GO
USE [master]
GO
ALTER DATABASE [MiMusicaPreferida] SET  READ_WRITE 
GO
