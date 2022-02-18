<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/css/libs.min.css">
    <link rel="stylesheet" href="/css/modal.css">
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/media.css">
    <title>Document</title>
</head>
<body style="background: none; padding: 0 20px">
    <h1>Admin panel Заказы</h1>
    <a href="{{route('admin')}}">Назад</a>
    <div class="content-main__container">
        <div class="cart-product-list">
            @forelse($orders as $order)
                @php
                    $product = $order->product;
                    $user = $order->user;
                @endphp
                <div class="cart-product-list__item">
                    <div class="cart-product__item__product-photo"><img src="/img/cover/{{ $product->photo }}" class="cart-product__item__product-photo__image"></div>
                    <div class="cart-product__item__product-name">
                        <div class="cart-product__item__product-name__content"><a href="/product/{{$product->id}}">{{ $product->name }}</a></div>
                    </div>
                    <div class="cart-product__item__cart-date">
                        <div class="cart-product__item__cart-date__content">{{ date_format($product->updated_at, 'd.m.Y') }}</div>
                    </div>
                    <div class="cart-product__item__product-price"><span class="product-price__value">{{ $product->price }} рублей</span></div>
                    <div class="cart-product__item__product-price"><span class="product-price__value">{{ $order->email }}</span></div>
                </div>
            @empty
                <h2>Нет заказов</h2>
            @endforelse
        </div>
    </div>
</body>
</html>
