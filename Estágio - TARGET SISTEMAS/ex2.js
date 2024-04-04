function sequenciaFibonacci(n) {
  let teste1 = (5 * n * n + 4);
  let teste2 = (5 * n * n - 4);

  let aux1 =  Math.trunc(Math.sqrt(teste1));
  let aux2 =  Math.trunc(Math.sqrt(teste2));

  if (Math.sqrt(teste1) === aux1 || Math.sqrt(teste2) === aux2) {
    console.log('Faz parte da sequência Fibonacci.');
  } else {
    console.log('Não faz parte da sequência Fibonacci.');
  }
}

sequenciaFibonacci(8);