const inputTarefa = document.querySelector('.input-tarefa');
const btnTarefa = document.querySelector('.btn-tarefa');
const ulTarefas = document.querySelector('.tarefas');

inputTarefa.addEventListener('keypress', function(e) {
    if (e.keyCode === 13) {
        if (!inputTarefa.value) {
        return;
        }
    criaTarefas();
    };
});

function limpaInput() {
    inputTarefa.value = '';
    inputTarefa.focus();
};

function criaApagar(li) {
    const btnApagar = document.createElement('button');
    btnApagar.innerText = 'Apagar';
    btnApagar.setAttribute('class', 'apagar');
    li.appendChild(btnApagar);
};

function criaLi() {
    const li = document.createElement('li');
    return li;    
};

function criaTarefas() {
    const li = criaLi();
    li.innerText = inputTarefa.value + ' ';
    ulTarefas.appendChild(li);
    criaApagar(li);
    limpaInput();
};

document.addEventListener('click', function(e) {
    const el = e.target;
    if (el.classList.contains('apagar')){
        el.parentElement.remove();
    };
});

btnTarefa.addEventListener('click', function() {
    if (!inputTarefa.value) {
        return;
    };
    criaTarefas();
});