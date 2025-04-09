document.getElementById("login").classList.add("hidden");
document.getElementById("signup").classList.add("hidden");
document.getElementById("log_in").classList.add("hidden");

const login = () => {
    const password = document.getElementById("password").value;
    const email = document.getElementById("email").value;
    const specialChars = "._-+@";
    if(typeof email !== 'string')
    {
        return '"Invalid"';
    }
    if(specialChars.includes(email.length == 0))
    {
        alert("Please put a valid email")
    }

    else {
        if(password == 1234)
            {
                alert('Successfully logged in');
            }
            else{
                alert("Wrong password");
            }
    }
}

