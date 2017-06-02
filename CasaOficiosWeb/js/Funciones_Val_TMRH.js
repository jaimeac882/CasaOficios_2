function ValidarElementosHome() {

    telefono = $.trim($('#TxtNombres').val());
    if (telefono == '') {
        alert('Debe ingresar su Nombre');
        return false;
    }

    txtapepa = $.trim($('#txtApePa').val());
    if (txtapepa == '') {
        alert('Debe ingresar un Apellido Paterno');
        return false;
    }
    
    txtapema = $.trim($('#txtApeMa').val());
    if (txtapema == '') {
        alert('Debe ingresar un Apellido Materno');
        return false;
    }


    txtDocnum = $.trim($('#txtNroDocumento').val());
    if (txtDocnum == '') {
        alert('Debe ingresar numero de Documento');
        return false;
    }
}

    function ValidarElementosContacto() {

        txtDirecci = $.trim($('#txtDireccion').val());
        if (txtDirecci == '') {
            alert('Debe ingresar una dirección de domicilio');
            return false;
        }

        txtEmail = $.trim($('#txtEmail').val());
        if (txtEmail == '') {
            alert('Debe ingresar un Correo Electronico');
            return false;
        }

        txtTelfPrinci = $.trim($('#txtTelfPrinci').val());
        if (txtTelfPrinci == '') {
            alert('Debe ingresar un numero telefonico Principal');
            return false;
        }


   

    
    }
    





