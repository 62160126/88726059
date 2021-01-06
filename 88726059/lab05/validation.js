function formValidation(){
    var uid = document.registform.userid;
    var passid = document.registform.passif;
    var uname = document.registform.username;
    var uadd = document.registform.address;
    var ucountry = document.registform.country;
    var uzip = document.registform.zip;
    var uemail = document.registform.email;
    var usex = document.registform.sex;

    if(validateUserID(uid,5,12)){
        if(validatePassword(passid,7,12)){
            if(allLetter(uname)){
                if (alphanumeric(uadd)){
                    if(countryselect(ucountry)){
                        if (allnumeric(uzip)){
                            if(validateEmail(uemail)){
                                if(validateGender(usex)){}
                            }
                        }
                    }
                }
            }           
        }

    }
    return false;
}

function validateUserID(uid,min,max){
    var error = "";
    var illegalChars = /\w/;

    if(uid.value==""){
        uid.style.background='Yellow';
        error = "User ID\n";
        alert(error);
        uid.docus();
        return false;
    }else if ((uid.value.length<min)||(uid.value.length>max)){
        uid.style.background = 'Yellow';
        error = "User ID";
        alert(error);
        uid.focus();
        return false;
    }else{
        uid.style.background = 'white';
    }
    return true;
}
function validatePassword(passid,min,max){
    var error = "";
    var illegalChars =/[\w_]/;

    if(passid.value == ""){
        passid.style.background = 'Yellow';
        error = "Password\n";
        alert(error);
        passid.focus();
        return false;
    }else if((passid.value.length<7)||(passid.value.length>15)){
        error="Password" +min+"-"+max+"\n";
        passid.style.background = 'Yellow';
        alert(error);
        passid.focus();
        return false;
    }else if(illegalChars.test(passid.value)){
        error="Password\n";
        passid.style.background='Yelllow';
        alert(error);
        passid.focus();
        return false
    }else if ((passid.value.search(/[a-zA-Z]+/)==1)||(passid.value.search(/[0-9]+/)==-1)){
        error = "password\n";
        passid.style.background = 'Yellow';
        alert(error);
        passid.focus();
        return false;
    }else {
        passid.style.background='white';
    }
    return true;
}
function allLetter(uname){
    var letters = /^[A-Za-z]+$/;
    if(uname.value.match(letters)){
        return true;
    }else {
        alert('Username');
        uname.focus();
        return false;
    }
}
function alphanumeric(uaddr){
    var letters=/^[0-9a-zA-Z]+$/;
    if (uname.value.match(letters)){
        return true;
    }else {
        alert('Address');
        uname.focus();
        return false;
    }
}
function countryselect(ucontry){
    if(ucountry.value == "Default"){
        alert('Country');
        ucontry.focus();
        return false;
    } else {
        return true;
    }
}
function allnumeric(uzip){
    var numbers = /^[0-9]+$/;
    if(uzip.value.match(numbers)){
        return true;
    } else{
        alert('Zip code');
        uzip.focus();
        return false
    }
}
function validateEmail(uemail){
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)([a-zA-Z0-9]{2,4})+$/;
    if(!filter.test(uemail.value)){
        alert('Email');
        uemail.focus();
        return false;
    } else{
        return true;
    }
}
function validateGender(usex){
    var x = 0
    for (i=0;i<usex.length;++i){
        if (usex[i].checked)
        x++
    }
    if(x==0){
        alert('choose sex');
        return false;
    }else{
        alert('Form Successfully Submitted')
    }
}