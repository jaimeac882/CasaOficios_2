USE [BD_CASAOFICIOS]
GO
/****** Object:  StoredProcedure [dbo].[LISTA_TABLAS]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[LISTA_TABLAS]
@TABLA VARCHAR(200)
AS

SELECT COLUMN_NAME , DATA_TYPE , CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = @TABLA



GO
/****** Object:  StoredProcedure [dbo].[pa_get_distritos]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pa_get_distritos]
AS
SELECT * FROM TB_UBIGEO 
WHERE  COD_PAIS = '001' AND
       COD_DEPARTAMENTO = '15' AND 
       COD_PROVINCIA = '01' AND
	   COD_DISTRITO <> '00'
order by DES_UBIGEO 






	   






GO
/****** Object:  StoredProcedure [dbo].[pa_prueba_listarxtipo]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_prueba_listarxtipo]
AS
select * from TB_TIPO_AVERIA
union 
select '0000000000' , '- Elija Avería -' ,GETDATE(),getdate(), ''
order by DES_TIPO_AVERIA







GO
/****** Object:  StoredProcedure [dbo].[PA_SOLICITUD_TRABAJO_DOCUMENTO_INS01]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----select * from TB_SOLICITUD_TRABAJO

--EXEC LISTA_TABLAS 'TB_SOLICITUD_TRABAJO'


--select * from TB_SOLICITUD_TRABAJO

--select * from TB_CLIENTE


--insert INTO TB_CLIENTE VALUES('0000000001',
--                              'CLIENTE WEB DESCONOCIDO',
--							  '',
--							  '',
--							  'TID0000001',
--							  '',
--							  'GEN000000',
--							  '001000000',
--							  '',
--							  '',
--							  '',
--							  '0000000001',
--							  '',
--							  '',
--							  GETDATE(),
--							  'CAN0000001',
--							  GETDATE(),
--							  GETDATE(),
--							  '',
--							  1);

--select * from TB_USUARIO

--SELECT * FROM TB_UBIGEO


--SELECT * FROM [dbo].[TB_MAESTRO_TIPO]

--SELECT * FROM [dbo].[TB_MAESTRO_TIPO]

CREATE PROCEDURE [dbo].[PA_SOLICITUD_TRABAJO_DOCUMENTO_INS01] (

@P_COD_SOLICITUD CHAR(10),
@P_DESCRIPCION TEXT,
@P_RUTA VARCHAR(300),
@P_IMAGEN IMAGE,
@P_LENGTH_D INT
)
AS
-- SE AUTOGENERA EL CODIGO
------------------------------------------------------------------------------------------------------
DECLARE @P_COD_SOLICITUD_TRABAJO_DOCUMENTOS CHAR(10)
SET @P_COD_SOLICITUD_TRABAJO_DOCUMENTOS=(Select count(*) from TB_SOLICITUD_TRABAJO_DOCUMENTO)
IF @P_COD_SOLICITUD_TRABAJO_DOCUMENTOS=0 
       SET @P_COD_SOLICITUD_TRABAJO_DOCUMENTOS ='0000000001'
ELSE
       SET @P_COD_SOLICITUD_TRABAJO_DOCUMENTOS=(Select Right(Max ((COD_SOLICITUD_TRABAJO_DOCUMENTOS) + 10000000001 ),10) FROM TB_SOLICITUD_TRABAJO_DOCUMENTO)
------------------------------------------------------------------------------------------------------



INSERT INTO TB_SOLICITUD_TRABAJO_DOCUMENTO (

COD_SOLICITUD_TRABAJO_DOCUMENTOS,
COD_SOLICITUD,
DESCRIPCION,
RUTA,
IMAGEN,
LENGTH_D
) VALUES (
@P_COD_SOLICITUD_TRABAJO_DOCUMENTOS,
@P_COD_SOLICITUD,
@P_DESCRIPCION,
@P_RUTA,
@P_IMAGEN,
@P_LENGTH_D)







GO
/****** Object:  StoredProcedure [dbo].[PA_SOLICITUD_TRABAJO_INS01]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----select * from TB_SOLICITUD_TRABAJO

--EXEC LISTA_TABLAS 'TB_SOLICITUD_TRABAJO'


--select * from TB_SOLICITUD_TRABAJO

--select * from TB_CLIENTE


--insert INTO TB_CLIENTE VALUES('0000000001',
--                              'CLIENTE WEB DESCONOCIDO',
--							  '',
--							  '',
--							  'TID0000001',
--							  '',
--							  'GEN000000',
--							  '001000000',
--							  '',
--							  '',
--							  '',
--							  '0000000001',
--							  '',
--							  '',
--							  GETDATE(),
--							  'CAN0000001',
--							  GETDATE(),
--							  GETDATE(),
--							  '',
--							  1);

--select * from TB_USUARIO

--SELECT * FROM TB_UBIGEO


--SELECT * FROM [dbo].[TB_MAESTRO_TIPO]

--SELECT * FROM [dbo].[TB_MAESTRO_TIPO]

CREATE PROCEDURE [dbo].[PA_SOLICITUD_TRABAJO_INS01] (
    @P_COD_SOLICITUD char(10) output,
	@P_COD_CLIENTE char(10),
	@P_CORDENADAS_REGISTRO VARCHAR(300),
	@P_CORDENADAS_UBICACION VARCHAR(300),
	@P_COD_TIPO_AVERIA CHAR(10),
	@P_COD_TIPO_PRIORIDAD char(10),
	@P_NOMBRE VARCHAR(300),
	@P_EMAIL VARCHAR(300),
	@P_TELEFONO VARCHAR(300),
	@P_DESCRIPCION VARCHAR(300),
	@P_ESTADO CHAR(1),
	@P_PRECIO_PRESUPUESTO DECIMAL(18,5),
	@P_PRECIO_FINAL DECIMAL(18,5),
	@P_COD_TIPO_REGISTRO  CHAR(10),
	@P_FEC_REGISTRO DATETIME,
	@P_FEC_MODIFICACION DATETIME,
	@P_COD_USUARIO_REGISTRO CHAR(10)


)
AS
-- SE AUTOGENERA EL CODIGO
------------------------------------------------------------------------------------------------------

SET @P_COD_SOLICITUD=(Select count(*) from TB_SOLICITUD_TRABAJO)
IF @P_COD_SOLICITUD=0 
       SET @P_COD_SOLICITUD ='0000000001'
ELSE
       SET @P_COD_SOLICITUD=(Select Right(Max ((COD_SOLICITUD) + 10000000001 ),10) FROM TB_SOLICITUD_TRABAJO)
------------------------------------------------------------------------------------------------------



INSERT INTO TB_SOLICITUD_TRABAJO (


COD_SOLICITUD,
COD_CLIENTE,
CORDENADAS_REGISTRO,
CORDENADAS_UBICACION,
COD_TIPO_AVERIA,
COD_TIPO_PRIORIDAD,
NOMBRE,
EMAIL,
TELEFONO,
DESCRIPCION,
ESTADO,
PRECIO_PRESUPUESTO,
PRECIO_FINAL,
COD_TIPO_REGISTRO,
FEC_REGISTRO,
FEC_MODIFICACION,
COD_USUARIO_REGISTRO
) VALUES (
@P_COD_SOLICITUD,
@P_COD_CLIENTE,
@P_CORDENADAS_REGISTRO,
@P_CORDENADAS_UBICACION,
@P_COD_TIPO_AVERIA,
@P_COD_TIPO_PRIORIDAD,
@P_NOMBRE,
@P_EMAIL,
@P_TELEFONO,
@P_DESCRIPCION,
@P_ESTADO,
@P_PRECIO_PRESUPUESTO,
@P_PRECIO_FINAL,
@P_COD_TIPO_REGISTRO,
@P_FEC_REGISTRO,
@P_FEC_MODIFICACION,
@P_COD_USUARIO_REGISTRO)







GO
/****** Object:  StoredProcedure [dbo].[PA_TMRH_CONTACTO_INS01]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PA_TMRH_CONTACTO_INS01] (


@P_COD_TMRH CHAR(10),
@P_COD_TIPO_OPERADORA CHAR(10),
@P_TELEFONO VARCHAR(255)


)
AS
-- SE AUTOGENERA EL CODIGO
------------------------------------------------------------------------------------------------------
BEGIN
DECLARE @P_COD_TMRH_CONTACTO CHAR(10)
SET @P_COD_TMRH_CONTACTO=(Select count(*) from TB_TMRH_CONTACTO)
IF @P_COD_TMRH_CONTACTO=0 
       SET @P_COD_TMRH_CONTACTO ='0000000001'
ELSE
       SET @P_COD_TMRH_CONTACTO=(Select Right(Max ((COD_TMRH_CONTACTO) + 10000000001 ),10) FROM TB_TMRH_CONTACTO)
------------------------------------------------------------------------------------------------------



INSERT INTO TB_TMRH_CONTACTO (

COD_TMRH_CONTACTO,
COD_TMRH,
COD_TIPO_OPERADORA,
TELEFONO
) VALUES (

@P_COD_TMRH_CONTACTO,
@P_COD_TMRH,
@P_COD_TIPO_OPERADORA,
@P_TELEFONO
)
END


GO
/****** Object:  StoredProcedure [dbo].[PA_TMRH_DOCUMENTOS_ADJUNTOS_INS01]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC LISTA_TABLAS 'TB_TMRH_DOCUMENTOS_ADJUNTOS'




CREATE PROCEDURE [dbo].[PA_TMRH_DOCUMENTOS_ADJUNTOS_INS01] (
@P_COD_TMRH CHAR(10),
@P_COD_TIPO_ADJUNTO_TMRH CHAR(10),
@P_DESCRIPCION VARCHAR(255),
@P_RUTA_FOTO VARCHAR(500),
@P_IMAGEN IMAGE,
@P_LENGHT_D INT

)
AS
-- SE AUTOGENERA EL CODIGO
------------------------------------------------------------------------------------------------------
BEGIN
DECLARE @P_COD_TMRH_DOCUMENTOS CHAR(10)
SET @P_COD_TMRH_DOCUMENTOS=(Select count(*) from TB_TMRH_DOCUMENTOS_ADJUNTOS)
IF @P_COD_TMRH_DOCUMENTOS=0 
       SET @P_COD_TMRH_DOCUMENTOS ='0000000001'
ELSE
       SET @P_COD_TMRH_DOCUMENTOS=(Select Right(Max ((COD_TMRH_DOCUMENTOS) + 10000000001 ),10) FROM TB_TMRH_DOCUMENTOS_ADJUNTOS)
------------------------------------------------------------------------------------------------------



INSERT INTO TB_TMRH_DOCUMENTOS_ADJUNTOS (
COD_TMRH_DOCUMENTOS,
COD_TMRH,
COD_TIPO_ADJUNTO_TMRH,
DESCRIPCION,
RUTA_FOTO,
IMAGEN,
LENGHT_D
) VALUES (

@P_COD_TMRH_DOCUMENTOS,
@P_COD_TMRH,
@P_COD_TIPO_ADJUNTO_TMRH,
@P_DESCRIPCION,
@P_RUTA_FOTO,
@P_IMAGEN,
@P_LENGHT_D
)
END


GO
/****** Object:  StoredProcedure [dbo].[PA_TMRH_INS01]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PA_TMRH_INS01] (

@P_NOM_TMRH	varchar	(100),
@P_APE_PATERNO	varchar	(100),
@P_APE_MATERNO	varchar	(100),
@P_EMAIL	varchar	(255),
@P_COD_TIPO_DOCUMENTO	char	(10),
@P_NUM_DOCUMENTO	char	(25),
@P_COD_TIPO_GENERO	char	(10),
@P_COD_UBIGEO	char	(9),
@P_DIRECCION	varchar	(300),
@P_FEC_NACIMIENTO	dateTIME	,
@P_COD_OFICIO_PRINCIPAL	char	(10),
@P_COD_TIEMPO_EXPERIENCIA	char	(10),
@P_FEC_REGISTRO	datetime	,
@P_FEC_MODIFICACION	datetime	,
@P_COD_USUARIO_REGISTRO	char	(10),
@P_NUM_CELU	varchar(255),
@P_COD_TIPO_OPERADORA	char(10),
@P_COD_TMRH	char	(10) OUTPUT
)
AS
-- SE AUTOGENERA EL CODIGO
------------------------------------------------------------------------------------------------------
BEGIN
SET @P_COD_TMRH=(Select count(*) from TB_TMRH)
IF @P_COD_TMRH=0 
       SET @P_COD_TMRH ='0000000001'
ELSE
       SET @P_COD_TMRH=(Select Right(Max ((COD_TMRH) + 10000000001 ),10) FROM TB_TMRH)
------------------------------------------------------------------------------------------------------



INSERT INTO TB_TMRH (


COD_TMRH,
NOM_TMRH,
APE_PATERNO,
APE_MATERNO,
EMAIL,
COD_TIPO_DOCUMENTO,
NUM_DOCUMENTO,
COD_TIPO_GENERO,
COD_UBIGEO,
DIRECCION,
FEC_NACIMIENTO,
COD_OFICIO_PRINCIPAL,
COD_TIEMPO_EXPERIENCIA,
FEC_REGISTRO,
FEC_MODIFICACION,
COD_USUARIO_REGISTRO,
NUM_CELU,
COD_TIPO_OPERADORA
) VALUES (
@P_COD_TMRH,
@P_NOM_TMRH,
@P_APE_PATERNO,
@P_APE_MATERNO,
@P_EMAIL,
@P_COD_TIPO_DOCUMENTO,
@P_NUM_DOCUMENTO,
@P_COD_TIPO_GENERO,
@P_COD_UBIGEO,
@P_DIRECCION,
@P_FEC_NACIMIENTO,
@P_COD_OFICIO_PRINCIPAL,
@P_COD_TIEMPO_EXPERIENCIA,
@P_FEC_REGISTRO,
@P_FEC_MODIFICACION,
@P_COD_USUARIO_REGISTRO,
@P_NUM_CELU,
@P_COD_TIPO_OPERADORA)
END


GO
/****** Object:  StoredProcedure [dbo].[PA_TMRH_OFICIOS_EXTRA_INS01]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC LISTA_TABLAS 'TB_TMRH_OFICIOS_EXTRA'




CREATE PROCEDURE [dbo].[PA_TMRH_OFICIOS_EXTRA_INS01] (


@P_COD_TMRH CHAR(10),
@P_COD_OFICIO CHAR(10),
@P_FEC_REGISTRO DATETIME,
@P_FEC_MODIFICACION DATETIME,
@P_COD_USUARIO_REGISTRO CHAR(10),
@P_COD_TIEMPO_EXPERIENCIA CHAR(10)

)
AS
-- SE AUTOGENERA EL CODIGO
------------------------------------------------------------------------------------------------------
BEGIN
DECLARE @P_COD_TMRH_OFIC_EXTRA CHAR(10)
SET @P_COD_TMRH_OFIC_EXTRA=(Select count(*) from TB_TMRH_OFICIOS_EXTRA)
IF @P_COD_TMRH_OFIC_EXTRA=0 
       SET @P_COD_TMRH_OFIC_EXTRA ='0000000001'
ELSE
       SET @P_COD_TMRH_OFIC_EXTRA=(Select Right(Max ((COD_TMRH_OFIC_EXTRA) + 10000000001 ),10) FROM TB_TMRH_OFICIOS_EXTRA)
------------------------------------------------------------------------------------------------------



INSERT INTO TB_TMRH_OFICIOS_EXTRA (
COD_TMRH_OFIC_EXTRA,
COD_TMRH,
COD_OFICIO,
FEC_REGISTRO,
FEC_MODIFICACION,
COD_USUARIO_REGISTRO,
COD_TIEMPO_EXPERIENCIA
) VALUES (

@P_COD_TMRH_OFIC_EXTRA,
@P_COD_TMRH,
@P_COD_OFICIO,
@P_FEC_REGISTRO,
@P_FEC_MODIFICACION,
@P_COD_USUARIO_REGISTRO,
@P_COD_TIEMPO_EXPERIENCIA
)
END


GO
/****** Object:  StoredProcedure [dbo].[pr_get_listatipos]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pr_get_listatipos]
@P_COD_TIPO_MAESTRO CHAR(3)
as
select * from TB_MAESTRO_TIPO
where COD_TIPO_MAESTRO like  '%' + @P_COD_TIPO_MAESTRO + '%' and
      cod_tipo_maestro <>  @P_COD_TIPO_MAESTRO + '0000000'



GO
/****** Object:  StoredProcedure [dbo].[pr_get_oficios]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_get_oficios]
as
select * from TB_OFICIO
order by DES_OFICIO



GO
/****** Object:  Table [dbo].[TB_CLIENTE]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_CLIENTE](
	[COD_CLIENTE] [char](10) NOT NULL,
	[NOM_CLIENTE] [varchar](255) NULL,
	[APE_PATERNO] [varchar](100) NULL,
	[APE_MATERNO] [varchar](100) NULL,
	[COD_TIPO_DOCUMENTO] [char](10) NULL,
	[NUM_DOCUMENTO] [varchar](255) NULL,
	[COD_TIPO_GENERO] [char](10) NULL,
	[COD_UBIGEO] [char](9) NULL,
	[DIRECCION] [varchar](300) NULL,
	[CEL_1] [varchar](50) NULL,
	[CEL_2] [varchar](50) NULL,
	[COD_USUARIO] [char](10) NULL,
	[CUENTA_FACEBOOK] [varchar](255) NULL,
	[CUENTA_GMAIL] [varchar](255) NULL,
	[FEC_NACIMIENTO] [date] NULL,
	[COD_TIPO_CANAL_CONTACTO] [char](10) NULL,
	[FEC_MODIFICACION] [datetime] NOT NULL,
	[FEC_REGISTRO] [datetime] NULL,
	[COD_USUARIO_REGISTRO] [char](10) NULL,
	[ESTADO] [int] NULL,
 CONSTRAINT [Key18] PRIMARY KEY CLUSTERED 
(
	[COD_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_MAESTRO_TIPO]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_MAESTRO_TIPO](
	[COD_TIPO_MAESTRO] [char](10) NOT NULL,
	[DES_TIPO_MAESTRO] [varchar](300) NULL,
	[FEC_REGISTRO] [datetime] NULL,
	[FEC_MODIFICACION] [datetime] NULL,
	[COD_USUARIO_REGISTRO] [char](10) NULL,
 CONSTRAINT [Key4] PRIMARY KEY CLUSTERED 
(
	[COD_TIPO_MAESTRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_MODULO]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_MODULO](
	[COD_MODULO] [char](10) NOT NULL,
	[DES_MODULO] [char](255) NULL,
	[URL_MODULO] [varchar](300) NULL,
	[COD_TIPO_MODULO] [char](10) NULL,
	[FEC_REGISTRO] [datetime] NULL,
	[FEC_MODIFICACION] [datetime] NULL,
	[COD_USUARIO_REGISTRO] [char](10) NULL,
 CONSTRAINT [Key3] PRIMARY KEY CLUSTERED 
(
	[COD_MODULO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_OFICIO]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_OFICIO](
	[COD_OFICIO] [char](10) NOT NULL,
	[DES_OFICIO] [varchar](255) NULL,
	[FEC_REGISTRO] [datetime] NULL,
	[FEC_MODIFICACION] [datetime] NULL,
	[COD_USUARIO_REGISTRO] [char](10) NULL,
 CONSTRAINT [Key13] PRIMARY KEY CLUSTERED 
(
	[COD_OFICIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_OFICIO_AVERIA]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_OFICIO_AVERIA](
	[COD_OFICIO_AVERIA] [int] IDENTITY(1,1) NOT NULL,
	[COD_OFICIO] [char](10) NULL,
	[COD_TIPAVERIA] [char](10) NULL,
	[FEC_REGISTRO] [datetime] NULL,
	[FEC_MODIFICACION] [datetime] NULL,
	[COD_USUARIO_REGISTRO] [char](10) NULL,
 CONSTRAINT [PK_TB_OFICIO_AVERIA] PRIMARY KEY CLUSTERED 
(
	[COD_OFICIO_AVERIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_PERFIL]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_PERFIL](
	[COD_PERFIL] [char](10) NOT NULL,
	[DES_PERFIL] [varchar](300) NULL,
	[ESTADO] [char](1) NULL,
	[COD_USuario] [char](10) NULL,
	[FEC_REGISTRO] [datetime] NULL,
	[FEC_MODIFICACION] [datetime] NULL,
	[COD_USUARIO_REGISTRO] [char](10) NULL,
 CONSTRAINT [Key8] PRIMARY KEY CLUSTERED 
(
	[COD_PERFIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_PERFIL_MODULO]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_PERFIL_MODULO](
	[COD_PERFIL_MODULO] [char](10) NOT NULL,
	[COD_PERFIL] [char](10) NOT NULL,
	[COD_MODULO] [char](10) NOT NULL,
 CONSTRAINT [Key9] PRIMARY KEY CLUSTERED 
(
	[COD_PERFIL] ASC,
	[COD_MODULO] ASC,
	[COD_PERFIL_MODULO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_SOLICITUD_TRABAJO]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_SOLICITUD_TRABAJO](
	[COD_SOLICITUD] [char](10) NOT NULL,
	[COD_CLIENTE] [char](10) NULL,
	[CORDENADAS_REGISTRO] [varchar](300) NULL,
	[CORDENADAS_UBICACION] [varchar](300) NULL,
	[COD_TIPO_AVERIA] [char](10) NULL,
	[COD_TIPO_PRIORIDAD] [char](10) NULL,
	[NOMBRE] [varchar](300) NULL,
	[EMAIL] [varchar](300) NULL,
	[TELEFONO] [varchar](300) NULL,
	[DESCRIPCION] [varchar](300) NULL,
	[ESTADO] [char](1) NULL,
	[PRECIO_PRESUPUESTO] [decimal](18, 2) NULL,
	[PRECIO_FINAL] [decimal](18, 2) NULL,
	[COD_TIPO_REGISTRO] [char](10) NULL,
	[FEC_REGISTRO] [datetime] NULL,
	[FEC_MODIFICACION] [datetime] NULL,
	[COD_USUARIO_REGISTRO] [char](10) NULL,
	[COD_UBIGEO] [char](9) NULL,
 CONSTRAINT [Key19] PRIMARY KEY CLUSTERED 
(
	[COD_SOLICITUD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_SOLICITUD_TRABAJO_DOCUMENTO]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_SOLICITUD_TRABAJO_DOCUMENTO](
	[COD_SOLICITUD_TRABAJO_DOCUMENTOS] [char](10) NOT NULL,
	[COD_SOLICITUD] [char](10) NOT NULL,
	[DESCRIPCION] [text] NULL,
	[RUTA] [varchar](300) NULL,
	[IMAGEN] [image] NULL,
	[LENGTH_D] [int] NULL,
 CONSTRAINT [PK__TB_SOLIC__AFA82A0E3221BBBD] PRIMARY KEY CLUSTERED 
(
	[COD_SOLICITUD_TRABAJO_DOCUMENTOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_TIPO_AVERIA]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_TIPO_AVERIA](
	[COD_TIPAVERIA] [char](10) NOT NULL,
	[DES_TIPO_AVERIA] [varchar](255) NULL,
	[FEC_REGISTRO] [datetime] NULL,
	[FEC_MODIFICACION] [datetime] NULL,
	[COD_USUARIO_REGISTRO] [char](10) NULL,
 CONSTRAINT [Key16] PRIMARY KEY CLUSTERED 
(
	[COD_TIPAVERIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_TMRH]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_TMRH](
	[COD_TMRH] [char](10) NOT NULL,
	[NOM_TMRH] [varchar](100) NULL,
	[APE_PATERNO] [varchar](100) NULL,
	[APE_MATERNO] [varchar](100) NULL,
	[EMAIL] [varchar](255) NULL,
	[COD_TIPO_DOCUMENTO] [char](10) NULL,
	[NUM_DOCUMENTO] [char](25) NULL,
	[COD_TIPO_GENERO] [char](10) NULL,
	[COD_UBIGEO] [char](9) NULL,
	[DIRECCION] [varchar](300) NULL,
	[FEC_NACIMIENTO] [date] NULL,
	[COD_OFICIO_PRINCIPAL] [char](10) NULL,
	[COD_TIEMPO_EXPERIENCIA] [char](10) NULL,
	[FEC_REGISTRO] [datetime] NULL,
	[FEC_MODIFICACION] [datetime] NULL,
	[COD_USUARIO_REGISTRO] [char](10) NULL,
	[NUM_CELU] [varchar](255) NULL,
	[COD_TIPO_OPERADORA] [char](10) NULL,
 CONSTRAINT [Key10] PRIMARY KEY CLUSTERED 
(
	[COD_TMRH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_TMRH_CONTACTO]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_TMRH_CONTACTO](
	[COD_TMRH_CONTACTO] [char](10) NOT NULL,
	[COD_TMRH] [char](10) NULL,
	[COD_TIPO_OPERADORA] [char](10) NULL,
	[TELEFONO] [varchar](255) NULL,
 CONSTRAINT [Key11] PRIMARY KEY CLUSTERED 
(
	[COD_TMRH_CONTACTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_TMRH_DOCUMENTOS_ADJUNTOS]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_TMRH_DOCUMENTOS_ADJUNTOS](
	[COD_TMRH_DOCUMENTOS] [char](10) NOT NULL,
	[COD_TMRH] [char](10) NOT NULL,
	[COD_TIPO_ADJUNTO_TMRH] [char](10) NULL,
	[DESCRIPCION] [varchar](255) NULL,
	[RUTA_FOTO] [varchar](500) NULL,
	[IMAGEN] [image] NULL,
	[LENGHT_D] [int] NULL,
 CONSTRAINT [PK__TB_TMRH___C78983094D93FF68] PRIMARY KEY CLUSTERED 
(
	[COD_TMRH_DOCUMENTOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_TMRH_OFICIOS_EXTRA]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_TMRH_OFICIOS_EXTRA](
	[COD_TMRH_OFIC_EXTRA] [char](10) NOT NULL,
	[COD_TMRH] [char](10) NULL,
	[COD_OFICIO] [char](10) NULL,
	[FEC_REGISTRO] [datetime] NULL,
	[FEC_MODIFICACION] [datetime] NULL,
	[COD_USUARIO_REGISTRO] [char](10) NULL,
	[COD_TIEMPO_EXPERIENCIA] [char](10) NULL,
 CONSTRAINT [Key15] PRIMARY KEY CLUSTERED 
(
	[COD_TMRH_OFIC_EXTRA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_UBIGEO]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_UBIGEO](
	[COD_UBIGEO] [char](9) NOT NULL,
	[COD_PAIS] [char](3) NULL,
	[COD_DEPARTAMENTO] [char](2) NULL,
	[COD_PROVINCIA] [char](2) NULL,
	[COD_DISTRITO] [char](2) NULL,
	[DES_UBIGEO] [char](200) NULL,
	[FEC_REGISTRO] [datetime] NULL,
	[FEC_MOD] [datetime] NULL,
	[USU_REGISTRO] [char](10) NULL,
 CONSTRAINT [Key12] PRIMARY KEY CLUSTERED 
(
	[COD_UBIGEO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_USUARIO]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_USUARIO](
	[COD_USUARIO] [char](10) NOT NULL,
	[DES_USUARIO] [varchar](255) NULL,
	[LOG_USUARIO] [varchar](255) NULL,
	[PASS_USUARIO] [varchar](255) NULL,
	[ESTADO] [char](1) NULL,
	[COD_TIPO_USUARIO] [char](10) NULL,
	[FEC_REGISTRO] [datetime] NULL,
	[FEC_MODIFICACION] [datetime] NULL,
	[COD_USUARIO_REGISTRO] [char](10) NULL,
 CONSTRAINT [Key1] PRIMARY KEY CLUSTERED 
(
	[COD_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_USUARIO_MODULO]    Script Date: 18/06/2017 10:32:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_USUARIO_MODULO](
	[COD_USUARIO] [char](10) NOT NULL,
	[COD_MODULO] [char](10) NOT NULL,
 CONSTRAINT [Key7] PRIMARY KEY CLUSTERED 
(
	[COD_USUARIO] ASC,
	[COD_MODULO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[TB_CLIENTE]  WITH CHECK ADD  CONSTRAINT [Relationship35] FOREIGN KEY([COD_TIPO_DOCUMENTO])
REFERENCES [dbo].[TB_MAESTRO_TIPO] ([COD_TIPO_MAESTRO])
GO
ALTER TABLE [dbo].[TB_CLIENTE] CHECK CONSTRAINT [Relationship35]
GO
ALTER TABLE [dbo].[TB_CLIENTE]  WITH CHECK ADD  CONSTRAINT [Relationship36] FOREIGN KEY([COD_TIPO_GENERO])
REFERENCES [dbo].[TB_MAESTRO_TIPO] ([COD_TIPO_MAESTRO])
GO
ALTER TABLE [dbo].[TB_CLIENTE] CHECK CONSTRAINT [Relationship36]
GO
ALTER TABLE [dbo].[TB_CLIENTE]  WITH CHECK ADD  CONSTRAINT [Relationship37] FOREIGN KEY([COD_UBIGEO])
REFERENCES [dbo].[TB_UBIGEO] ([COD_UBIGEO])
GO
ALTER TABLE [dbo].[TB_CLIENTE] CHECK CONSTRAINT [Relationship37]
GO
ALTER TABLE [dbo].[TB_CLIENTE]  WITH CHECK ADD  CONSTRAINT [Relationship44] FOREIGN KEY([COD_USUARIO])
REFERENCES [dbo].[TB_USUARIO] ([COD_USUARIO])
GO
ALTER TABLE [dbo].[TB_CLIENTE] CHECK CONSTRAINT [Relationship44]
GO
ALTER TABLE [dbo].[TB_CLIENTE]  WITH CHECK ADD  CONSTRAINT [Relationship46] FOREIGN KEY([COD_TIPO_CANAL_CONTACTO])
REFERENCES [dbo].[TB_MAESTRO_TIPO] ([COD_TIPO_MAESTRO])
GO
ALTER TABLE [dbo].[TB_CLIENTE] CHECK CONSTRAINT [Relationship46]
GO
ALTER TABLE [dbo].[TB_MODULO]  WITH CHECK ADD  CONSTRAINT [Relationship13] FOREIGN KEY([COD_TIPO_MODULO])
REFERENCES [dbo].[TB_MAESTRO_TIPO] ([COD_TIPO_MAESTRO])
GO
ALTER TABLE [dbo].[TB_MODULO] CHECK CONSTRAINT [Relationship13]
GO
ALTER TABLE [dbo].[TB_OFICIO_AVERIA]  WITH CHECK ADD  CONSTRAINT [Relationship31] FOREIGN KEY([COD_OFICIO])
REFERENCES [dbo].[TB_OFICIO] ([COD_OFICIO])
GO
ALTER TABLE [dbo].[TB_OFICIO_AVERIA] CHECK CONSTRAINT [Relationship31]
GO
ALTER TABLE [dbo].[TB_OFICIO_AVERIA]  WITH CHECK ADD  CONSTRAINT [Relationship32] FOREIGN KEY([COD_TIPAVERIA])
REFERENCES [dbo].[TB_TIPO_AVERIA] ([COD_TIPAVERIA])
GO
ALTER TABLE [dbo].[TB_OFICIO_AVERIA] CHECK CONSTRAINT [Relationship32]
GO
ALTER TABLE [dbo].[TB_OFICIO_AVERIA]  WITH CHECK ADD  CONSTRAINT [Relationship34] FOREIGN KEY([COD_TIPAVERIA])
REFERENCES [dbo].[TB_TIPO_AVERIA] ([COD_TIPAVERIA])
GO
ALTER TABLE [dbo].[TB_OFICIO_AVERIA] CHECK CONSTRAINT [Relationship34]
GO
ALTER TABLE [dbo].[TB_PERFIL]  WITH CHECK ADD  CONSTRAINT [Relationship18] FOREIGN KEY([COD_USuario])
REFERENCES [dbo].[TB_USUARIO] ([COD_USUARIO])
GO
ALTER TABLE [dbo].[TB_PERFIL] CHECK CONSTRAINT [Relationship18]
GO
ALTER TABLE [dbo].[TB_PERFIL_MODULO]  WITH CHECK ADD  CONSTRAINT [Relationship19] FOREIGN KEY([COD_PERFIL])
REFERENCES [dbo].[TB_PERFIL] ([COD_PERFIL])
GO
ALTER TABLE [dbo].[TB_PERFIL_MODULO] CHECK CONSTRAINT [Relationship19]
GO
ALTER TABLE [dbo].[TB_PERFIL_MODULO]  WITH CHECK ADD  CONSTRAINT [Relationship20] FOREIGN KEY([COD_MODULO])
REFERENCES [dbo].[TB_MODULO] ([COD_MODULO])
GO
ALTER TABLE [dbo].[TB_PERFIL_MODULO] CHECK CONSTRAINT [Relationship20]
GO
ALTER TABLE [dbo].[TB_SOLICITUD_TRABAJO]  WITH CHECK ADD  CONSTRAINT [Relationship38] FOREIGN KEY([COD_CLIENTE])
REFERENCES [dbo].[TB_CLIENTE] ([COD_CLIENTE])
GO
ALTER TABLE [dbo].[TB_SOLICITUD_TRABAJO] CHECK CONSTRAINT [Relationship38]
GO
ALTER TABLE [dbo].[TB_SOLICITUD_TRABAJO]  WITH CHECK ADD  CONSTRAINT [Relationship40] FOREIGN KEY([COD_TIPO_AVERIA])
REFERENCES [dbo].[TB_TIPO_AVERIA] ([COD_TIPAVERIA])
GO
ALTER TABLE [dbo].[TB_SOLICITUD_TRABAJO] CHECK CONSTRAINT [Relationship40]
GO
ALTER TABLE [dbo].[TB_SOLICITUD_TRABAJO]  WITH CHECK ADD  CONSTRAINT [Relationship41] FOREIGN KEY([COD_TIPO_PRIORIDAD])
REFERENCES [dbo].[TB_MAESTRO_TIPO] ([COD_TIPO_MAESTRO])
GO
ALTER TABLE [dbo].[TB_SOLICITUD_TRABAJO] CHECK CONSTRAINT [Relationship41]
GO
ALTER TABLE [dbo].[TB_SOLICITUD_TRABAJO]  WITH CHECK ADD  CONSTRAINT [Relationship45] FOREIGN KEY([COD_TIPO_REGISTRO])
REFERENCES [dbo].[TB_MAESTRO_TIPO] ([COD_TIPO_MAESTRO])
GO
ALTER TABLE [dbo].[TB_SOLICITUD_TRABAJO] CHECK CONSTRAINT [Relationship45]
GO
ALTER TABLE [dbo].[TB_SOLICITUD_TRABAJO_DOCUMENTO]  WITH CHECK ADD  CONSTRAINT [FK__TB_SOLICI__COD_S__5CD6CB2B] FOREIGN KEY([COD_SOLICITUD])
REFERENCES [dbo].[TB_SOLICITUD_TRABAJO] ([COD_SOLICITUD])
GO
ALTER TABLE [dbo].[TB_SOLICITUD_TRABAJO_DOCUMENTO] CHECK CONSTRAINT [FK__TB_SOLICI__COD_S__5CD6CB2B]
GO
ALTER TABLE [dbo].[TB_TMRH]  WITH CHECK ADD  CONSTRAINT [Relationship21] FOREIGN KEY([COD_TIPO_DOCUMENTO])
REFERENCES [dbo].[TB_MAESTRO_TIPO] ([COD_TIPO_MAESTRO])
GO
ALTER TABLE [dbo].[TB_TMRH] CHECK CONSTRAINT [Relationship21]
GO
ALTER TABLE [dbo].[TB_TMRH]  WITH CHECK ADD  CONSTRAINT [Relationship26] FOREIGN KEY([COD_TIPO_GENERO])
REFERENCES [dbo].[TB_MAESTRO_TIPO] ([COD_TIPO_MAESTRO])
GO
ALTER TABLE [dbo].[TB_TMRH] CHECK CONSTRAINT [Relationship26]
GO
ALTER TABLE [dbo].[TB_TMRH]  WITH CHECK ADD  CONSTRAINT [Relationship27] FOREIGN KEY([COD_UBIGEO])
REFERENCES [dbo].[TB_UBIGEO] ([COD_UBIGEO])
GO
ALTER TABLE [dbo].[TB_TMRH] CHECK CONSTRAINT [Relationship27]
GO
ALTER TABLE [dbo].[TB_TMRH]  WITH CHECK ADD  CONSTRAINT [Relationship28] FOREIGN KEY([COD_OFICIO_PRINCIPAL])
REFERENCES [dbo].[TB_OFICIO] ([COD_OFICIO])
GO
ALTER TABLE [dbo].[TB_TMRH] CHECK CONSTRAINT [Relationship28]
GO
ALTER TABLE [dbo].[TB_TMRH_CONTACTO]  WITH CHECK ADD  CONSTRAINT [Relationship24] FOREIGN KEY([COD_TMRH])
REFERENCES [dbo].[TB_TMRH] ([COD_TMRH])
GO
ALTER TABLE [dbo].[TB_TMRH_CONTACTO] CHECK CONSTRAINT [Relationship24]
GO
ALTER TABLE [dbo].[TB_TMRH_CONTACTO]  WITH CHECK ADD  CONSTRAINT [Relationship25] FOREIGN KEY([COD_TIPO_OPERADORA])
REFERENCES [dbo].[TB_MAESTRO_TIPO] ([COD_TIPO_MAESTRO])
GO
ALTER TABLE [dbo].[TB_TMRH_CONTACTO] CHECK CONSTRAINT [Relationship25]
GO
ALTER TABLE [dbo].[TB_TMRH_DOCUMENTOS_ADJUNTOS]  WITH CHECK ADD  CONSTRAINT [FK__TB_TMRH_D__COD_T__4D94879B] FOREIGN KEY([COD_TMRH])
REFERENCES [dbo].[TB_TMRH] ([COD_TMRH])
GO
ALTER TABLE [dbo].[TB_TMRH_DOCUMENTOS_ADJUNTOS] CHECK CONSTRAINT [FK__TB_TMRH_D__COD_T__4D94879B]
GO
ALTER TABLE [dbo].[TB_TMRH_DOCUMENTOS_ADJUNTOS]  WITH CHECK ADD  CONSTRAINT [FK__TB_TMRH_D__COD_T__4E88ABD4] FOREIGN KEY([COD_TIPO_ADJUNTO_TMRH])
REFERENCES [dbo].[TB_MAESTRO_TIPO] ([COD_TIPO_MAESTRO])
GO
ALTER TABLE [dbo].[TB_TMRH_DOCUMENTOS_ADJUNTOS] CHECK CONSTRAINT [FK__TB_TMRH_D__COD_T__4E88ABD4]
GO
ALTER TABLE [dbo].[TB_TMRH_OFICIOS_EXTRA]  WITH CHECK ADD  CONSTRAINT [Relationship29] FOREIGN KEY([COD_TMRH])
REFERENCES [dbo].[TB_TMRH] ([COD_TMRH])
GO
ALTER TABLE [dbo].[TB_TMRH_OFICIOS_EXTRA] CHECK CONSTRAINT [Relationship29]
GO
ALTER TABLE [dbo].[TB_TMRH_OFICIOS_EXTRA]  WITH CHECK ADD  CONSTRAINT [Relationship30] FOREIGN KEY([COD_OFICIO])
REFERENCES [dbo].[TB_OFICIO] ([COD_OFICIO])
GO
ALTER TABLE [dbo].[TB_TMRH_OFICIOS_EXTRA] CHECK CONSTRAINT [Relationship30]
GO
ALTER TABLE [dbo].[TB_TMRH_OFICIOS_EXTRA]  WITH CHECK ADD  CONSTRAINT [Relationship43] FOREIGN KEY([COD_TMRH])
REFERENCES [dbo].[TB_TMRH] ([COD_TMRH])
GO
ALTER TABLE [dbo].[TB_TMRH_OFICIOS_EXTRA] CHECK CONSTRAINT [Relationship43]
GO
ALTER TABLE [dbo].[TB_USUARIO]  WITH CHECK ADD  CONSTRAINT [Relationship12] FOREIGN KEY([COD_TIPO_USUARIO])
REFERENCES [dbo].[TB_MAESTRO_TIPO] ([COD_TIPO_MAESTRO])
GO
ALTER TABLE [dbo].[TB_USUARIO] CHECK CONSTRAINT [Relationship12]
GO
ALTER TABLE [dbo].[TB_USUARIO_MODULO]  WITH CHECK ADD  CONSTRAINT [Relationship14] FOREIGN KEY([COD_USUARIO])
REFERENCES [dbo].[TB_USUARIO] ([COD_USUARIO])
GO
ALTER TABLE [dbo].[TB_USUARIO_MODULO] CHECK CONSTRAINT [Relationship14]
GO
ALTER TABLE [dbo].[TB_USUARIO_MODULO]  WITH CHECK ADD  CONSTRAINT [Relationship15] FOREIGN KEY([COD_MODULO])
REFERENCES [dbo].[TB_MODULO] ([COD_MODULO])
GO
ALTER TABLE [dbo].[TB_USUARIO_MODULO] CHECK CONSTRAINT [Relationship15]
GO
