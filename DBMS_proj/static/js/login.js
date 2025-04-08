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
document.getElementById("login").classList.add("hidden");
document.getElementById("signup").classList.add("hidden");
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
            	alert("Wrong Password");
            }
        },
        error: function (error) {
            console.log(error);
        }
    });
}

function register() {
    const email = document.getElementById("regemail").value;
    const name = document.getElementById("name").value;
    const mobile = document.getElementById("mobile").value;
    const password = document.getElementById("regpassword").value;
    const specialChars = "._-+@";
    
    if (typeof email !== 'string') {
        return '"Invalid"';
    }
    if (specialChars.includes(email[0]) || email.includes(" ") || !email.endsWith(".com") || typeof email !== 'string' || (email.match(/@/g) || []).length !== 1) {
        alert("Please put a valid email")
        return;
    }
    console.log(email)
    console.log('reg ok')
    $.ajax({
        url: '/register',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({ password: password, email: email, name: name, mobile: mobile}),
        success: function (response) {
            console.log(response.result);
            if (response.result === '200') {
            	// Redirect to the login page if registration successful
            	alert('Registration successful');
            	window.location.href = response.redirect; //changes the URL in browser window
            }
            else if (response.result === '404') {
            	alert("Registration incomplete");
            }
        },
        error: function (error) {
            console.log(error);
        }
    });
}

const signUp = () => {
    document.getElementById("log_in").classList.add("hidden");
    document.getElementById("wlcm").classList.add("hidden");
    document.getElementById("signup").classList.remove("hidden");
}

const logIn = () => {
    document.getElementById("log_in").classList.add("hidden");
    document.getElementById("wlcm").classList.add("hidden");
    document.getElementById("login").classList.remove("hidden");
    document.getElementById("signup").classList.add("hidden");
}