const inputDataIda = document.getElementById('voo-data-ida');
const inputDataRetorno =  document.getElementById('voo-data-volta');
const inputEstadiaCheckin = document.getElementById('estadia-checkin');
const inputEstadiaCheckout = document.getElementById('estadia-checkout');

inputDataIda.addEventListener('focus', () => {
  const dataAtual = new Date();
  const dia = String(dataAtual.getDate()).padStart(2, '0');
  const mes = String(dataAtual.getMonth() + 1).padStart(2, '0');
  const ano = dataAtual.getFullYear();
  inputDataIda.value = `${dia}/${mes}/${ano}`;
  inputDataRetorno.value = `${dia}/${mes}/${ano}`;
  inputEstadiaCheckin.value = `${dia}/${mes}/${ano}`;
  inputEstadiaCheckout.value = `${dia}/${mes}/${ano}`;
});

inputDataIda.addEventListener('blur', () => {
  const dataDigitada = inputDataIda.value;
});