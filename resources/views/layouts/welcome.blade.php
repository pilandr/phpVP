<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
  <head>
    <title>main - ГеймсМаркет</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
     <meta name="csrf-token" content="{{ csrf_token() }}" />
    <link rel="stylesheet" href="/css/libs.min.css">
    <link rel="stylesheet" href="/css/modal.css">
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/media.css">
  </head>
  <body>
    <div class="main-wrapper">
      <header class="main-header">
        <div class="logotype-container"><a href="#" class="logotype-link"><img src="/img/logo.png" alt="Логотип"></a></div>
        <nav class="main-navigation">
          <ul class="nav-list">
            <li class="nav-list__item"><a href="{{ route('/') }}" class="nav-list__item__link">Главная</a></li>
            <li class="nav-list__item"><a href="{{ route('orderlist') }}" class="nav-list__item__link">Мои заказы</a></li>
            <li class="nav-list__item"><a href="#" class="nav-list__item__link">Новости</a></li>
            <li class="nav-list__item"><a href="#" class="nav-list__item__link">О компании</a></li>
          </ul>
        </nav>
        <div class="header-contact">
          <div class="header-contact__phone"><a href="#" class="header-contact__phone-link">Телефон: 33-333-33</a></div>
        </div>
        <div class="header-container">
          <div class="payment-container">
            <div class="payment-basket__status">
              <div class="payment-basket__status__icon-block"><a class="payment-basket__status__icon-block__link"><i class="fa fa-shopping-basket"></i></a></div>
              <div class="payment-basket__status__basket"><span class="payment-basket__status__basket-value">{{$countOrders}}</span><span class="payment-basket__status__basket-value-descr">товаров</span></div>
            </div>
          </div>
            @if (Route::has('login'))
                <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                    @auth
                        <div class="authorization-block">
                            <span class="authorization-block__link">{{ Auth::user()->name }}</span>
                            <form action="{{ route('logout') }}" method="post">
                                @csrf
                                <input type="submit" value="Выйти" class="authorization-block__link">
                            </form>
                            @if (Auth::user()->isAdmin)
                                <a href="{{ route('admin') }}" class="authorization-block__link">Администрирование</a>
                            @endif
                        </div>
                    @else
                        <div class="authorization-block">
                            <a href="{{ route('register') }}" class="authorization-block__link">Регистрация</a>
                        @if (Route::has('register'))
                            <a href="{{ route('login') }}" class="authorization-block__link">Войти</a>
                        @endif
                        </div>
                    @endauth
                </div>
            @endif

        </div>
      </header>
      <div class="middle">
        <div class="sidebar">
          <div class="sidebar-item">
            <div class="sidebar-item__title">Категории</div>
            <div class="sidebar-item__content">
              <ul class="sidebar-category">
                  @foreach($categories as $category)
                    <li class="sidebar-category__item"><a href="/category/{{ $category->id }}" class="sidebar-category__item__link">{{ $category->name }}</a></li>
                  @endforeach

              </ul>
            </div>
          </div>
          <div class="sidebar-item">
            <div class="sidebar-item__title">Последние новости</div>
            <div class="sidebar-item__content">
              <div class="sidebar-news">
                <div class="sidebar-news__item">
                  <div class="sidebar-news__item__preview-news"><img src="/img/cover/game-2.jpg" alt="image-new" class="sidebar-new__item__preview-new__image"></div>
                  <div class="sidebar-news__item__title-news"><a href="#" class="sidebar-news__item__title-news__link">О новых играх в режиме VR</a></div>
                </div>
                <div class="sidebar-news__item">
                  <div class="sidebar-news__item__preview-news"><img src="/img/cover/game-1.jpg" alt="image-new" class="sidebar-new__item__preview-new__image"></div>
                  <div class="sidebar-news__item__title-news"><a href="#" class="sidebar-news__item__title-news__link">О новых играх в режиме VR</a></div>
                </div>
                <div class="sidebar-news__item">
                  <div class="sidebar-news__item__preview-news"><img src="/img/cover/game-4.jpg" alt="image-new" class="sidebar-new__item__preview-new__image"></div>
                  <div class="sidebar-news__item__title-news"><a href="#" class="sidebar-news__item__title-news__link">О новых играх в режиме VR</a></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="main-content">
          <div class="content-top">
            <div class="content-top__text">Купить игры неборого без регистрации смс с торента, получить компкт диск, скачать Steam игры после оплаты</div>
            <div class="slider"><img src="/img/slider.png" alt="Image" class="image-main"></div>
          </div>
        @yield('content-middle')
          <div class="content-bottom"></div>
        </div>
      </div>
      <footer class="footer">
        <div class="footer__footer-content">
          <div class="random-product-container">
            <div class="random-product-container__head">Случайный товар</div>
            <div class="random-product-container__content">
              <div class="item-product">
                <div class="item-product__title-product"><a href="#" class="item-product__title-product__link">The Witcher 3: Wild Hunt</a></div>
                <div class="item-product__thumbnail"><a href="#" class="item-product__thumbnail__link"><img src="/img/cover/game-1.jpg" alt="Preview-image" class="item-product__thumbnail__link__img"></a></div>
                <div class="item-product__description">
                  <div class="item-product__description__products-price"><span class="products-price">400 руб</span></div>
                  <div class="item-product__description__btn-block"><a href="#" class="btn btn-blue">Купить</a></div>
                </div>
              </div>
            </div>
          </div>
          <div class="footer__footer-content__main-content">
            <p>
              Интернет-магазин компьютерных игр ГЕЙМСМАРКЕТ - это
              онлайн-магазин игр для геймеров, существующий на рынке уже 5 лет.
              У нас широкий спектр лицензионных игр на компьютер, ключей для игр - для активации
              и авторизации, а также карты оплаты (game-card, time-card, игровые валюты и т.д.),
              коды продления и многое друго. Также здесь всегда можно узнать последние новости
              из области онлайн-игр для PC. На сайте предоставлены самые востребованные и
              актуальные товары MMORPG, приобретение которых здесь максимально удобно и,
              что немаловажно, выгодно!
            </p>
          </div>
        </div>
        <div class="footer__social-block">
          <ul class="social-block__list bcg-social">
            <li class="social-block__list__item"><a href="#" class="social-block__list__item__link"><i class="fa fa-facebook"></i></a></li>
            <li class="social-block__list__item"><a href="#" class="social-block__list__item__link"><i class="fa fa-twitter"></i></a></li>
            <li class="social-block__list__item"><a href="#" class="social-block__list__item__link"><i class="fa fa-instagram"></i></a></li>
          </ul>
        </div>
      </footer>
    </div>

    @if (!empty($product))
        <!-- The Modal -->
        <div id="myModal" class="modal">
            <!-- Модальное содержание -->
            <div class="modal-content">
                <div class="modal-header">
                    <span class="close">&times;</span>
                    <h2>Оформление заказа</h2>
                </div>
                <div class="modal-body">
                    <div id="modal-ok">
                        <h1 class="modal-ok__title">Ваш заказ принят</h1>
                    </div>
                    <div id="modal-order">
                        <span class="modal-good">Товар</span><span class="modal-good__id" >{{ $product->id }}:</span>
                        <div class="modal-good__title">Название: {{ $product->name }}</div>
                        <div class="modal-good__price">Цена: {{ $product->price }} руб.</div>
                        <h3 class="modal-text">Свяжитесь с нашим менеджером</h3>
                        @auth
                            Email: <input id="email" type="email" name="email" value="{{ Auth::user()->email }}" disabled>
                            Имя: <input id="name" type="text" name="name" value="{{ Auth::user()->name }}" disabled>
                        @else
                            Email: <input id="email" type="email" name="email">
                            Имя: <input id="name" type="text" name="name">
                        @endauth
                        <input id="id" type="text" value="{{ $product->id }}" name="products_id" hidden>
                        <input type="button" value="Оформить заказ" onclick="order()">
                        <div id="message"></div>
                    </div>
                </div>
            </div>
        </div>
    @endif

    <script src="/js/main.js"></script>
  </body>
</html>
