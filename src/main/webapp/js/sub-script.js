function closePopup() {
    var popup = document.getElementById("popup");
    if (popup) {
        popup.style.display = "none";
    }
}

// Automatically close popup after 3 seconds
setTimeout(function() {
    closePopup();
}, 3000);

function validatePassword() {
    var password = document.getElementById("register-password").value;
    var confirm_password = document.getElementById("register-confirm-password").value;
    var message = document.getElementById("message-confirm");

    if (password !== confirm_password) {
        message.textContent = "Mật khẩu không trùng khớp";
        return false;
    }

    return true;
}
