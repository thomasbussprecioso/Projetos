function calcImc() {
    const form = document.querySelector('.container');
    const peso = document.querySelector('#peso');
    const altura = document.querySelector('#altura');
    const resultado = document.querySelector('#resultado');

    function calcImc2 (e) {
        e.preventDefault();
        
        const IMC = peso.value / (altura.value * altura.value);

    
        if (Number(peso.value) == '' || Number(altura.value) == '' || isNaN(IMC)) {
            console.log(IMC)
            resultado.innerHTML = `Informações inválidas.`
            resultado.classList.add('bad')
        };

        if (IMC < 18.5 && peso.value > 0) {
            resultado.classList.remove('bad')
            resultado.classList.add('paragrafo-resultado')
            resultado.innerHTML = `Seu IMC é ${IMC.toFixed(2)}. Abaixo do peso.`
        } else if (IMC >= 18.5 && IMC <= 24.9) {
            resultado.classList.remove('bad')
            resultado.classList.add('paragrafo-resultado')
            resultado.innerHTML = `Seu IMC é ${IMC.toFixed(2)}. Peso normal.`
        } else if (IMC >= 25 && IMC <= 29.9) {
            resultado.classList.remove('bad')
            resultado.classList.add('paragrafo-resultado')
            resultado.innerHTML = `Seu IMC é ${IMC.toFixed(2)}. Sobrepeso.`
        } else if (IMC >= 30 && IMC <= 34.9) {
            resultado.classList.remove('bad')
            resultado.classList.add('paragrafo-resultado')
            resultado.innerHTML = `Seu IMC é ${IMC.toFixed(2)}. Obesidade grau 1.`
        } else if (IMC >= 35 && IMC <= 39.9) {
            resultado.classList.remove('bad')
            resultado.classList.add('paragrafo-resultado')
            resultado.innerHTML = `Seu IMC é ${IMC.toFixed(2)}. Obesidade grau 2.`
        } else if (IMC >= 40 && altura.value != 0) {
            resultado.classList.remove('bad')
            resultado.classList.add('paragrafo-resultado')
            resultado.innerHTML = `Seu IMC é ${IMC.toFixed(2)}. Obesidade grau 3.`
        };

    };

    form.addEventListener('submit', calcImc2);

};

calcImc();