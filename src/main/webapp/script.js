
document.getElementById('weatherForm').addEventListener('submit', function(event) {
        event.preventDefault(); 

        var cityInput = document.getElementById('city');
        var errorMsg = document.getElementById('errorMsg');

        if (cityInput.value.trim() === '') {
            errorMsg.style.display = 'block'; 
        } else {
            errorMsg.style.display = 'none'; 
            this.submit(); 
        }
    });