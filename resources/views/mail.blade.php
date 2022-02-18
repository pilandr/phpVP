<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h2>Сделан заказ # {{ $order->id }}</h2>
    <div>Имя: {{$order->name }}</div>
    <div>Email: {{$order->email }}</div>
    @php
        $product = $order->product;
    @endphp
    <h3>Товар:</h3>
    <div>Название: {{$product->name }}</div>
    <div>Цена: {{$product->price }}</div>

</body>
</html>
