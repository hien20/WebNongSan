<div id="header">
		<div class="header-top">
			<div class="container">
				<div class="pull-left auto-width-left">
					<ul class="top-menu menu-beta l-inline">
						<li><a href=""><i class="fa fa-home"></i> Hòa Hải, Ngũ Hành Sơn, Tp.Đà Nẵng</a></li>
						<li><a href=""><i class="fa fa-phone"></i> 0357677609</a></li>
					</ul>
				</div>
				<div class="pull-right auto-width-right">
					<ul class="top-details menu-beta l-inline">
						@if(Auth::check())
							<li><a href="#">Chào bạn, &nbsp;{{Auth::user()->full_name}}</a></li>
							<li><a href="{{route('quanligiohang', Auth::user()->id)}}">Quản lí giỏ hàng</a></li>
							@if(Auth::user()->full_name=="master")
									<li><a href="{{route('admin')}}">Quản lí</a></li>
							@endif

							<li><a href="{{route('dangxuat')}}">Đăng xuất</a></li>

					@else
						<li><a href="{{Route('dangki')}}">Đăng kí</a></li>
						<li><a href="{{Route('dangnhap')}}">Đăng nhập</a></li>
						@endif
					</ul>
				</div>
				<div class="clearfix"></div>
			</div> <!-- .container -->
		</div> <!-- .header-top -->
		<div class="header-body">
			<div class="container beta-relative">
				<div class="pull-left">
					<a href="index.html" id="logo"><img src="source/image/logo.png" width="200px" alt=""></a>
				</div>
				<div class="pull-right beta-components space-left ov">
					<div class="space10">&nbsp;</div>
					<div class="beta-comp">
						<form role="search" method="get" id="searchform" action="{{route('timkiem')}}">
					        <input type="text" value="" name="search"  placeholder="Nhập từ khóa..." />
					        <button class="fa fa-search" type="submit" id="searchsubmit"></button>
						</form>
					</div>

					<div class="beta-comp">

	<!--gio hang-->					<div class="cart">

							<div class="beta-select"><i class="fa fa-shopping-cart"></i> Giỏ hàng
								(@if(Session::has('cart')){{Session('cart')->totalQty}}@else Trống @endif) <i class="fa fa-chevron-down"></i></div>
							<div class="beta-dropdown cart-body">
									@if(Session::has('cart'))
								@foreach($product_cart as $products)
								<div class="cart-item">
									<a class="cart-item-delete" href="{{Route('xoagiohangAll',$products['item']['id'])}}"><i class="fa fa-times"></i></a>
									<div class="media">
										<a class="pull-left" href="#"><img src="source/image/product/{{$products['item']['image']}}" alt=""></a>
										<div class="media-body">
											<span class="cart-item-title">{{$products['item']['name']}}</span>

											<span class="cart-item-amount" style="color: #FFCC33;"><p style="color:red; margin-bottom: 3px;">số lượng:<a href="{{Route('xoagiohang',$products['item']['id'])}}"><img src="source/image/delete.png" width="14px" height="14px"></a>


												{{$products['qty']}}
												<a href="{{Route('themgiohang',$products['item']['id'])}}"><img src="source/image/add.png" alt=""width="14px" height="14px"></a></p>@if($products['item']['promotion_price']!=0)
								<span>Giá mỗi cái:{{number_format($products['item']['promotion_price'])}}</span>
											@else
								<span>Giá mỗi cái:{{number_format($products['item']['unit_price'])}}</span>
													</span>
											@endif
										</div>
									</div>
								</div>

								@endforeach
								<div class="cart-caption">
									<div class="cart-total text-right">Tổng tiền: <span class="cart-total-value">{{number_format(Session('cart')->totalPrice)}}Đ</span>
											</span></div>
									<div class="clearfix"></div>

								@endif
									<div class="center">
										<div class="space10">&nbsp;</div>
		<!--dat hang-->								 <a href="{{Route('dat-hang')}}" class="beta-btn primary text-center">Đặt hàng <i class="fa fa-chevron-right"></i></a>
									</div>
								</div>
							</div>
						</div> <!-- gio  -->

					</div>
				</div>
				<div class="clearfix"></div>
			</div> <!-- .container -->
		</div> <!-- .header-body -->
		<div class="header-bottom" style="background-color: #0277b8;">
			<div class="container">
				<a class="visible-xs beta-menu-toggle pull-right" href="#"><span class='beta-menu-toggle-text'>Menu</span> <i class="fa fa-bars"></i></a>
				<div class="visible-xs clearfix"></div>
				<nav class="main-menu">
					<ul class="l-inline ov">
						<li><a href="{{route('trangchu')}}">Trang chủ</a></li>
						<li><a >Loại Sản phẩm</a>
							<ul class="sub-menu">
								@foreach($Type_product as $Type)
								<li><a href="{{route('loaisanpham',$Type->id)}}">{{$Type->name}}</a></li>
								@endforeach
							</ul>
						</li>
						<li><a href="{{route('tintuc')}}">Tin tức</a></li>
						<li><a href="{{route('gioithieu')}}">Giới thiệu</a></li>
						<li><a href="{{route('lienhe')}}">Liên hệ</a></li>
					</ul>
					<div class="clearfix"></div>
				</nav>
			</div> <!-- .container -->
		</div> <!-- .header-bottom -->
	</div> <!-- #header -->
