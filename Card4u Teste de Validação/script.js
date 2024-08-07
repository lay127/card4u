// Adiciona um evento de 'submit' ao formulário de cadastro
/*document.getElementById('signupForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Impede o envio do formulário para validar os dados primeiro

    // Obtém os valores dos campos do formulário
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
    const confirmPassword = document.getElementById('confirmPassword').value;
    const dob = document.getElementById('dob').value;
    const state = document.getElementById('state').value;
    const city = document.getElementById('city').value;

    // Valida o formulário
    const formIsValid = validateForm(username, password, confirmPassword, dob, state, city);

    if (formIsValid) {
        showSuccess('Formulário enviado com sucesso!'); // Exibe mensagem de sucesso se o formulário for válido
        // Aqui você pode prosseguir com o envio do formulário ou qualquer outra ação
    }
});*/

// Função para validar todos os campos do formulário
function validateForm(username, password, confirmPassword, dob, state, city) {
    let isValid = true; // Inicializa a variável de validação como verdadeira

    // Limpa mensagens de erro anteriores
    clearErrors();

    // Valida o nome de usuário
    if (!validateUsername(username)) {
        showError('usernameError', 'O nome de usuário deve ter no mínimo 5 caracteres e conter apenas letras e números.');
        isValid = false; // Marca como inválido se houver erro
    }
    // Valida a senha
    if (!validatePassword(password)) {
        showError('passwordError', 'A senha deve ter no mínimo 8 caracteres, incluindo pelo menos uma letra maiúscula, uma letra minúscula, um número e um caractere especial.');
        isValid = false;
    }
    // Verifica se a confirmação da senha corresponde à senha
    if (!validateConfirmPassword(password, confirmPassword)) {
        showError('confirmPasswordError', 'As senhas não coincidem.');
        isValid = false;
    }
    // Valida a idade do usuário
    if (!validateAge(dob)) {
        showError('dobError', 'Você deve ter pelo menos 18 anos.');
        isValid = false;
    }
    // Verifica se o estado foi selecionado
    if (!state) {
        showError('stateError', 'Por favor, selecione um estado.');
        isValid = false;
    }
    // Verifica se a cidade foi selecionada
    if (!city) {
        showError('cityError', 'Por favor, selecione uma cidade.');
        isValid = false;
    }

    return isValid; // Retorna se o formulário é válido ou não
}

// Função para limpar todas as mensagens de erro e sucesso
function clearErrors(errorElementsSelector = '.error', successElementId = 'successMessage') {
    // Seleciona todos os elementos com o seletor de erros e limpa o texto
    const errorElements = document.querySelectorAll(errorElementsSelector);
    errorElements.forEach(el => el.textContent = '');
    // Limpa a mensagem de sucesso
    const successElement = document.getElementById(successElementId);
    if (successElement) {
        successElement.textContent = '';
    }
}

// Função para exibir uma mensagem de erro
function showError(elementId, message) {
    const errorElement = document.getElementById(elementId);
    errorElement.textContent = message; // Define o texto da mensagem de erro
    return true; // Retorna true para indicar que a mensagem de erro foi exibida
}

// Função para exibir uma mensagem de sucesso
function showSuccess(message) {
    const successElement = document.getElementById('successMessage');
    if (successElement) {
        successElement.textContent = message; // Define o texto da mensagem de sucesso
    }
    return true; // Retorna true para indicar que a mensagem de sucesso foi exibida
}

// Adiciona um evento de 'change' ao campo de seleção de estado
/*document.getElementById('state').addEventListener('change', function(event) {
    const state = event.target.value; // Obtém o valor do estado selecionado
    const citySelect = document.getElementById('city');
    // Reseta o campo de cidades e o desabilita se nenhum estado for selecionado
    citySelect.innerHTML = '<option value="">Selecione a Cidade</option>';
    citySelect.disabled = !state;

    // Adiciona as cidades correspondentes ao estado selecionado
    if (state) {
        addCities(getCitiesByState(state));
    }
});*/

// Função para adicionar as opções de cidades ao campo de seleção
function addCities(cities) {
    const citySelect = document.getElementById('city');
    cities.forEach(function(city) {
        const option = document.createElement('option');
        option.value = city;
        option.textContent = city;
        citySelect.appendChild(option); // Adiciona a cidade à lista de opções
    });
    citySelect.disabled = false; // Habilita o campo de cidades
    return true; // Retorna true para indicar que as cidades foram adicionadas
}

// Função para retornar a lista de cidades com base no estado selecionado
function getCitiesByState(state) {
    switch (state) {
        case 'SP': return ['São Paulo', 'Campinas', 'Santos'];
        case 'RJ': return ['Rio de Janeiro', 'Niterói', 'Petrópolis'];
        case 'MG': return ['Belo Horizonte', 'Uberlândia', 'Juiz de Fora'];
        case 'ES': return ['Vitória', 'Vila Velha', 'Serra'];
        default: return []; // Retorna uma lista vazia se o estado não estiver na lista
    }
}

// Função para validar o nome de usuário
function validateUsername(username) {
    const minLength = 5; // Tamanho mínimo do nome de usuário
    const usernameRegex = /^[a-zA-Z0-9]+$/; // Expressão regular para permitir apenas letras e números

    // Retorna verdadeiro se o nome de usuário atender aos critérios, caso contrário, retorna falso
    return username.length >= minLength && usernameRegex.test(username);
}

// Função para validar a senha
function validatePassword(password) {
    const minLength = 8; // Tamanho mínimo da senha
    const uppercaseRegex = /[A-Z]/; // Verifica se há pelo menos uma letra maiúscula
    const lowercaseRegex = /[a-z]/; // Verifica se há pelo menos uma letra minúscula
    const numberRegex = /\d/; // Verifica se há pelo menos um número
    const specialCharRegex = /[!@#$%^&*(),.?":{}|<>]/; // Verifica se há pelo menos um caractere especial

    // Retorna verdadeiro se todos os critérios forem atendidos, caso contrário, retorna falso
    return password.length >= minLength &&
           uppercaseRegex.test(password) &&
           lowercaseRegex.test(password) &&
           numberRegex.test(password) &&
           specialCharRegex.test(password);
}

// Função para validar se a confirmação da senha coincide com a senha
function validateConfirmPassword(password, confirmPassword) {
    // Retorna verdadeiro se as senhas coincidirem, caso contrário, retorna falso
    return password === confirmPassword;
}

// Função para validar a idade do usuário
function validateAge(dob) {
    if (!dob) return false; // Retorna falso se a data de nascimento não estiver preenchida

    const today = new Date(); // Data atual
    const birthDate = new Date(dob); // Data de nascimento
    let age = today.getFullYear() - birthDate.getFullYear(); // Calcula a idade com base no ano

    const monthDiff = today.getMonth() - birthDate.getMonth(); // Diferença de meses entre a data atual e a data de nascimento

    // Ajusta a idade se o mês ou o dia ainda não tiver passado
    if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }

    // Retorna verdadeiro se a idade for 18 ou mais, caso contrário, retorna falso
    return age >= 18;
}

module.exports = {validateConfirmPassword, validatePassword}