function FirstNameValidation() {
     var FirstName = document.getElementById("FirstName").value;
     var FirstNamereq = /^[A-Za-z]+$/
     if (FirstName != "") {
          if (!FirstName.match(FirstNamereq)) {

              document.getElementById("FirstNameError").innerHTML = "Only Alphabets"
          } else {
              document.getElementById("FirstNameError").innerHTML = ""
          }
     } else {
          document.getElementById("FirstNameError").innerHTML = "*"
     }

}
function LastNameValidation() {
     var LastName = document.getElementById("LastName").value;
     var LastNamereq = /^[A-Za-z]+$/
     if (LastName != "") {
          if (!LastName.match(LastNamereq)) {

              document.getElementById("LastNameError").innerHTML = "Only Alphabets"
          } else {
              document.getElementById("LastNameError").innerHTML = ""
          }
     } else {
          document.getElementById("LastNameError").innerHTML = "*"
     }

}
function GenderValidation() {
    var Gender = document.getElementById("Gender").value;
    if(Gender=="--select--")
         {
         document.getElementById("GenderError").innerHTML = "Select Gender"
         }
    else
         {
         document.getElementById("GenderError").innerHTML = ""
         }
    
}



function AgeValidation()
{
     var age = document.getElementById("Age").value;
     var agereq = /^[0-9]+$/
     if(age != ""  )
          {
    	 if (!Age.match(Agereq)) {

             document.getElementById("AgeError").innerHTML = "Only Numbers"
        } else {
             document.getElementById("AgeError").innerHTML = ""
        }
   } else {
        document.getElementById("AgeError").innerHTML = "*"
   }
}

function ContactValidation() {
    var ContactNumber = document.getElementById("Contact").value;
    var ContactNumberreq = /^[0-9]+$/
  
         if (ContactNumber != "") {
         if (!ContactNumber.match(ContactNumberreq)) {

              document.getElementById("ContactNumberError").innerHTML = "Only Numbers"
         } else {
              document.getElementById("ContactNumberError").innerHTML = ""
         }
    } else {
         document.getElementById("ContactNumberError").innerHTML = "*"
    }

}

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

