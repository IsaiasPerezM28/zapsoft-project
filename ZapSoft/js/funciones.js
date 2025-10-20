// funciones.js
// Archivo con funciones básicas para ZapSoft 👟

// Confirmación genérica para eliminar registros
function confirmarEliminacion(event, mensaje = "¿S") {
    if (!confirm(mensaje)) {
        event.preventDefault();
    }
}

// Validación rápida de campos vacíos en formularios
function validarFormulario(formId) {
    const form = document.getElementById(formId);
    if (!form) return;

    form.addEventListener('submit', (e) => {
        let vacio = false;
        form.querySelectorAll('input[required], select[required]').forEach((campo) => {
            if (!campo.value.trim()) {
                vacio = true;
                campo.classList.add('is-invalid');
            } else {
                campo.classList.remove('is-invalid');
            }
        });

        if (vacio) {
            e.preventDefault();
            alert("⚠️ Por favor, completa todos los campos requeridos.");
        }
    });
}

// Formato visual del precio (se usa en productos)
function formatoMoneda(input) {
    input.addEventListener('input', () => {
        let valor = input.value.replace(/[^\d.]/g, '');
        input.value = valor;
    });
}

// Inicialización automática cuando carga la página
document.addEventListener("DOMContentLoaded", () => {
    // Validación del formulario de productos
    validarFormulario("formProductos");

    // Activar confirmaciones en los botones de eliminar
    document.querySelectorAll('a.btn-danger').forEach(boton => {
        boton.addEventListener('click', (e) => confirmarEliminacion(e));
    });

    console.log("✅ Funciones JS de ZapSoft cargadas correctamente.");
});
