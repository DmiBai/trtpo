let btn = document.getElementById('send-btn');

let result = document.getElementById('result');

btn.addEventListener('click', () => {

    let name = document.getElementsByName('name')[0].value;
    let phone = document.getElementsByName('phone')[0].value;
    let password = document.getElementsByName('password')[0].value;

    axios({
        method: 'post',
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        url: '../handlers/reg.php',
        data: {
            'name': name,
            'phone': phone,
            'password': password
        }
    }).then(res => {
        console.log(res);
        if (res.data == 'error') {
            result.innerHTML = "Ошибка. Проверьте правильность введенных данных.";
        } else {
            result.innerHTML = "Успешная регистрация! <a href='../pages/auth.html'> Перейдите для авторизации </a>"
        }
    });
});