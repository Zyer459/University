/*const login = () => {
    const password = document.getElementById("password").value;
    const email = document.getElementById("email").value;
    const specialChars = "._-+@";

    if (typeof email !== 'string') {
        return '"Invalid"';
    }
    if (specialChars.includes(email[0]) || email.includes(" ") || !email.endsWith(".com") || typeof email !== 'string' || (email.match(/@/g) || []).length !== 1) {
        alert("Please put a valid email")
    }

    else {
        if (password == 1234) {
            alert('Successfully logged in');
        }
        else {
            alert("Wrong password");
        }
    }

}
*/
function login() {
    const password = document.getElementById("password").value;
    const email = document.getElementById("email").value;
    const specialChars = "._-+@";
    
    if (typeof email !== 'string') {
        return '"Invalid"';
    }
    if (specialChars.includes(email[0]) || email.includes(" ") || !email.endsWith(".com") || typeof email !== 'string' || (email.match(/@/g) || []).length !== 1) {
        alert("Please put a valid email")
    }
    
    console.log('ok')
    $.ajax({
        url: '/login',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({ password: password, email: email }),
        success: function (response) {
            console.log(response.result);
            if (response.result === '200') {
            	// Redirect to the home page if login is successful
            	alert('Successfully logged in');
            	window.location.href = response.redirect; //changes the URL in browser window
            }
            else if (response.result === '404') {
            	alert("Wrong email or password");
            }
        },
        error: function (error) {
            console.log(error);
        }
    });
}
