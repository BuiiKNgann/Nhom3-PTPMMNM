@extends('admin.layouts.app')



@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid my-2">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Sửa thương hiệu</h1>
            </div>
            <div class="col-sm-6 text-right">
                <a href="{{route('brands.index')}}" class="btn btn-primary">Trở về</a>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
</section>
<!-- Main content -->
<section class="content">
    <!-- Default box -->
    <div class="container-fluid">
        <form action="" id="editBrandForm" name="editBrandForm" action="" method="post">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="name">Tên</label>
                                <input type="text" name="name" id="name" class="form-control" placeholder="Name" value="{{$brand->name}}">
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="email">Slug</label>
                                <input type="text" readonly name="slug" id="slug" class="form-control" placeholder="Slug" value="{{$brand->slug}}">
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="email">Trạng thái</label>
                                <select name="status" id="status" class="form-control">
                                    <option {{ ($brand->status == 1) ? 'selected' : ''}} value="1">Hoạt động</option>
                                    <option {{ ($brand->status == 0) ? 'selected' : ''}} value="0">Không hoạt động</option>
                                </select>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pb-5 pt-3">
                <button type="submit" class="btn btn-primary">Cập nhật</button>
                <a href="{{route('brands.index')}}" class="btn btn-outline-dark ml-3">Huỷ</a>
            </div>
        </form>
    </div>

    <!-- /.card -->
</section>
<!-- /.content -->
@endsection


@section('customJs')
<script>
    $("#editBrandForm").submit(function(event) {
        event.preventDefault();
        var element = $(this);
        $("button[type=submit]").prop('disabled', true);
        $.ajax({
            url: '{{ route("brands.update", $brand->id) }}',
            type: 'put',
            data: element.serializeArray(),
            dataType: 'json',
            success: function(response) {
                $("button[type=submit]").prop('disabled', false);
                if (response["status"] == true) {

                    window.location.href = "{{ route('brands.index') }}";
                    $("#name").removeClass('is-feedback').siblings('p').removeClass('invalid-feedback').html("");

                    $("#slug").removeClass('is-feedback').siblings('p').removeClass('invalid-feedback').html("");
                } else {
                    if (response['notFound'] == true) {
                        window.location.href = "{{ route('brands.index') }}";
                    }

                    var errors = response['errors'];
                    if (errors['name']) {
                        $("#name").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors['name']);
                    } else {
                        $("#name").removeClass('is-feedback').siblings('p').removeClass('invalid-feedback').html("");
                    }

                    if (errors['slug']) {
                        $("#slug").addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors['slug']);
                    } else {
                        $("#slug").removeClass('is-feedback').siblings('p').removeClass('invalid-feedback').html("");
                    }
                }

            },
            error: function(jqXHR, exception) {
                console.log("Something went wrong");
            }
        })
    });

    $("#name").change(function() {
        element = $(this);
        $("button[type=submit]").prop('disabled', true);
        $.ajax({
            url: '{{ route("getSlug") }}',
            type: 'get',
            data: {
                title: element.val()
            },
            dataType: 'json',
            success: function(response) {
                $("button[type=submit]").prop('disabled', false);
                if (response["status"] == true) {
                    $("#slug").val(response["slug"]);
                }
            }
        });
    });
</script>
@endsection