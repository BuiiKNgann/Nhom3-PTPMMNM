@extends('front.layouts.app')

@section('content')
<section class="section-1">
    <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="false">

        <div class="carousel-inner">

            <div class="carousel-item active">
                <!-- <img src="images/carousel-1.jpg" class="d-block w-100" alt=""> -->

                <picture>
                    <source media="(max-width: 799px)" srcset="{{asset('front-assets/images/xay-dung.jpg')}}" />
                    <source media="(min-width: 800px)" srcset="{{asset('front-assets/images/xay-dung.jpg') }} " />
                    <img src="{{asset('front-assets/images/xay-dung.jpg') }}" alt="" />
                </picture>

                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3">
                        <h1 class="display-4 text-white mb-3">Đừng Bỏ Lỡ</h1>
                        <p class="mx-md-5 px-5">Giảm Giá Cực Sốc Cho Các Sản Phẩm Xây Dựng Chất Lượng</p>
                        <a class="btn btn-outline-light py-2 px-4 mt-3" href="#">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">



                <picture>
                    <source media="(max-width: 799px)" srcset="{{asset('front-assets/images/xay-dung.jpg')}}" />
                    <source media="(min-width: 800px)" srcset="{{asset('front-assets/images/xay-dung.jpg') }}" />
                    <img src="{{asset('front-assets/images/xay-dung.jpg') }}" alt="" />
                </picture>

                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3">
                        <h1 class="display-4 text-white mb-3">Mua Sắm Thông Minh</h1>
                        <p class="mx-md-5 px-5">Sở Hữu Các Vật Liệu Xây Dựng Chất Lượng Với Giá Ưu Đãi</p>
                        <a class="btn btn-outline-light py-2 px-4 mt-3" href="#">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">




                <picture>
                    <source media="(max-width: 799px)" srcset="{{asset('front-assets/images/vat-lieu.jpg')}}" />
                    <source media="(min-width: 800px)" srcset="{{asset('front-assets/images/vat-lieu.jpg')}} " />
                    <img src="{{asset('front-assets/images/vat-lieu.jpg')}} " alt="" />
                </picture>


                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3">
                        <h1 class="display-4 text-white mb-3">Ưu Đãi Hấp Dẫn</h1>
                        <p class="mx-md-5 px-5">Tiết Kiệm Đến 50% Cho Các Vật Liệu Xây Dựng</p>
                        <a class="btn btn-outline-light py-2 px-4 mt-3" href="">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</section>
<section class="section-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="box shadow-lg">
                    <div class="fa icon fa-check text-primary m-0 mr-3"></div>
                    <h2 class="font-weight-semi-bold m-0">Sản phẩm chất lượng</h5>
                </div>
            </div>
            <div class="col-lg-3 ">
                <div class="box shadow-lg">
                    <div class="fa icon fa-shipping-fast text-primary m-0 mr-3"></div>
                    <h2 class="font-weight-semi-bold m-0">Giao hàng tận nơi</h2>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="box shadow-lg">
                    <div class="fa icon fa-exchange-alt text-primary m-0 mr-3"></div>
                    <h2 class="font-weight-semi-bold m-0">14 ngày đổi trả</h2>
                </div>
            </div>
            <div class="col-lg-3 ">
                <div class="box shadow-lg">
                    <div class="fa icon fa-phone-volume text-primary m-0 mr-3"></div>
                    <h2 class="font-weight-semi-bold m-0">24/7 Hỗ trợ</h5>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section-3">
    <div class="container">
        <div class="section-title">
            <h2>Danh mục</h2>
        </div>
        <div class="row pb-3">
            @if(getCategories()->isNotEmpty())
            @foreach(getCategories() as $category)
            <div class="col-lg-3">
                <div class="cat-card">
                    <div class="left">
                        @if($category->image != "")
                        <img src="{{ asset('uploads/category/thumb/'.$category->image) }}" alt="" class="img-fluid">
                        @endif
                        <!--    <img src="{{ asset('front-assets/images/cat-1.jpg') }}" alt="" class="img-fluid"> -->
                    </div>
                    <div class="right">
                        <div class="cat-data">
                            <h2>{{$category->name}}</h2>
                            <!-- <p>100 Products</p> -->
                        </div>
                    </div>
                </div>
            </div>
            @endforeach

            @endif


        </div>
    </div>
</section>

<section class="section-4 pt-5">
    <div class="container">
        <div class="section-title">
            <h2>Sản phẩm nổi bật</h2>
        </div>
        <div class="row pb-3">
            @if($featuredProducts->isNotEmpty())
            @foreach($featuredProducts as $product)
            @php
            $productImage = $product->product_images->first();
            @endphp
            <div class="col-md-3">
                <div class="card product-card">
                    <div class="product-image position-relative">
                        <a href="{{ route("front.product", $product->slug)}}" class="product-img">
                            <!-- <img class="card-img-top" src="{{asset ('front-assets/images/product-1.jpg')}}" alt=""> -->
                            @if(!empty($productImage->image))
                            <img class="card-img-top" src="{{ asset('uploads/product/small/'.$productImage->image) }}" />
                            @else
                            <img src="{{ asset('admin-assets/img/default-150x150.png') }}" />

                            @endif


                        </a>
                        <a class="whishlist" href="222"><i class="far fa-heart"></i></a>

                        <div class="product-action">
                            <a class="btn btn-dark" href="javascript:void(0);" onclick="addToCart('{{ $product->id}}');">
                                <i class="fa fa-shopping-cart"></i> Thêm vào giỏ
                            </a>
                        </div>
                    </div>
                    <div class="card-body text-center mt-3">
                        <a class="h6 link" href="product.php">{{ $product->title}}</a>
                        <div class="price mt-2">
                            <span class="h5"><strong>{{ number_format($product->price,3)}}</strong></span>
                            @if($product->compare_price >0)
                            <span class="h6 text-underline"><del>{{ number_format($product->compare_price,3)}}</del></span>
                            @endif
                        </div>
                    </div>
                </div>
            </div>

            @endforeach

            @endif


        </div>
    </div>
</section>


@endsection