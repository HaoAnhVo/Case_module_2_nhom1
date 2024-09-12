function closePopup() {
    var popup = document.getElementById("popup");
    if (popup) {
        popup.style.display = "none";
    }
}

// Automatically close popup after 3 seconds
setTimeout(function () {
    closePopup();
}, 3000);

function validatePassword() {
    var password = document.getElementById("register-password").value;
    var confirm_password = document.getElementById("register-confirm-password").value;
    var message = document.getElementById("message-confirm");

    if (password !== confirm_password) {
        message.textContent = "Mật khẩu không trùng khớp";
        return false;
    } else {
        message.textContent = "";
        return true
    }
}


document.getElementById('search-input').addEventListener('input', function () {
    let keyword = this.value.trim();
    let encodedKeyword = keyword.replace(/[^a-zA-Z0-9]/g, function(c) {
        return '%' + c.charCodeAt(0).toString(16).toUpperCase();
    });

    if (keyword.length > 1) {
        fetch(`search?keyword=${encodedKeyword}`)
            .then(response => response.json())
            .then(suggestions => {
                let suggestionBox = document.getElementById('suggestion-box');
                suggestionBox.innerHTML = '';
                suggestions.forEach(suggestion => {
                    let suggestionItem = document.createElement('div');
                    suggestionItem.classList.add('suggestion-item');
                    suggestionItem.textContent = suggestion.name;

                    suggestionItem.addEventListener('click', function () {
                        if (suggestion.type === 'location') {
                            window.location.href = `LocationServlet?action=getPostsByLocation&locationId=${suggestion.id}`;
                        } else if (suggestion.type === 'category') {
                            window.location.href = `PostServlet?action=getPostsByCategory&categoryId=${suggestion.id}`;
                        }
                    });
                    suggestionBox.appendChild(suggestionItem);
                });
                suggestionBox.style.display = 'block';
            })
            .catch(error => console.error('Error:', error));
    } else {
        document.getElementById('suggestion-box').style.display = 'none';
    }
});



