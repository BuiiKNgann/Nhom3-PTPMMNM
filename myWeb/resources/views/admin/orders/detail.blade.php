@extends('admin.layouts.app')



@section('content')



<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid my-2">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Order: #{{$order->id}}</h1>
            </div>
            <div class="col-sm-6 text-right">
                <a href="{{route('orders.index')}}" class="btn btn-primary">Back</a>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
</section>
<!-- Main content -->
<section class="content">
    <!-- Default box -->
    <div class="container-fluid">

        <div class="row">
            <div class="col-md-9">
                @include('admin.message')
                <div class="card">
                    <div class="card-header pt-3">
                        <div class="row invoice-info">
                            <div class="col-sm-7 invoice-col">
                                <h1 class="h5 mb-3">Địa chỉ giao hàng</h1>
                                <address>
                                    <strong>{{$order->firtst_name.' '.$order->last_name}}</strong><br>
                                    {{$order->address}}<br>
                                    {{$order->city}}, {{$order->zip}} {{$order->countryName}}<br>
                                    Phone: {{$order->mobile}}<br>
                                    Email: {{$order->email}}
                                </address>

                                <strong>Ngày vận chuyển</strong><br>
                                @if(!empty($order->shipped_date))
                                {{\Carbon\Carbon::parse($order->shipped_date)->format('d M,Y')}}
                                @else
                                n/a
                                @endif
                            </div>



                            <div class="col-sm-4 invoice-col">
                                <!--    <b>Invoice #007612</b><br> -->
                                <!--     <br>-->
                                <b>Mã đơn hàng:</b>{{$order->id}}<br>
                                <b>Tổng thanh toán:</b>{{number_format($order->grand_total,3)}}<br>
                                <b>Trạng thái:</b>
                                @if($order-> status == 'pending')
                                <span class="text-danger">Chưa xử lý</span>
                                @elseif($order-> status == 'shipped')
                                <span class="text-info">Đang vận chuyển</span>
                                @elseif($order-> status == 'delivered')
                                <span class="text-success">Đã giao hàng</span>
                                @else
                                <span class="text-danger">Đã huỷ đơn</span>
                                @endif

                                <br>
                            </div>
                        </div>
                    </div>
                    <div class="card-body table-responsive p-3">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Sản phẩm</th>
                                    <th width="100">Giá</th>
                                    <th width="100">Số lượng</th>
                                    <th width="100">Giá trị</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($orderItems as $item)
                                <tr>
                                    <td>{{ $item->name}}</td>
                                    <td>{{ number_format($item->price,3)}}</td>
                                    <td>{{$item->qty}}</td>
                                    <td>{{ number_format($item->total,3)}}</td>
                                </tr>
                                @endforeach


                                <tr>
                                    <th colspan="3" class="text-right">Tổng số tiền:</th>
                                    <td>{{ number_format($order->subtotal,3)}}</td>
                                </tr>




                                <tr>
                                    <th colspan="3" class="text-right">Phí vận chuyển:</th>
                                    <td>{{ number_format($order->shipping,3)}}</td>
                                </tr>
                                <tr>
                                    <th colspan="3" class="text-right">Tổng giá trị:</th>
                                    <td>{{ number_format($order->grand_total,3)}}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card">
                        <form action="" method="post" name="changeOrderStatusForm" id="changeOrderStatusForm">
                            <div class="card-body">
                                <h2 class="h4 mb-3">Trạng thái đơn hàng</h2>
                                <div class="mb-3">
                                    <select name="status" id="status" class="form-control">
                                        <option value="pending" {{($order ->status == 'pending') ? 'selected' :''}}>Chưa xử lý</option>
                                        <option value="shipped" {{($order->status == 'shipped') ? 'selected' :''}}>Đang vận chuyển</option>
                                        <option value="delivered" {{($order->status == 'delivered') ? 'selected' :''}}>Đã giao hàng</option>
                                        <option value="cancelled" {{($order->status == 'cancelled') ? 'selected' :''}}>Đã huỷ đơn</option>
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label for="">Ngày vận chuyển</label>
                                    <input placeholder="Shipped Date" value="{{$order->shipped_date}}" type="text" name="shipped_date" id="shipped_date" class="form-control">
                                </div>

                                <div class="mb-3">
                                    <button class="btn btn-primary">Cập nhật</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- /.card -->
</section>
<!-- /.content -->

@endsection

@section('customJs')
<script>
    $(document).ready(function() {
        $('#shipped_date').datetimepicker({
            format: 'Y-m-d H:i:s',
        });
    });

    $("#changeOrderStatusForm").submit(function(event) {
        event.preventDefault();

        $.ajax({
            url: '{{route("orders.changeOrderStatus",$order->id)}}',
            type: 'post',
            data: $(this).serializeArray(),
            dataType: 'json',
            success: function(response) {
                window.location.href = '{{route("orders.detail",$order->id)}}';
            }
        })
    });
</script>

@endsection