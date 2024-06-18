// Función principal para calcular el peso ideal y el IMC usando la fórmula de Lorentz
function calcularPesoIdeal() {
    // Obtener los valores de los campos del formulario
    const sexo = document.getElementById("sexo").value;
    const edad = parseInt(document.getElementById("edad").value);
    const pesoActual = parseFloat(document.getElementById("pesoActual").value);
    const estatura = parseFloat(document.getElementById("Estatura").value) / 100; // Convertir cm a metros

    // Calcular el peso ideal usando la fórmula de Lorentz
    let pesoIdeal;
    if (sexo == "Hombre") {
        pesoIdeal = estatura * 100 - 100 - (estatura * 100 - 150) / 4;
    } else if (sexo == "Mujer") {
        pesoIdeal = estatura * 100 - 100 - (estatura * 100 - 150) / 2;
    }

    // Calcular el IMC
    const imc = pesoActual / (estatura * estatura);

    // Determinar el estado del IMC
    let estadoIMC, colorIMC;
    if (imc < 18.5) {
        estadoIMC = 'Delgado';
        colorIMC = 'primary';
    } else if (imc >= 18.5 && imc <= 24.99) {
        estadoIMC = 'Normal';
        colorIMC = 'success';
    } else if (imc >= 25 && imc <= 29.99) {
        estadoIMC = 'Sobrepeso';
        colorIMC = 'warning';
    } else if (imc >= 30 && imc <= 34.99) {
        estadoIMC = 'Obesidad Tipo I';
        colorIMC = 'danger';
    } else if (imc >= 35 && imc <= 39.99 ) {
        estadoIMC = 'Obesidad Tipo II';
        colorIMC = 'danger';
    } else {
        estadoIMC = 'Obesidad Tipo III';
        colorIMC = 'danger';
    }

    // Mostrar los resultados 
    mostrarResultado(
        '<div class="alert alert-light bg-secondary text-white" role="alert">' +
        '<h4 class="alert-heading">Resultados:</h4>' +
        '<p><strong>Edad:</strong> ' + edad + ' años</p>' +
        '<p><strong>Sexo:</strong> ' + sexo + '</p>' +
        '<p><strong>Peso Actual:</strong> ' + pesoActual.toFixed(2) + ' kg</p>' +
        '<p><strong>Peso Ideal:</strong> ' + pesoIdeal.toFixed(2) + ' kg</p>' +
        '<p><strong>IMC:</strong> ' + imc.toFixed(2) + ' <span class="badge bg-' + colorIMC + '">' + estadoIMC + '</span></p>' +
        '</div>', 'light'
    );
}

// Función para mostrar el resultado 
function mostrarResultado(mensaje, tipo) {
    document.getElementById("resultado").innerHTML = '<div class="alert alert-' + tipo + '" role="alert">' + mensaje + '</div>';
}

// Agregar un evento al formulario para calcular al enviar
document.getElementById("form_pesoIdeal").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevenir el envío del formulario
    calcularPesoIdeal(); // Llamar a la función de cálculo
});
