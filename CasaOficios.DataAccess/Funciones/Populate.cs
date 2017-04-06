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
        
        private UCMapeador ValidExistColumn= new UCMapeador();

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

        public BEPrueba setPrueba(IDataReader _dr)
        {
            BEPrueba _Entity = new BEPrueba();
            if (ValidExistColumn.HasColumn(_dr, "idPrueba")) { _Entity.idPrueba = Convert.ToInt32(_dr["idPrueba"]); }
            if (ValidExistColumn.HasColumn(_dr, "descripcion")) { _Entity.descripcion = Convert.ToString(_dr["descripcion"]); }
            if (ValidExistColumn.HasColumn(_dr, "idtipoprueba")) { _Entity.idtipoprueba.idTipoPrueba = Convert.ToInt32(_dr["idtipoprueba"]); }
            //if (ValidExistColumn.HasColumn(_dr, "Abv")) { _Entity.idPrueba = Convert.ToString(_dr["Abv"]); }
            //if (ValidExistColumn.HasColumn(_dr, "Anulado")) { _Entity.Anulado = Convert.ToString(_dr["Anulado"]); }
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
