console.log(getCookie('user'));
let userCookie = undefined;
if (getCookie('user') !== undefined) {
    userCookie = getCookie('user');
} else {
    document.body.innerHTML =  "    <div>\n" +
        "    <h1>Вход в личный кабинет</h1>\n" +
        "\n" +
        "<div>\n" +
        "\n" +
        "    <div>\n" +
        "        <h2>\n" +
        "            Авторизируйтесь или зарегистрируйтесь, чтобы заказывать билеты\n" +
        "        </h2>\n" +
        "            <div>\n" +
        "                <div>\n" +
        "\n" +
        "                    <button><a href=\"../pages/auth.html\">Войти</a> </button>\n" +
        "                    <button><a href=\"../pages/reg.html\">Зарегистрироваться</a> </button>\n" +
        "                </div>\n" +
        "            </div>\n" +
        "\n" +
        "    </div>\n" +
        "\n" +
        "</div>\n" +
        "    </div>\n" +
        " </div>";
}


let array = [];
let select1 = document.getElementById('s1');
let select2 = document.getElementById('s2');
let date = document.getElementById('date4');
let search_btn = document.getElementById('search');
let search_res = document.getElementById('search_result');
let exit_btn = document.getElementById('exit');
let acc_btn = document.getElementById('account');

let fromVal;
let toVal;
let dateVal;

axios.post('/handlers/cities.php', {cities: true}).then((res) => {
    array = res.data;
    console.log(array);
    array.forEach(item => {
        select1.innerHTML += `<option value='${item[0]}'> ${item[0]} </option>`
    });
});

select1.addEventListener('change', () => {
    select2.innerHTML = '<option selected="selected" value="default">Куда</option>';
    if (select1.value !== 'default') {
        console.log(select1.value);

        axios.post('./handlers/routes.php', {from: select1.value}).then(
            (res) => {
                array = res.data;
                array.forEach(item => {
                    select2.innerHTML += `<option value='${item[0]}'> ${item[0]} </option>`
                });
            }
        );
    }
});


search_btn.addEventListener('click', () => {
    fromVal = select1.value;
    toVal = select2.value;
    dateVal = date.value;

    axios.post('./handlers/search.php', {
        from: fromVal,
        to: toVal,
        date: getDayOfWeek(date.value),
    }).then(
        (res) => {
            let timeSet = (String)(res.data[0]).split(',');
            console.log(timeSet);
            let table;
            table = `<table id="result" style="border:1px solid black;">`;
            table += `<tr><th>Маршрут</th><th>Дата</th><th>Время</th>`;

            timeSet.forEach(item => {
                table += `<tr><td>${fromVal} - ${toVal}</td>`;
                table += `<td>${dateVal}</td>`;
                table += `<td>${item}</td>`;
                table += `<td><button id="order" onclick="order('${item}')" `;
                table +=`value="${item}">Заказать</button></td>`;
            });
        table+='</table>';
        search_res.innerHTML = table;
        }
    )
});

function order(time) {
    console.log(fromVal + ' ' + toVal + ' ' + dateVal + ' ' + time + ' ' + userCookie);

    axios.post('./handlers/order.php', {
        from: fromVal,
        to: toVal,
        date: dateVal,
        time: time,
        user: userCookie
    }).then(
        (res) => {
            console.log(res.data);
            if(res.data === []){
                alert('Билет заказан!')
            } else {
                alert('Произошла ошибка при заказе.')
            }
        }
    )
}

exit_btn.addEventListener('click', ()=>{
    document.cookie = "user=" + userCookie + "; max-age=-3600; path=/;";
    window.location.reload();

})



// Accepts a Date object or date string that is recognized by the Date.parse() method
function getDayOfWeek(date) {
    const dayOfWeek = new Date(date).getDay();
    return isNaN(dayOfWeek) ? null :
        ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'][dayOfWeek];
}

function getCookie(name) {
    let matches = document.cookie.match(new RegExp(
        "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
    ));
    return matches ? decodeURIComponent(matches[1]) : undefined;
}