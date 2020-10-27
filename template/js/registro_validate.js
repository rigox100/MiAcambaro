$(document).ready(function() {


    $.validator.addMethod("formAlphanumeric", function(value, element) {
        var pattern1 = /^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$/;
        return this.optional(element) || pattern1.test(value);
    }, "El campo debe tener un valor alfanumérico");

    $.validator.addMethod("email", function(value, element) {
        var pattern2 = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.([a-zA-Z]{2,4})+$/;
        return this.optional(element) || pattern2.test(value);
    }, "Debe ingresar un email válido");

    $.validator.addMethod("password", function(value, element) {
        var pattern3 = /^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,20}$/;
        return this.optional(element) || pattern3.test(value);
    }, "Por favor introduzca una contraseña");

    $("#form").validate({
       
        wrapper: 'span',
        errorPlacement: function(error, element) {
            error.css({
                'padding-left': '10px',
                'margin-right': '20px',
                'padding-bottom': '2px',
                'color': 'red',
                'font-size': 'small'
            });
            error.addClass("arrow")
            error.insertAfter(element);
        },


        rules: {
            nombre: {
                required: true,
                minlength: 2,
                maxlength: 25,
                formAlphanumeric: true
            },
            apellido: {
                required: true,
                minlength: 2,
                maxlength: 25,
                formAlphanumeric: true
            },
            email: {
                required: true,
                maxlength: 50,
                email: true
            },
            new_password: {
                required: true,
                maxlength: 20,
                password: true
            },

            confirm_password: {
                required: true,
                maxlength: 20,
                password: true,
                equalTo: "#new_password"
            },


            politica_privacidad:{
                required: true
            }
        },

        messages: {

            nombre: {
                required: 'Por favor introduzca su nombre',
                formAlphanumeric: "El nombre solo puede contener letras",
                maxlength: "Solo se admite un máximo de 25 caracteres"
            },

            apellido: {
                required: "Por favor introduzca su apellido.",
                formAlphanumeric: "El apellido solo puede contener letras",
                maxlength: "Solo se admite un máximo de 25 caracteres"
            },

            email: {
                required: "Por favor introduzca su email",
                maxlength: "Solo se admite un máximo de 50 caracteres",
                email: "Debe ingresar un email válido"
            },

            politica_privacidad: {
                required: "Debe aceptar la política de privacidad"
            },

            new_password: {
                required: "Por favor introduzca una contraseña",
                password: "La contraseña debe tener al entre 8 y 20 caracteres, al menos un dígito, al menos una minúscula y al menos una mayúscula."
            },

            confirm_password: {
                required: "Por favor introduzca una contraseña",
                maxlength: 20,
                password: "Por favor introduzca la misma contraseña que la anterior",
                equalTo: "Por favor introduzca la misma contraseña que la anterior"
            },

            


        },

    });

});