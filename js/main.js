function tipo_edad(){
    //valores ingresados
    let edad = parseFloat(document.getElementById("edad").value);
    let resultado_edad;
    // Utilizar if else para determinar las condiones y operaciones
    if(edad <= 12 ){
        resultado_edad = "Eres un niño con una edad de: "+edad+" Años";
        document.getElementById("resultado").innerHTML = "<div class='alert alert-primary' role='alert'>  "+resultado_edad+" <img src='img/niño.png'></div>";
    }else{
        if(edad > 12 && edad <= 40 ){
            resultado_edad =  "Eres un joven con una edad de: "+edad+" Años";
            document.getElementById("resultado").innerHTML = "<div class='alert alert-primary' role='alert'>  "+resultado_edad+" <img src='img/joven.png'></div>";
        }else{
            if(edad > 40 && edad <= 60){
                resultado_edad = "Eres un adulto con una edad de: "+edad+" Años";
                document.getElementById("resultado").innerHTML = "<div class='alert alert-primary' role='alert'>  "+resultado_edad+" <img src='img/adulto.png'></div>";
            }else{
                if(edad > 60){
                    resultado_edad = "Eres un adulto mayor con una edad de: "+edad+" Años";
                    // Mostrar el resultado
                    document.getElementById("resultado").innerHTML = "<div class='alert alert-primary' role='alert'>  "+resultado_edad+" <img src='img/mayor.png'></div>";
                }
            }
        }
    }
 }


 function zapateria() {
    // valores ingresados
    let cantidad = parseFloat(document.getElementById("cantidad").value);
    let precio = parseFloat(document.getElementById("precio").value);
    let descuento = 0;
    let resultado_venta = cantidad * precio;

    // Utilizar if else para determinar las condiciones y operaciones
    if (cantidad >= 10 && cantidad <= 20) {
        descuento = resultado_venta * 0.10;
    } else if (cantidad > 20 && cantidad < 30) {
        descuento = resultado_venta * 0.20;
    } else if (cantidad >= 30) {
        descuento = resultado_venta * 0.40;
    }

    resultado_venta -= descuento;

    // Mostrar el resultado
    document.getElementById("resultado_venta").innerHTML = `
        <div class="alert alert-success" role="alert">
            <strong>Total de la compra:</strong> $${resultado_venta.toFixed(2)}
        </div>`;
}

function pesoEstatura() {
    var sexo = document.getElementById("sexo").value;
    var edad = parseInt(document.getElementById("edadPesoEstatura").value);

    if (isNaN(edad)) {
        document.getElementById("resultadoPesoEstatura").innerHTML = `
            <div class="alert alert-danger" role="alert">
                Por favor, ingrese un valor entero válido para la edad.
            </div>`;
        return;
    }

    var genero, pesoEstimado, estaturaEstimada;
    if (sexo === "H") {
        genero = "un hombre";
        if (11 <= edad && edad <= 14) {
            pesoEstimado = 45;
            estaturaEstimada = 157;
        } else if (15 <= edad && edad <= 18) {
            pesoEstimado = 66;
            estaturaEstimada = 176;
        } else if (19 <= edad && edad <= 24) {
            pesoEstimado = 72;
            estaturaEstimada = 177;
        } else if (25 <= edad && edad <= 50) {
            pesoEstimado = 79;
            estaturaEstimada = 176;
        } else {
            pesoEstimado = 77;
            estaturaEstimada = 173;
        }
    } else {
        genero = "una mujer";
        if (11 <= edad && edad <= 14) {
            pesoEstimado = 46;
            estaturaEstimada = 157;
        } else if (15 <= edad && edad <= 18) {
            pesoEstimado = 55;
            estaturaEstimada = 163;
        } else if (19 <= edad && edad <= 24) {
            pesoEstimado = 58;
            estaturaEstimada = 164;
        } else if (25 <= edad && edad <= 50) {
            pesoEstimado = 63;
            estaturaEstimada = 163;
        } else {
            pesoEstimado = 65;
            estaturaEstimada = 160;
        }
    }

    document.getElementById("resultadoPesoEstatura").innerHTML = `
        <div class="alert alert-success" role="alert">
            Para ${genero} de ${edad} años, el peso estimado es de ${pesoEstimado} kg y la estatura estimada es de ${estaturaEstimada} cm.
        </div>`;
}
function IMC() {
    var peso = parseFloat(document.getElementById("peso").value);
    var estatura = parseFloat(document.getElementById("estatura").value);

    if (!isNaN(peso) && !isNaN(estatura) && peso > 0 && estatura > 0) {
        var imc = peso / (estatura * estatura);
        var resultado = '';

        if (imc < 18.5) {
            resultado = 'Usted tiene bajo peso'; document.getElementById("resultado_IMC").innerHTML = `
            <div class="alert alert-primary" role="alert">
                ${resultado}
            </div>`;
        } else if (imc >= 18.5 && imc <= 24.9) {
            resultado = 'Usted tiene un peso normal'; document.getElementById("resultado_IMC").innerHTML = `
            <div class="alert alert-success" role="alert">
                ${resultado}
            </div>`;
        } else if (imc >= 25 && imc <= 29.9) {
            resultado = 'Usted tiene sobrepeso'; document.getElementById("resultado_IMC").innerHTML = `
            <div class="alert alert-warning" role="alert">
                ${resultado}
            </div>`;
        } else if (imc >= 30 && imc <= 34.9) {
            resultado = 'Usted tiene obesidad tipo I'; document.getElementById("resultado_IMC").innerHTML = `
            <div class="alert alert-danger" role="alert">
                ${resultado}
            </div>`;
        } else if (imc >= 35 && imc <= 39.9) {
            resultado = 'Usted tiene obesidad tipo II'; document.getElementById("resultado_IMC").innerHTML = `
            <div class="alert alert-danger" role="alert">
                ${resultado}
            </div>`;
        } else if (imc >= 40 && imc <= 49.9) {
            resultado = 'Usted tiene obesidad tipo III'; document.getElementById("resultado_IMC").innerHTML = `
            <div class="alert alert-danger" role="alert">
                ${resultado}
            </div>`;
        } else {
            resultado = 'Usted tiene obesidad tipo IV'; document.getElementById("resultado_IMC").innerHTML = `
            <div class="alert alert-danger" role="alert">
                ${resultado}
            </div>`;
        }


    } else {
        document.getElementById("resultado_IMC").innerHTML = `
            <div class="alert alert-danger" role="alert">
                Por favor, ingrese valores numéricos válidos para el peso y la estatura.
            </div>`;
    }
}





