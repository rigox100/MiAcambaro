$(document).ready(function() {


    $.validator.addMethod("formAlphanumeric", function(value, element) {
        var pattern1 = /^[a-zA-Z0-9]([a-zA-Z ]*)[a-zA-Z0-9]$/;
        return this.optional(element) || pattern1.test(value);
    }, "El campo debe tener un valor alfanumérico");

    $.validator.addMethod("email", function(value, element) {
        var pattern2 = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.([a-zA-Z]{2,4})+$/;
        return this.optional(element) || pattern2.test(value);
    }, "Debe ingresar un email válido");

    $.validator.addMethod("password", function(value, element) {
        var pattern3 = /^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,20}$/;
        return this.optional(element) || pattern3.test(value);
    }, "Debe ingresar un email válido");

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

            politica_privacidad:{
                required: true
            }
        },

        messages: {

            nombre: {
                required: 'El campo es obligatorio.',
                formAlphanumeric: "No se admiten símbolos o espacios en blanco al inicio ni al final del campo",
                maxlength: "Solo se admite un máximo de 25 caracteres"
            },

            apellido: {
                required: "El campo es obligatorio.",
                formAlphanumeric: "No se admiten símbolos o espacios en blanco al inicio ni al final del campo",
                maxlength: "Solo se admite un máximo de 25 caracteres"
            },

            email: {
                required: "El campo es obligatorio.",
                maxlength: "Solo se admite un máximo de 50 caracteres",
                email: "Debe ingresar un email válido"
            },

            politica_privacidad: {
                required: "El campo es obligatorio"
            },

            new_password: {
                required: "El campo es obligatorio.",
                password: "La contraseña debe tener al entre 8 y 20 caracteres, al menos un dígito, al menos una minúscula y al menos una mayúscula."
            }

        },

    });

});