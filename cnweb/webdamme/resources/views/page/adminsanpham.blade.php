@extends('master')
@section('content')
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Tên sản phẩm</th>
      <th scope="col">Loại</th>
      <th scope="col">Mô tả</th>
      <th scope="col">Giá gốc</th>
      <th scope="col">Giá khuyến mãi</th>
      <th scope="col">Ảnh</th>
      <th scope="col">Kiểu bán</th>
       <th scope="col" colspan="2" >&nbsp;&nbsp;&nbsp;&ensp;Thao tác</th>

    </tr>
  </thead>
  <tbody>
  	@foreach($ManagerProduct as $data)
    <tr>
      <th scope="row">{{$data->id}}</th>
      <td>{{$data->name}}</td>
      <td>@switch($data->id_type)
      		@case("1")
      		Rau Sạch
      		@break
      		@case("2")
      		Hoa Qủa Sạch
      		@break
      		@case("3")
      		Các Loại Củ
      		@break
      		@case("4")
      		Thực Phẩm Khô
      		@break
      		@case("5")
      		Thịt Sạch
      		@break
      		@case("6")
      		Khuyến Mãi
      		@break
      		@case("7")
      		Sản Phẩm HOT Theo Mùa
      		@break
      		@endswitch
      </td>
      <td>{{$data->description}}</td>
      <td>{{number_format($data->unit_price)}}</td>
      <td>@if($data->promotion_price=="0")Không giảm giá @else{{$data->promotion_price}}@endif</td>
      <td>{{$data->image}}</td>
      <td>{{$data->unit}}</td>
      <td><a href="{{route('suasanpham',$data->id)}}" title="">Chỉnh sửa</a></td>
      <td><a href="{{route('xoasanpham',$data->id)}}" title="">Xóa</a></td>
    </tr>
    @endforeach




  </tbody>
</table>
<button type="button" class="btn btn-outline-success btn-lg" style="margin-left:825px;"><a href="{{route('themsanpham')}}" title="">tạo sản phẩm mới</a></button>
@endsection
