<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>Document</title>
</head>
<body>
    <h1>Admin panel Товары</h1>
    <a href="{{route('admin')}}">Назад</a>
    <br><br><br><br>
    
    <h2>Добавить товар</h2>
    <div style="border: 1px solid black">
        <br><br>
        Название: <input type="text" id="name"> <br><br>
        Цена: <input type="number" id="price"> <br><br>
        Описание: <textarea type="text" id="desc" cols="70" rows="5" name="description" ></textarea> <br><br>
        Категория <select id="category_id" name="categories_id"> <!--Supplement an id here instead of using 'name'-->
                    @foreach($categories as $category)
                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                    @endforeach
                </select> <br><br>
        Фото: <input type="file" id="input_add" pattern="([^\s]+(\.(?i)(jpg|png|gif|bmp))$)" onchange="addPhoto('add')" name="image"> <br><br>
        <div id="photo_add" ></div>
        <input type="button" value="Добавить" onclick="addProduct();">
        <div id="resp"></div>
        <br><br>
    </div>
    

    <h2>Список товаров</h2>

    <ul class="admin-products">
        @forelse($products as $product)
            <li id="product_block_{{ $product->id }}" class="admin-products__item" style="border: 1px solid black; padding: 15px">
                Название <input id="name_{{ $product->id }}" type="text" value="{{ $product->name }}"> <br><br>
                Описание <textarea id="desc_{{ $product->id }}" type="text" cols="70" rows="5" >{{ $product->description }}</textarea> <br><br>
                Цена: <input type="number" id="price_{{ $product->id }}" value="{{ $product->price }}"> <br><br>
                Категория <select id="category_id_{{ $product->id }}" name="categories_id"> <!--Supplement an id here instead of using 'name'-->
                    <option value="" selected></option>
                    @foreach($categories as $category)
                        @if ( $category->id == $product->categories_id )
                            <option value="{{ $category->id }}" selected>{{ $category->name }}</option>
                        @else
                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                        @endif
                    @endforeach
              </select> <br><br>
              Фото: <input type="file" id="input_{{ $product->id }}" pattern="([^\s]+(\.(?i)(jpg|png|gif|bmp))$)" onchange="addPhoto({{ $product->id }})" name="image"> <br><br>
              <div id="photo_{{ $product->id }}" ><img src="/img/cover/{{ $product->photo }}" style="max-width: 400px"></div>
                <br><br>
                <input type="button" onclick="saveProduct({{ $product->id }});" value="Сохранить">
                <input type="button" onclick="deleteProduct({{ $product->id }});" value="Удалить">
                <div id="resp_{{ $product->id }}"></div>
            </li>

        @empty
            <h3>Нет категорий</h3>
        @endforelse
    </ul>
    <script>
        function addPhoto(id) {
            const input = document.getElementById('input_' + id);
            const preview = document.getElementById('photo_' + id);
            const curFiles = input.files;
          
            if(curFiles.length !== 0) {
                preview.innerHTML = `<img src="${window.URL.createObjectURL(curFiles[0])}" style="max-width: 400px">`;
            }
        }

        async function addProduct()
        {
            const name = document.querySelector('#name').value;
            const description = document.querySelector('#desc').value;
            const price = document.querySelector('#price').value;
            const category_id = document.querySelector('#category_id').value;
            const message = document.querySelector('#resp');
            const image = document.querySelector('#input_add');
            const formData = new FormData();
            formData.append('name', name);
            formData.append('description', description);
            formData.append('price', price);
            formData.append('categories_id', category_id);
            formData.append('image', image.files[0]);

            const headers = {
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),

            }
            try {
                let response = await fetch('/admin/addProduct', {
                    method: 'POST',
                    body: formData,
                    headers: headers,
                    credentials: "include"
                });

                let result = await response.json();
                console.log(result);
                if (result.result) {
                    message.innerHTML = '<span style="color:green">' + result.result + '</span>';
                    alert('Товар добавлен')
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

        async function saveProduct(id)
        {
            const name = document.querySelector('#name_' + id).value;
            const description = document.querySelector('#desc_' + id).value;
            const price = document.querySelector('#price_' + id).value;
            const category_id = document.querySelector('#category_id_' + id).value;
            const message = document.querySelector('#resp_' + id);
            const image = document.querySelector('#input_' + id);
            const formData = new FormData();

            formData.append('id', id);
            formData.append('name', name);
            formData.append('description', description);
            formData.append('price', price);
            formData.append('categories_id', category_id);
            formData.append('image', image.files ? image.files[0] : '' );

            const headers = {
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),

            }
            try {
                let response = await fetch('/admin/saveProduct', {
                    method: 'POST',
                    body: formData,
                    headers: headers,
                    credentials: "include"
                });
                const result = await response.json();
                if (result.result) {
                    image.value = '';
                    message.innerHTML = '<span style="color:green">' + result.result + '</span>';
                } else {
                    message.innerHTML = '<span style="color:red">' + result.error + '</span>';
                }
            } catch (e)
            {
                console.log(e.message)
                message.innerHTML = '<span style="color:red">' + e.message + '</span>';
            }

        }

        async function deleteProduct(id)
        {
            const message = document.querySelector('#resp_' + id);
            const ProductBlock = document.querySelector('#product_block_' + id);
            const formData = new FormData();
            formData.append('id', id);
            try {
                const headers = {
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                }
                let response = await fetch('/admin/deleteProduct', {
                    method: 'POST',
                    body: formData,
                    headers: headers,
                    credentials: "include"
                });

                let result = await response.json();
                if (result.result) {
                    ProductBlock.remove();
                    alert('Товар удалена')
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
