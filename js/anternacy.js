document.addEventListener('DOMContentLoaded', () => {
    const btnVoo = document.getElementById('btn-voo');
    const btnEstadia = document.getElementById('btn-estadia');
    const formVoo = document.getElementById('form-voo');
    const formEstadia = document.getElementById('form-estadia');
    const btnMostrarVoos = document.getElementById('btn-mostrar-voos');
    const btnMostrarEstadias = document.getElementById('btn-mostrar-estadias');

    btnVoo.classList.add('ativo');

    if (btnVoo && btnEstadia && formVoo && formEstadia && btnMostrarVoos && btnMostrarEstadias) {
        btnVoo.addEventListener('click', () => {
            btnVoo.classList.add('ativo');
            btnEstadia.classList.remove('ativo');
            formVoo.classList.remove('oculto');
            formEstadia.classList.add('oculto');
        });

        btnEstadia.addEventListener('click', () => {
            btnEstadia.classList.add('ativo');
            btnVoo.classList.remove('ativo');
            formEstadia.classList.remove('oculto');
            formVoo.classList.add('oculto');
        });

        btnMostrarVoos.addEventListener('click', () => {
            // Lógica para mostrar os voos
            console.log("Dados do voo:", {
                de: document.getElementById('voo-de').value,
                para: document.getElementById('voo-para').value,
                dataIda: document.getElementById('voo-data-ida').value,
                dataVolta: document.getElementById('voo-data-volta').value,
                quantidade: document.getElementById('voo-quantidade').value,
                classe: document.getElementById('voo-classe').value
            });
        });

        btnMostrarEstadias.addEventListener('click', () => {
            // Lógica para mostrar as estadias
            console.log("Dados da estadia:", {
                destino: document.getElementById('estadia-destino').value,
                checkin: document.getElementById('estadia-checkin').value,
                checkout: document.getElementById('estadia-checkout').value,
                quartos: document.getElementById('estadia-quartos').value,
                hospedes: document.getElementById('estadia-hospedes').value
            });
        });
    } else {
        console.error("Um ou mais elementos não foram encontrados no HTML.");
    }
});

