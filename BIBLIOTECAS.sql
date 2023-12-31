USE [Biblioteca]
GO
/****** Object:  Table [dbo].[atualizacao]    Script Date: 26/10/2023 20:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[atualizacao](
	[idAtualizacao] [int] NOT NULL,
	[DataCadastro] [datetime] NOT NULL,
	[AtualizacaoCadastro] [date] NOT NULL,
	[PrevisãoAtualizacao] [date] NOT NULL,
	[Atualizado] [tinyint] NOT NULL,
	[IdDescUsuario] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idAtualizacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[debito]    Script Date: 26/10/2023 20:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[debito](
	[idUsuario] [int] NOT NULL,
	[DataDevPrevista] [datetime] NOT NULL,
	[DataDevEfetiva] [datetime] NOT NULL,
	[DiasAtraso] [int] NOT NULL,
	[Valor] [float] NULL,
	[CasoAtraso] [int] NOT NULL,
	[ValorDia] [float] NOT NULL,
	[idLivra] [int] NOT NULL,
	[DebitoCadastro] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[descusuario]    Script Date: 26/10/2023 20:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[descusuario](
	[idDescUsuario] [int] NOT NULL,
	[DescUsuario] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idDescUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[formato]    Script Date: 26/10/2023 20:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formato](
	[idFormato] [int] NOT NULL,
	[DescFormato] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idFormato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[livros]    Script Date: 26/10/2023 20:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[livros](
	[idLivros] [int] NOT NULL,
	[NomeLivro] [text] NOT NULL,
	[idBiblioteca] [int] NOT NULL,
	[Autor] [text] NOT NULL,
	[Edição] [text] NULL,
	[Publicação] [int] NULL,
	[ISBN] [int] NULL,
	[Tema] [text] NOT NULL,
	[Subtítulo] [text] NULL,
	[Idioma] [text] NOT NULL,
	[Exemplares] [int] NOT NULL,
	[idFormato] [int] NOT NULL,
	[Posição] [text] NOT NULL,
	[Cutter] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idLivros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[locacao]    Script Date: 26/10/2023 20:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locacao](
	[idLocacao] [int] NOT NULL,
	[IdUsuario] [char](11) NOT NULL,
	[NomeLivro] [text] NOT NULL,
	[NomeUsuario] [text] NOT NULL,
	[IdLivro] [char](5) NOT NULL,
	[DataEmprestimo] [datetime] NOT NULL,
	[DataDevPrevista] [date] NOT NULL,
	[DataDevEfetiva] [date] NOT NULL,
	[IdBiblioteca] [char](5) NOT NULL,
	[NomeBiblioteca] [text] NOT NULL,
	[Classificação] [varchar](45) NOT NULL,
	[IdFormato] [char](5) NOT NULL,
	[DescFormato] [text] NOT NULL,
	[Exemplares] [char](5) NOT NULL,
	[DescUsuario] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idLocacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[locais]    Script Date: 26/10/2023 20:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locais](
	[idLocais] [int] NOT NULL,
	[IdBiblioteca] [char](5) NOT NULL,
	[NomeBiblioteca] [text] NOT NULL,
	[IdTipoLogradouro] [varchar](10) NOT NULL,
	[Logradouro] [varchar](4) NOT NULL,
	[Bairro] [text] NOT NULL,
	[Municipio] [varchar](45) NOT NULL,
	[CEP] [char](8) NOT NULL,
	[UF] [varchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idLocais] ASC,
	[IdBiblioteca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 26/10/2023 20:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[idStatusCadastro] [int] NOT NULL,
	[DataCadastro] [varchar](10) NOT NULL,
	[AtualizacaoCadastro] [varchar](10) NOT NULL,
	[CasoAtraso] [int] NOT NULL,
	[Atualizado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idStatusCadastro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabelaendereco]    Script Date: 26/10/2023 20:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabelaendereco](
	[idTabelaEndereco] [int] NOT NULL,
	[IdTipoLogradouro] [varchar](10) NOT NULL,
	[Logradouro] [varchar](4) NOT NULL,
	[Numero] [varchar](5) NOT NULL,
	[Bairro] [text] NOT NULL,
	[Municipio] [varchar](45) NOT NULL,
	[CEP] [char](8) NOT NULL,
	[UF] [varchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTabelaEndereco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 26/10/2023 20:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[idUsuario] [int] NOT NULL,
	[idDescUsuario] [int] NOT NULL,
	[RA] [varchar](10) NOT NULL,
	[DataNasc] [date] NOT NULL,
	[idEndereco] [int] NOT NULL,
	[NomeUsuario] [text] NOT NULL,
	[Celular] [int] NULL,
	[Email] [text] NOT NULL,
	[CPFUsuario] [int] NOT NULL,
	[RG] [int] NULL,
	[DebitoCadastro] [float] NULL,
	[StatusCadastro] [int] NOT NULL,
	[DataCadastro] [date] NOT NULL,
	[Curso] [varchar](50) NULL,
	[DiasAtraso] [int] NULL,
	[CasoAtraso] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[debito] ADD  DEFAULT (NULL) FOR [Valor]
GO
ALTER TABLE [dbo].[livros] ADD  DEFAULT (NULL) FOR [Publicação]
GO
ALTER TABLE [dbo].[livros] ADD  DEFAULT (NULL) FOR [ISBN]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (NULL) FOR [Celular]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (NULL) FOR [RG]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (NULL) FOR [DebitoCadastro]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (NULL) FOR [Curso]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (NULL) FOR [DiasAtraso]
GO
