const container = document.querySelector('.buttons-container');

for (let i = 0; i < 26; i++) {
    const button = document.createElement('button');
    button.textContent = String.fromCharCode(65 + i);
    button.addEventListener('click', () => {
        window.location.href = `/${button.textContent.toLowerCase()}` //fix
    });
    //console.log(typeof (button.textContent));
    container.appendChild(button);
}

