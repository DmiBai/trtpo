let orders = document.getElementById('orders');

axios.post('../handlers/account.php', {
    user: getCookie('user')
}).then(
    (res) => {
        console.log(res.data);
        let table;
        table = `<table style="border:1px solid black;"><tr>`;
        res.data.forEach(item => {
            table += `<td>${item[0]}-${item[1]}</td>`;
            table += `<td>Отправление: ${item[2].slice(0, -3)}</td>`;
            table += `<td>${item[3]}</td> </tr>`;
        });
        table += `</table>`;
        orders.innerHTML = table;
    });

function getCookie(name) {
    let matches = document.cookie.match(new RegExp(
        "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
    ));
    return matches ? decodeURIComponent(matches[1]) : undefined;
}