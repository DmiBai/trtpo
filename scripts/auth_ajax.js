let btn = document.getElementById('send-btn');

let result = document.getElementById('result');

btn.addEventListener('click', () => {

    let phone = document.getElementsByName('phone')[0].value;
    let password = document.getElementsByName('password')[0].value;

    console.log(phone);
    axios({
        method: 'post',
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        url: '../handlers/auth.php',
        data: {
            phone: phone,
            password: password
        }
    }).then(res => {
        console.log(res);
        if (res.data == 'success') {
            document.cookie = "user=" + phone + "; path=/; max-age=3600; ";
            result.innerHTML = "Добро пожаловать! <br> " +
                "<a href='../index.html'> Перейти к заказу </a>";
            console.log(phone);
        } else {
            result.innerHTML = "Неправильные данные <br>";
        }

    });
});