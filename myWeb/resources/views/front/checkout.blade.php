 @extends('front.layouts.app')

 @section('content')
 <section class="section-5 pt-3 pb-3 mb-3 bg-white">
     <div class="container">
         <div class="light-font">
             <ol class="breadcrumb primary-color mb-0">
                 <li class="breadcrumb-item"><a class="white-text" href="#">Home</a></li>
                 <li class="breadcrumb-item"><a class="white-text" href="#">Shop</a></li>
                 <li class="breadcrumb-item">Checkout</li>
             </ol>
         </div>
     </div>
 </section>

 <section class="section-9 pt-4">
     <div class="container">
         <form id="orderForm" name="orderForm" action="" method="post">
             <div class="row">
                 <div class="col-md-8">
                     <div class="sub-title">
                         <h2>Địa chỉ giao hàng</h2>
                     </div>
                     <div class="card shadow-lg border-0">
                         <div class="card-body checkout-form">
                             <div class="row">

                                 <div class="col-md-12">
                                     <div class="mb-3">
                                         <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Tên" value="{{(!empty($customerAddress)) ? $customerAddress->first_name : '' }}">
                                         <p></p>
                                     </div>
                                 </div>
                                 <div class="col-md-12">
                                     <div class="mb-3">
                                         <input type="text" name="last_name" id="last_name" class="form-control" placeholder="Họ" value="{{(!empty($customerAddress)) ? $customerAddress->last_name : '' }}">
                                         <p></p>
                                     </div>
                                 </div>

                                 <div class="col-md-12">
                                     <div class="mb-3">
                                         <input type="text" name="email" id="email" class="form-control" placeholder="Email" value="{{(!empty($customerAddress)) ? $customerAddress->email : '' }}">
                                         <p></p>
                                     </div>
                                 </div>

                                 <div class="col-md-12">
                                     <div class="mb-3">
                                         <select name="country" id="country" class="form-control">
                                             <option value="">Thành phố/Tỉnh</option>
                                             @if($countries->isNotEmpty())
                                             @foreach($countries as $country)
                                             <option {{(!empty($customerAddress) && $customerAddress->country_id == $country->id) ? 'selected' : '' }} value="{{$country->id}}">{{$country->name}}</option>
                                             @endforeach
                                             @endif
                                         </select>
                                         <p></p>
                                     </div>
                                 </div>

                                 <div class="col-md-12">
                                     <div class="mb-3">
                                         <textarea name="address" id="address" cols="30" rows="3" placeholder="Địa chỉ" class="form-control">{{ (!empty($customerAddress)) ? $customerAddress->address :'' }}</textarea>
                                         <p></p>
                                     </div>

                                 </div>

                                 <div class="col-md-12">
                                     <div class="mb-3">
                                         <input type="text" name="apartment" id="apartment" class="form-control" placeholder="Cơ quan/nhà riêng" value="{{ (!empty($customerAddress)) ? $customerAddress->apartment :'' }}">
                                     </div>
                                 </div>

                                 <div class="col-md-4">
                                     <div class="mb-3">
                                         <input type="text" name="city" id="city" class="form-control" placeholder="Quận" value="{{ (!empty($customerAddress)) ? $customerAddress->city :'' }}">
                                         <p></p>
                                     </div>
                                 </div>

                                 <div class="col-md-4">
                                     <div class="mb-3">
                                         <input type="text" name="state" id="state" class="form-control" placeholder="Phường" value="{{ (!empty($customerAddress)) ? $customerAddress->state :'' }}">
                                         <p></p>
                                     </div>
                                 </div>

                                 <div class="col-md-4">
                                     <div class="mb-3">
                                         <input type="text" name="zip" id="zip" class="form-control" placeholder="Zip" value="{{ (!empty($customerAddress)) ? $customerAddress->zip :'' }}">
                                         <p></p>
                                     </div>
                                 </div>

                                 <div class="col-md-12">
                                     <div class="mb-3">
                                         <input type="text" name="mobile" id="mobile" class="form-control" placeholder="Số điện thoại" value="{{ (!empty($customerAddress)) ? $customerAddress->mobile:'' }}">
                                         <p></p>
                                     </div>
                                 </div>


                                 <div class="col-md-12">
                                     <div class="mb-3">
                                         <textarea name="order_notes" id="order_notes" cols="30" rows="2" placeholder="Ghi chú" class="form-control"></textarea>

                                     </div>
                                 </div>

                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="col-md-4">
                     <div class="sub-title">
                         <h2>Đơn hàng</h3>
                     </div>
                     <div class="card cart-summery">
                         <div class="card-body">

                             @foreach(Cart::content() as $item)
                             <div class="d-flex justify-content-between pb-2">
                                 <div class="h6">{{$item->name}} X {{$item->qty}} </div>
                                 <div class="h6">{{ number_format($item->price * $item->qty,3) }}</div>
                             </div>
                             @endforeach


                             <div class="d-flex justify-content-between summery-end">
                                 <div class="h6"><strong>Giá</strong></div>
                                 <div class="h6"><strong>{{ number_format(Cart::subtotal(),3) }}</strong></div>
                             </div>
                             <div class="d-flex justify-content-between mt-2">
                                 <div class="h6"><strong>Shipping</strong></div>
                                 <div class="h6"><strong id="shippingAmount">{{number_format($totalShippingCharge),3}}</strong></div>
                             </div>
                             <div class="d-flex justify-content-between mt-2 summery-end">
                                 <div class="h5"><strong>Tổng tiền</strong></div>
                                 <div class="h5"><strong id="grandTotal">{{number_format($grandTotal),3 }}</strong></div>
                             </div>
                         </div>
                     </div>

                     <div class="card payment-form ">
                         <h3 class="card-title h5 mb-3">Phương Thức Thanh Toán</h3>
                         <div class="">
                             <input checked type="radio" name="payment_method" value="cod" id="payment_method_one">
                             <label for="payment_method_one" class="from-check-label">Thanh toán khi nhận hàng</label>

                         </div>

                         <div class="">
                             <input type="radio" name="payment_method" value="cod" id="payment_method_two">
                             <label for="payment_method_two" class="from-check-label">Thanh toán qua thẻ</label>

                         </div>




                         <div class="card-body p-0 d-none mt-3" id="card-payment-form">
                             <div class="mb-3">
                                 <label for="card_number" class="mb-2">Card Number</label>
                                 <input type="text" name="card_number" id="card_number" placeholder="Valid Card Number" class="form-control">
                             </div>
                             <div class="row">
                                 <div class="col-md-6">
                                     <label for="expiry_date" class="mb-2">Expiry Date</label>
                                     <input type="text" name="expiry_date" id="expiry_date" placeholder="MM/YYYY" class="form-control">
                                 </div>
                                 <div class="col-md-6">
                                     <label for="expiry_date" class="mb-2">CVV Code</label>
                                     <input type="text" name="expiry_date" id="expiry_date" placeholder="123" class="form-control">
                                 </div>
                             </div>

                         </div>
                         <div class="pt-4">
                             <!--     <a href="#" class="btn-dark btn btn-block w-100">Pay Now</a> -->
                             <button type="submit" class="btn-dark btn btn-block w-100">Thanh Toán Ngay</button>

                         </div>
                     </div>


                     <!-- CREDIT CARD FORM ENDS HERE -->

                 </div>
             </div>
         </form>
     </div>
 </section>
 @endsection

 @section('customJs')
 <script>
     $("#payment_method_one").click(function() {
         if ($(this).is(":checked") == true) {
             $("#card-payment-form").addClass('d-none');
         }
     });

     $("#payment_method_two").click(function() {
         if ($(this).is(":checked") == true) {
             $("#card-payment-form").removeClass('d-none');
         }
     });


     $("#orderForm").submit(function(event) {
         event.preventDefault();
         $('button[type="submit"]').prop('disabled', true);
         $.ajax({
             url: '{{ route("front.processCheckout") }}',
             type: 'post',
             data: $(this).serializeArray(),
             dataType: 'json',
             success: function(response) {
                 var errors = response.errors;
                 $('button[type="submit"]').prop('disabled', false);

                 if (response.status == false) {
                     if (errors.first_name) {
                         $("#first_name").addClass('is-invalid')
                             .siblings("p")
                             .addClass('invalid-feaaback')
                             .html(errors.first_name);
                     } else {
                         $("#first_name").addClass('is-invalid')
                             .siblings("p")
                             .removeClass('invalid-feaaback')
                             .html('');
                     }



                     if (errors.last_name) {
                         $("#last_name").addClass('is-invalid')
                             .siblings("p")
                             .addClass('invalid-feaaback')
                             .html(errors.last_name);
                     } else {
                         $("#last_name").addClass('is-invalid')
                             .siblings("p")
                             .removeClass('invalid-feaaback')
                             .html('');
                     }



                     if (errors.email) {
                         $("#email").addClass('is-invalid')
                             .siblings("p")
                             .addClass('invalid-feaaback')
                             .html(errors.email);
                     } else {
                         $("#email").addClass('is-invalid')
                             .siblings("p")
                             .removeClass('invalid-feaaback')
                             .html('');
                     }


                     if (errors.country) {
                         $("#country").addClass('is-invalid')
                             .siblings("p")
                             .addClass('invalid-feaaback')
                             .html(errors.country);
                     } else {
                         $("#country").addClass('is-invalid')
                             .siblings("p")
                             .removeClass('invalid-feaaback')
                             .html('');
                     }

                     if (errors.address) {
                         $("#address").addClass('is-invalid')
                             .siblings("p")
                             .addClass('invalid-feaaback')
                             .html(errors.address);
                     } else {
                         $("#address").addClass('is-invalid')
                             .siblings("p")
                             .removeClass('invalid-feaaback')
                             .html('');
                     }

                     if (errors.state) {
                         $("#state").addClass('is-invalid')
                             .siblings("p")
                             .addClass('invalid-feaaback')
                             .html(errors.state);
                     } else {
                         $("#state").addClass('is-invalid')
                             .siblings("p")
                             .removeClass('invalid-feaaback')
                             .html('');
                     }

                     if (errors.city) {
                         $("#city").addClass('is-invalid')
                             .siblings("p")
                             .addClass('invalid-feaaback')
                             .html(errors.city);
                     } else {
                         $("#city").addClass('is-invalid')
                             .siblings("p")
                             .removeClass('invalid-feaaback')
                             .html('');
                     }


                     if (errors.zip) {
                         $("#zip").addClass('is-invalid')
                             .siblings("p")
                             .addClass('invalid-feeback')
                             .html(errors.zip);
                     } else {
                         $("#zip").removeClass('is-invalid')
                             .siblings("p")
                             .addClass('invalid-feeback')
                             .html('');
                     }


                     if (errors.mobile) {
                         $("#mobile").addClass('is-invalid')
                             .siblings("p")
                             .addClass('invalid-feeback')
                             .html(errors.mobile);
                     } else {
                         $("#mobile").removeClass('is-invalid')
                             .siblings("p")
                             .addClass('invalid-feeback')
                             .html('');
                     }



                 } else {
                     window.location.href = "{{ url('/thanks/') }}/" + response.orderId;
                 }

             }
         });


     });
     $("#country").change(function() {
         $.ajax({
             url: '{{ route("front.getOrderSummery")}}',
             type: 'post',
             data: {
                 country_id: $(this).val()
             },
             dataType: 'json',
             success: function(response) {
                 if (response.status == true) {

                     var formattedShippingCharge = parseFloat(response.shippingCharge).toFixed(3);
                     var formattedGrandTotal = parseFloat(response.grandTotal).toFixed(3);


                     $("#shippingAmount").html('' + formattedShippingCharge);
                     $("#grandTotal").html('' + formattedGrandTotal);
                 }
             }
         })
     });
 </script>

 @endsection