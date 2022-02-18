<!-- resources/views/child.blade.php -->

@extends('layouts.welcome')

@section('content-middle')
    <div class="content-middle">
        <div class="content-head__container">
            <div class="content-head__title-wrap">
                @if (empty($curCategory))
                    <div class="content-head__title-wrap__title bcg-title">Последние товары</div>
                @else
                    <div class="content-head__title-wrap__title bcg-title">Игры в разделе {{$curCategory->name}}</div>
                @endif

            </div>
            <div class="content-head__search-block">
                <div class="search-container">
                    <form class="search-container__form">
                        <input type="text" class="search-container__form__input">
                        <button class="search-container__form__btn">search</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="content-main__container">
            <div class="products-columns">
                @foreach($products as $product)
                    <div class="products-columns__item">
                        <div class="products-columns__item__title-product"><a href="/product/{{$product->id}}" class="products-columns__item__title-product__link">{{ $product->name }}</a></div>
                        <div class="products-columns__item__thumbnail"><a href="/product/{{$product->id}}" class="products-columns__item__thumbnail__link"><img src=" {{ (empty($product->photo))? "/img/cover/default.jpg" : "/img/cover/" . $product->photo }}" alt="Preview-image" class="products-columns__item__thumbnail__img"></a></div>
                        <div class="products-columns__item__description"><span class="products-price">{{ $product->price }} руб</span><a href="#" class="btn btn-blue">Купить</a></div>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="content-footer__container">
            <ul class="page-nav">
                @if (empty($curCategory))
                    <li class="page-nav__item"><a href="/last/{{ $paginator["prev"] }}" class="page-nav__item__link"><i class="fa fa-angle-double-left"></i></a></li>
                    @for ($i = 1; $i < $paginator["count"] + 1; $i++)
                        @if ($i == $paginator["active"])
                            <li class="page-nav__item"><a href="/last/{{ $i }}" class="page-nav__item__link--active">{{ $i }}</a></li>
                        @else
                            <li class="page-nav__item"><a href="/last/{{ $i }}" class="page-nav__item__link">{{ $i }}</a></li>
                        @endif

                    @endfor
                    <li class="page-nav__item"><a href="/last/{{ $paginator["next"] }}" class="page-nav__item__link"><i class="fa fa-angle-double-right"></i></a></li>
                @else
                    <li class="page-nav__item"><a href="/category/{{ $curCategory->id }}/{{ $paginator["prev"] }}" class="page-nav__item__link"><i class="fa fa-angle-double-left"></i></a></li>
                    @for ($i = 1; $i < $paginator["count"] + 1; $i++)
                        @if ($i == $paginator["active"])
                            <li class="page-nav__item"><a href="/category/{{ $curCategory->id }}/{{ $i }}" class="page-nav__item__link--active">{{ $i }}</a></li>
                        @else
                            <li class="page-nav__item"><a href="/category/{{ $curCategory->id }}/{{ $i }}" class="page-nav__item__link">{{ $i }}</a></li>
                        @endif
                    @endfor
                    <li class="page-nav__item"><a href="/category/{{ $curCategory->id }}/{{ $paginator["next"] }}" class="page-nav__item__link"><i class="fa fa-angle-double-right"></i></a></li>
                @endif

            </ul>
        </div>
    </div>
@endsection


