using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using CasaOficios.Entities;

namespace CasaOficios.DataAccess.Funciones
{
    class Populate
    {

        private UCMapeador ValidExistColumn = new UCMapeador();

        //public BEVendedor setBEVendedor(IDataReader _dr)
        //{
        //    BEVendedor _Entity = new BEVendedor();
        //    if (ValidExistColumn.HasColumn(_dr, "Vendedor_Id")) { _Entity.vendedor_Id = Convert.ToString(_dr["vendedor_Id"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Nombre")) { _Entity.nombre = Convert.ToString(_dr["nombre"]); }

        //     return _Entity;
        //}

        //public BEProveedor setBEProveedor(IDataReader _dr)
        //{
        //    BEProveedor _Entity = new BEProveedor();
        //    if (ValidExistColumn.HasColumn(_dr, "Proveedor_Id")) { _Entity.proveedor_id = Convert.ToString(_dr["Proveedor_Id"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Nombre")) { _Entity.nombre = Convert.ToString(_dr["nombre"]); }

        //    return _Entity;
        //}

        //public BECategoria setBECategoria(IDataReader _dr)
        //{
        //    BECategoria _Entity = new BECategoria();
        //    if (ValidExistColumn.HasColumn(_dr, "categoria_id")) { _Entity.categoria_id = Convert.ToString(_dr["categoria_id"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "descripcion")) { _Entity.descripcion = Convert.ToString(_dr["descripcion"]); }

        //    return _Entity;
        //}

        //public BESubcategoria setBESubcategoria(IDataReader _dr)
        //{
        //    BESubcategoria _Entity = new BESubcategoria();
        //    if (ValidExistColumn.HasColumn(_dr, "subcategoria_id")) { _Entity.subcategoria_id = Convert.ToString(_dr["subcategoria_id"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "descripcion")) { _Entity.descripcion = Convert.ToString(_dr["descripcion"]); }

        //    return _Entity;
        //}

        //public BEFamilia setBEFamilia(IDataReader _dr)
        //{
        //    BEFamilia _Entity = new BEFamilia();
        //    if (ValidExistColumn.HasColumn(_dr, "Fam_id")) { _Entity.fam_id = Convert.ToString(_dr["Fam_id"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "descripcion")) { _Entity.descripcion = Convert.ToString(_dr["descripcion"]); }

        //    return _Entity;
        //}

        //public BEMarca setBEMarca(IDataReader _dr)
        //{
        //    BEMarca _Entity = new BEMarca();
        //    if (ValidExistColumn.HasColumn(_dr, "Marca_prod_id")) { _Entity.Marca_prod_id = Convert.ToString(_dr["Marca_prod_id"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "descripcion")) { _Entity.descripcion = Convert.ToString(_dr["descripcion"]); }

        //    return _Entity;
        //}

        public BETipoAveria setTipoAveria(IDataReader _dr)
        {
            BETipoAveria _Entity = new BETipoAveria();
            if (ValidExistColumn.HasColumn(_dr, "COD_TIPAVERIA")) { _Entity.COD_TIPAVERIA = Convert.ToString(_dr["COD_TIPAVERIA"]); }
            if (ValidExistColumn.HasColumn(_dr, "DES_TIPO_AVERIA")) { _Entity.DES_TIPO_AVERIA = Convert.ToString(_dr["DES_TIPO_AVERIA"]); }
            if (ValidExistColumn.HasColumn(_dr, "FEC_MODIFICACION")) { _Entity.FEC_MODIFICACION = Convert.ToDateTime(_dr["FEC_MODIFICACION"]); }

            if (ValidExistColumn.HasColumn(_dr, "COD_USUARIO_REGISTRO")) { _Entity.COD_USUARIO_REGISTRO = Convert.ToString(_dr["COD_USUARIO_REGISTRO"]); }



            //if (ValidExistColumn.HasColumn(_dr, "Abv")) { _Entity.idPrueba = Convert.ToString(_dr["Abv"]); }
            //if (ValidExistColumn.HasColumn(_dr, "Anulado")) { _Entity.Anulado = Convert.ToString(_dr["Anulado"]); }
            return _Entity;
        }


        public BEMaestro_Tipo setMaestro_Tipo(IDataReader _dr)
        {
            BEMaestro_Tipo _Entity = new BEMaestro_Tipo();
            if (ValidExistColumn.HasColumn(_dr, "COD_TIPO_MAESTRO")) { _Entity.COD_TIPO_MAESTRO = Convert.ToString(_dr["COD_TIPO_MAESTRO"]); }
            if (ValidExistColumn.HasColumn(_dr, "DES_TIPO_MAESTRO")) { _Entity.DES_TIPO_MAESTRO = Convert.ToString(_dr["DES_TIPO_MAESTRO"]); }
            if (ValidExistColumn.HasColumn(_dr, "FEC_REGISTRO")) { _Entity.FEC_REGISTRO = Convert.ToDateTime(_dr["FEC_REGISTRO"]); }
            if (ValidExistColumn.HasColumn(_dr, "FEC_MODIFICACION")) { _Entity.FEC_MODIFICACION = Convert.ToDateTime(_dr["FEC_MODIFICACION"]); }
            if (ValidExistColumn.HasColumn(_dr, "COD_USUARIO_REGISTRO")) { _Entity.COD_USUARIO_REGISTRO = Convert.ToString(_dr["COD_USUARIO_REGISTRO"]); }
            //if (ValidExistColumn.HasColumn(_dr, "Abv")) { _Entity.idPrueba = Convert.ToString(_dr["Abv"]); }
            //if (ValidExistColumn.HasColumn(_dr, "Anulado")) { _Entity.Anulado = Convert.ToString(_dr["Anulado"]); }
            return _Entity;
        }


        public BEOficios setOficios(IDataReader _dr)
        {
            BEOficios _Entity = new BEOficios();
            if (ValidExistColumn.HasColumn(_dr, "COD_OFICIO")) { _Entity.COD_OFICIO = Convert.ToString(_dr["COD_OFICIO"]); }
            if (ValidExistColumn.HasColumn(_dr, "DES_OFICIO")) { _Entity.DES_OFICIO = Convert.ToString(_dr["DES_OFICIO"]); }
            if (ValidExistColumn.HasColumn(_dr, "FEC_REGISTRO")) { _Entity.FEC_REGISTRO = Convert.ToDateTime(_dr["FEC_REGISTRO"]); }
            if (ValidExistColumn.HasColumn(_dr, "FEC_MODIFICACION")) { _Entity.FEC_MODIFICACION = Convert.ToDateTime(_dr["FEC_MODIFICACION"]); }
            if (ValidExistColumn.HasColumn(_dr, "COD_USUARIO_REGISTRO")) { _Entity.COD_USUARIO_REGISTRO = Convert.ToString(_dr["COD_USUARIO_REGISTRO"]); }
            //if (ValidExistColumn.HasColumn(_dr, "Abv")) { _Entity.idPrueba = Convert.ToString(_dr["Abv"]); }
            //if (ValidExistColumn.HasColumn(_dr, "Anulado")) { _Entity.Anulado = Convert.ToString(_dr["Anulado"]); }
            return _Entity;
        }





        public BEUbigeo setUbigeo(IDataReader _dr)
        {
            BEUbigeo _Entity = new BEUbigeo();
            if (ValidExistColumn.HasColumn(_dr, "COD_UBIGEO")) { _Entity.COD_UBIGEO = Convert.ToString(_dr["COD_UBIGEO"]); }
            if (ValidExistColumn.HasColumn(_dr, "COD_PAIS")) { _Entity.COD_PAIS = Convert.ToString(_dr["COD_PAIS"]); }
            if (ValidExistColumn.HasColumn(_dr, "COD_DEPARTAMENTO")) { _Entity.COD_DEPARTAMENTO = Convert.ToString(_dr["COD_DEPARTAMENTO"]); }

            if (ValidExistColumn.HasColumn(_dr, "COD_PROVINCIA")) { _Entity.COD_PROVINCIA = Convert.ToString(_dr["COD_PROVINCIA"]); }


            if (ValidExistColumn.HasColumn(_dr, "COD_DISTRITO")) { _Entity.COD_DISTRITO = Convert.ToString(_dr["COD_DISTRITO"]); }
            if (ValidExistColumn.HasColumn(_dr, "DES_UBIGEO")) { _Entity.DES_UBIGEO = Convert.ToString(_dr["DES_UBIGEO"]); }
            if (ValidExistColumn.HasColumn(_dr, "FEC_REGISTRO")) { _Entity.FEC_REGISTRO = Convert.ToDateTime(_dr["FEC_REGISTRO"]); }

            if (ValidExistColumn.HasColumn(_dr, "FEC_MOD")) { _Entity.FEC_MOD = Convert.ToDateTime(_dr["FEC_MOD"]); }
            if (ValidExistColumn.HasColumn(_dr, "USU_REGISTRO")) { _Entity.USU_REGISTRO = Convert.ToString(_dr["USU_REGISTRO"]); }


            return _Entity;
        }


        public BESolicitud_Trabajo setSolicitud_Trabajo(IDataReader _dr)
        {
            BESolicitud_Trabajo _Entity = new BESolicitud_Trabajo();
            if (ValidExistColumn.HasColumn(_dr, "COD_SOLICITUD")) { _Entity.COD_SOLICITUD = Convert.ToString(_dr["COD_SOLICITUD"]); }
            if (ValidExistColumn.HasColumn(_dr, "COD_CLIENTE")) { _Entity.COD_CLIENTE = Convert.ToString(_dr["COD_CLIENTE"]); }
            if (ValidExistColumn.HasColumn(_dr, "CORDENADAS_REGISTRO")) { _Entity.CORDENADAS_REGISTRO = Convert.ToString(_dr["CORDENADAS_REGISTRO"]); }

            if (ValidExistColumn.HasColumn(_dr, "CORDENADAS_UBICACION")) { _Entity.CORDENADAS_UBICACION = Convert.ToString(_dr["CORDENADAS_UBICACION"]); }


            if (ValidExistColumn.HasColumn(_dr, "COD_TIPO_AVERIA")) { _Entity.COD_TIPO_AVERIA = Convert.ToString(_dr["COD_TIPO_AVERIA"]); }
            if (ValidExistColumn.HasColumn(_dr, "COD_TIPO_PRIORIDAD")) { _Entity.COD_TIPO_PRIORIDAD = Convert.ToString(_dr["COD_TIPO_PRIORIDAD"]); }
            if (ValidExistColumn.HasColumn(_dr, "NOMBRE")) { _Entity.NOMBRE = Convert.ToString(_dr["NOMBRE"]); }

            if (ValidExistColumn.HasColumn(_dr, "EMAIL")) { _Entity.EMAIL = Convert.ToString(_dr["EMAIL"]); }
            if (ValidExistColumn.HasColumn(_dr, "TELEFONO")) { _Entity.TELEFONO = Convert.ToString(_dr["TELEFONO"]); }



            if (ValidExistColumn.HasColumn(_dr, "DESCRIPCION")) { _Entity.DESCRIPCION = Convert.ToString(_dr["DESCRIPCION"]); }
            if (ValidExistColumn.HasColumn(_dr, "ESTADO")) { _Entity.ESTADO = Convert.ToString(_dr["ESTADO"]); }
            if (ValidExistColumn.HasColumn(_dr, "PRECIO_PRESUPUESTO")) { _Entity.PRECIO_PRESUPUESTO = Convert.ToDecimal(_dr["PRECIO_PRESUPUESTO"]); }

            if (ValidExistColumn.HasColumn(_dr, "PRECIO_FINAL")) { _Entity.PRECIO_FINAL = Convert.ToDecimal(_dr["PRECIO_FINAL"]); }
            if (ValidExistColumn.HasColumn(_dr, "COD_TIPO_REGISTRO")) { _Entity.COD_TIPO_REGISTRO = Convert.ToString(_dr["COD_TIPO_REGISTRO"]); }


            if (ValidExistColumn.HasColumn(_dr, "FEC_REGISTRO")) { _Entity.FEC_REGISTRO = Convert.ToDateTime(_dr["FEC_REGISTRO"]); }
            if (ValidExistColumn.HasColumn(_dr, "FEC_MODIFICACION")) { _Entity.FEC_MODIFICACION = Convert.ToDateTime(_dr["FEC_MODIFICACION"]); }
            if (ValidExistColumn.HasColumn(_dr, "COD_USUARIO_REGISTRO")) { _Entity.COD_USUARIO_REGISTRO = Convert.ToString(_dr["COD_USUARIO_REGISTRO"]); }

            if (ValidExistColumn.HasColumn(_dr, "COD_UBIGEO")) { _Entity.COD_UBIGEO = Convert.ToString(_dr["COD_UBIGEO"]); }

            if (ValidExistColumn.HasColumn(_dr, "COD_USUARIO_REGISTRO")) { _Entity.COD_USUARIO_REGISTRO = Convert.ToString(_dr["COD_USUARIO_REGISTRO"]); }

            if (ValidExistColumn.HasColumn(_dr, "COD_UBIGEO")) { _Entity.COD_UBIGEO = Convert.ToString(_dr["COD_UBIGEO"]); }



            return _Entity;
        }



        //public BEUsuario setBEUsuario(IDataReader _dr)
        //{
        //    BEUsuario _Entity = new BEUsuario();
        //    if (ValidExistColumn.HasColumn(_dr, "Usuario_Id")) { _Entity.Usuario_Id = Convert.ToInt32(_dr["Usuario_Id"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Usuario_key")) { _Entity.Usuario_key = Convert.ToString(_dr["Usuario_key"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Login")) { _Entity.Login = Convert.ToString(_dr["Login"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Password")) { _Entity.Password = Convert.ToString(_dr["Password"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Nombre")) { _Entity.Nombre = Convert.ToString(_dr["Nombre"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Rol_Id")) 
        //    {
        //        //_Entity.Rol_Id = new BERol();
        //        _Entity.Rol_Id.Rol_Id = Convert.ToInt32(_dr["Rol_Id"]);
        //    }
        //    if (ValidExistColumn.HasColumn(_dr, "Estado")) { _Entity.Estado = Convert.ToString(_dr["Estado"]); }
        //    //if (ValidExistColumn.HasColumn(_dr, "Abv")) { _Entity.idPrueba = Convert.ToString(_dr["Abv"]); }
        //    //if (ValidExistColumn.HasColumn(_dr, "Anulado")) { _Entity.Anulado = Convert.ToString(_dr["Anulado"]); }
        //    return _Entity;
        //}

        //public BEPXPRol setBEPXPRol(IDataReader _dr)
        //{
        //    BEPXPRol _Entity = new BEPXPRol();
        //    if (ValidExistColumn.HasColumn(_dr, "IdRol")) { _Entity.IdRol = Convert.ToInt32(_dr["IdRol"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "codRol")) { _Entity.CodRol = Convert.ToString(_dr["codRol"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "DesRol")) { _Entity.DesRol = Convert.ToString(_dr["DesRol"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "IdUsuarioCreacion")) { _Entity.IdUsuarioCreacion = Convert.ToString(_dr["IdUsuarioCreacion"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "FechaCreacion")) { _Entity.FechaCreacion = Convert.ToDateTime(_dr["FechaCreacion"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "IpCreacion")) { _Entity.IpCreacion = Convert.ToString(_dr["IpCreacion"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "IdUsuarioModificacion")) { _Entity.IdUsuarioModificacion = Convert.ToString(_dr["IdUsuarioModificacion"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "FechaModificacion")) { _Entity.FechaModificacion = Convert.ToDateTime(_dr["FechaModificacion"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "IpModificacion")) { _Entity.IpModificacion = Convert.ToString(_dr["IpModificacion"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "FlagEstado")) { _Entity.FlagEstado = Convert.ToBoolean(_dr["FlagEstado"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Orden")) { _Entity.Orden = Convert.ToInt32(_dr["Orden"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "urlHome")) { _Entity.urlHome = Convert.ToString(_dr["urlHome"]); }
        //    return _Entity;
        //}


        //public BEPXPPais setBEPXPPais(IDataReader _dr)
        //{
        //    BEPXPPais _Entity = new BEPXPPais();

        //    if (ValidExistColumn.HasColumn(_dr, "IdPaisBelcomercial")) { _Entity.IdPaisBelcomercial = Convert.ToInt32(_dr["IdPaisBelcomercial"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "CodigoISO")) { _Entity.CodigoISO = Convert.ToString(_dr["CodigoISO"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Descripcion")) { _Entity.Descripcion = Convert.ToString(_dr["Descripcion"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Abreviatura")) { _Entity.Abreviatura = Convert.ToString(_dr["Abreviatura"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "DescripcionMoneda")) { _Entity.DescripcionMoneda = Convert.ToString(_dr["DescripcionMoneda"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "AbreviaturaMoneda")) { _Entity.AbreviaturaMoneda = Convert.ToString(_dr["AbreviaturaMoneda"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Estado")) { _Entity.Estado = Convert.ToInt32(_dr["Estado"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "UsuarioCreacion")) { _Entity.UsuarioCreacion = Convert.ToString(_dr["UsuarioCreacion"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "FechaCreacion")) { _Entity.FechaCreacion = Convert.ToDateTime(_dr["FechaCreacion"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "UsuarioModificacion")) { _Entity.UsuarioModificacion = Convert.ToString(_dr["UsuarioModificacion"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "FechaModificacion")) { _Entity.FechaModificacion = Convert.ToDateTime(_dr["FechaModificacion"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Tipo")) { _Entity.Tipo = Convert.ToString(_dr["Tipo"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "CodigoLL")) { _Entity.CodigoLL = Convert.ToString(_dr["CodigoLL"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "idPaisBase")) { _Entity.idPaisBase = Convert.ToInt32(_dr["idPaisBase"]); }

        //    return _Entity;
        //}


        //public BEPXPMarca setBEPXPMarca(IDataReader _dr)
        //{
        //    BEPXPMarca _Entity = new BEPXPMarca();

        //    if (ValidExistColumn.HasColumn(_dr, "codigoCaronte")) { _Entity.codigoCaronte = Convert.ToInt32(_dr["codigoCaronte"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "codigoBelComercial")) { _Entity.codigoBelComercial = Convert.ToInt32(_dr["codigoBelComercial"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "CodigoLeader")) { _Entity.CodigoLeader = Convert.ToString(_dr["CodigoLeader"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Descripcion")) { _Entity.Descripcion = Convert.ToString(_dr["Descripcion"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Abreviatura")) { _Entity.Abreviatura = Convert.ToString(_dr["Abreviatura"]); }
        //    if (ValidExistColumn.HasColumn(_dr, "Estado")) { _Entity.Estado = Convert.ToInt32(_dr["Estado"]); }

        //    return _Entity;
        //}    


    }
}
