<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <link rel="stylesheet" href="/css/admin.css">
    <title>Document</title>
</head>
<body>
    <h1>Admin panel Товары</h1>
    <a href="{{route('admin')}}">Назад</a>
    <br><br><br>
    <h2>Добавить категорию</h2>
    <br>
    <div style="border: 1px solid black; padding: 15px">
        Название: <input type="text" id="name"> <br><br>
        Описание: <textarea type="text" id="desc" cols="70" rows="5" name="description" ></textarea>
        <input type="button" value="Добавить" onclick="addCategory();">
        <div id="resp"></div>
    </div>
    <br><br>
    <h2>Список категорий</h2>
    <ul class="admin-products">
        @forelse($categories as $category)
            <li id="category_block_{{ $category->id }}" class="admin-products__item">
                Название <input id="name_{{ $category->id }}" type="text" value="{{ $category->name }}">
                Описание <textarea id="desc_{{ $category->id }}" type="text" cols="70" rows="5" >{{ $category->description }}</textarea>
                <br><br>
                <input type="button" onclick="saveCategory({{ $category->id }});" value="Сохранить">
                <input type="button" onclick="deleteCategory({{ $category->id }});" value="Удалить">
                <div id="resp_{{ $category->id }}"></div>
            </li>

        @empty
            <h3>Нет категорий</h3>
        @endforelse
    </ul>

    <script>
        async function saveCategory(catId)
        {
            const message = document.querySelector('#resp_' + catId);
            const name = document.querySelector('#name_' + catId).value;
            const desc = document.querySelector('#desc_' + catId).value;
            const headers = {
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
            }
            const formData = new FormData();
            formData.append('name', name);
            formData.append('description', desc);
            formData.append('id', catId);
            try {
                let response = await fetch('/admin/saveCategory', {
                    method: 'POST',
                    body: formData,
                    headers: headers,
                    credentials: "include"
                });

                const result = await response.json();
                if (result.result) {
                    message.innerHTML = '<span style="color:green">' + result.result + '</span>';
                } else {
                    message.innerHTML = '<span style="color:red">' + result.error + '</span>';
                }
                console.log(result)
            } catch (e)
            {
                console.log(e.message)
                message.innerHTML = '<span style="color:red">' + e.message + '</span>';
            }

        }

        async function deleteCategory(CategoryId)
        {
            const message = document.querySelector('#resp_' + CategoryId);
            const CategoryBlock = document.querySelector('#category_block_' + CategoryId);
            const formData = new FormData();
            formData.append('id', CategoryId);
            try {
                const headers = {
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                }
                let response = await fetch('/admin/deleteCategory', {
                    method: 'POST',
                    body: formData,
                    headers: headers,
                    credentials: "include"
                });

                let result = await response.json();
                if (result.result) {
                    CategoryBlock.remove();
                    alert('Категория удалена')
                } else {
                    message.innerHTML = '<span style="color:red">' + result.error + '</span>';
                }
                console.log(result)
            } catch (e)
            {
                console.log(e.message)
                message.innerHTML = '<span style="color:red">' + e.message + '</span>';
            }
        }

        async function addCategory()
        {
            const name = document.querySelector('#name').value;
            const description = document.querySelector('#desc').value;
            const message = document.querySelector('#resp');
            const formData = new FormData();
            formData.append('name', name);
            formData.append('description', description);
            const headers = {
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
            }
            try {
                let response = await fetch('/admin/addCategory', {
                    method: 'POST',
                    body: formData,
                    headers: headers,
                    credentials: "include"
                });

                let result = await response.json();
                if (result.result) {
                    message.innerHTML = '<span style="color:green">' + result.result + '</span>';
                    alert('Категория добавлена')
                    location.reload();
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
