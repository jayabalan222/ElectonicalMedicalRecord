function UserIdValidation() {
    var UserId = document.getElementById("UserId").value;
    var UserIdreq = /^[A-Za-z0-9]+$/
    if (UserId != "") {
         if (!UserId.match(UserIdreq)) {

             document.getElementById("UserIdError").innerHTML = "Special Characters Not Allowed"
         } else {
             document.getElementById("UserIdError").innerHTML = ""
         }
    } else {
         document.getElementById("UserIdError").innerHTML = "*"
    }

}

function PasswordValidation() {
    var PasswordName = document.getElementById("Password").value;
    
    if (PasswordName != "") {
                       document.getElementById("PasswordError").innerHTML = ""
         
    } else {
         document.getElementById("PasswordError").innerHTML = "*"
    }
}
