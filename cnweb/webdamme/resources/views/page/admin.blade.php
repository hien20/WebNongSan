@extends('master')
@section('content')


<div class="container">
<table class="table table-striped">
  <thead>
    <tr>
      <th scope ="col">Mã</th>
      <th scope="col">Mã đơn hàng</th>
      <th scope="col">Mã sản phẩm </th>
      <th scope="col">Số lượng</th>
      <th scope="col">Tổng tiền</th>
       <th scope="col">Tình trạng</th>
      <th scope="collapsing">Cập nhật trạng thái đơn hàng</th>
      <th scope="collapsing">Xóa</th>
    </tr>
  </thead>
  <tbody>
      @foreach($billDetail as $billShip)
    <tr>
      <th scope="row">{{$billShip->id}}</th>
      <th scope="row">{{$billShip->id_bill}} </th>
      <td>{{$billShip->id_product}}</td>
      <td>{{$billShip->quantity}}</td>
      <td>{{$billShip->unit_price}}</td>
       <td>{{$billShip->orderStatus}}</td>
         <td><a href="{{route('suadonhang',$billShip->id)}}" style="margin-left:60px;">Sửa</a></td>
      <td><a href="{{route('delete',$billShip->id)}}">Delete</a></td>
    </tr>
    @endforeach
  </tbody>
</table>
  <button type="button" class="btn btn-outline-info btn-lg"><a href="{{route('quanlisanpham')}}">Quản lí sản phẩm</a></button>
</div>


@endsection
