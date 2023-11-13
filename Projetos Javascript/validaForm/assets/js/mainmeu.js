class ValidaFormulario {
  constructor() {
    this.formulario = document.querySelector('.formulario');
    this.eventos();
  };

  eventos() {
    this.formulario.addEventListener('submit', e => {
      e.preventDefault();

      const camposSaoValidos = this.camposSaoValidos();
      const senhasSaoValidas = this.senhasSaoValidas();

      if (camposSaoValidos && senhasSaoValidas) {
        alert('Formulário enviado.');
        this.formulario.submit();
      }

    })
  };

  senhasSaoValidas() {
    const senha = this.formulario.querySelector('.senha');
    const repetirSenha = this.formulario.querySelector('.repetir-senha');

    let valid = true;

    if (senha.value !== repetirSenha.value) {
      this.criaErro(senha, 'As senhas devem ser iguais.');
      this.criaErro(repetirSenha, 'As senhas devem ser iguais.');
      valid = false;
    }

    if (senha.value.length < 6 || senha.value.length > 12) {
      this.criaErro(senha, 'A senha deve conter entre 6 e 12 caracteres.');
      valid = false;
    }

    return valid;
  };

  camposSaoValidos() {
    let valid = true;

    for (let error of this.formulario.querySelectorAll('.error-text')) {
      error.remove();
    };

    for (let campo of this.formulario.querySelectorAll('.validar')) {
      const label = campo.previousElementSibling.innerText;

      if (!campo.value) {
        this.criaErro(campo, `Campo "${label}" está vazio.`);
        valid = false;
      }

      if (campo.classList.contains('usuario')) {
        if (!this.validaUsuario(campo)) valid = false;
      }

      if (campo.classList.contains('cpf')) {
        if (!this.validaCPF(campo)) valid = false;
      }
    };

    return valid;
  };

  validaCPF(campo) {
    const cpf = new ValidaCPF(campo.value);

    if (!cpf.valida()) {
      this.criaErro(campo, 'CPF inválido.')
      return false;
    }

    return true;
  };

  validaUsuario(campo) {
    let valid = true;

    if (campo.value.length < 3 || campo.value.length > 12) {
      this.criaErro(campo, 'O nome de usuário deve conter entre 3 e 12 caracteres.')
      valid = false;
    }

    if (!campo.value.match(/^[a-zA-Z0-9]+$/g)) {
      this.criaErro(campo, 'O nome de usuário pode conter apenas letras e/ou números.');
      valid = false;
    };

    return valid;
  };

  criaErro(campo, msg) {
    const div = document.createElement('div');
    div.innerHTML = msg;
    div.classList.add('error-text');
    campo.insertAdjacentElement('afterend', div);
  };

};

const cpf = new ValidaFormulario();