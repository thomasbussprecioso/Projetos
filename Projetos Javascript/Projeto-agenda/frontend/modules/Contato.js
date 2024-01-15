import validator from 'validator';

export default class Contato {
  constructor(formClass) {
    this.form = document.querySelector(formClass);
  }

  init() {
    this.events();
  }

  events() {
    if (!this.form) return;
    this.form.addEventListener('submit', e => {
      e.preventDefault();
      this.validade(e);
    });
  }

  validade(e) {
    const el = e.target;
    const nomeInput = el.querySelector('input[name="nome"]');
    const sobrenomeInput = el.querySelector('input[name="sobrenome"]');
    const emailInput = el.querySelector('input[name="email"]');
    const telefoneInput = el.querySelector('input[name="telefone"]');
    let error = false;

    if (emailInput.value && !validator.isEmail(emailInput.value)) {
      alert('E-mail inválido.');
      error = true;
    }

    if(!nomeInput.value) {
      alert('Nome é um campo obrigatório.');
      error = true;
    }

    if(!emailInput.value && !telefoneInput.value) {
      alert('Pelo menos um contato precisa ser enviado: e-mail ou telefone.');
      error = true;
    }

    if (!error) el.submit();
  }
}