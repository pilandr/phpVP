<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>Admin</title>
</head>
<body>
    <h1>Admin panel</h1>
    <a href="{{route('/')}}">Выйти</a>
    <br> <br> <br> <br>
    <span>Email: </span>
    <input id="email" type="email" value="{{$email}}" name="email">
    <input type="button" value="Сохранить" onclick="saveEmail()">
    <div id="message"></div>
    <br> <br> <br> <br>
    <a href="{{route('admin.categories')}}">Категории</a>
    <br> <br>
    <a href="{{route('admin.products')}}">Товары</a>
    <br> <br>
    <a href="{{route('admin.orders')}}">Заказы</a>


    <script>
        async function saveEmail()
        {
            const email = document.querySelector('#email').value;
            const message = document.querySelector('#message');
            const formData = new FormData();
            formData.append('email', email);

            const headers = {
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
            }
            try {
                let response = await fetch('/admin/saveEmail', {
                    method: 'POST',
                    body: formData,
                    headers: headers,
                    credentials: "include"
                });
                const result = await response.json();
                if (result.result) {
                    message.innerHTML = '<span style="color:green">' + result.result + '</span>';
                    setTimeout(function () {
                        message.innerHTML = ''
                    }, 1000)
                } else {
                    message.innerHTML = '<span style="color:red">' + result.error + '</span>';
                }
            } catch (e)
            {
                console.log(e.message)
                message.innerHTML = '<span style="color:red">' + e.message + '</span>';
            }

        }
    </script>
</body>
</html>
