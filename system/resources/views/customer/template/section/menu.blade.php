@php

function checkrouteactive($route){
  if(Route::current()->uri == $route) return 'active';
}
@endphp

                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li><a href="{{url('home')}}" class="{{checkrouteactive('home')}}">Home</a></li>
                            <li><a href="{{url('produk')}}" class="{{checkrouteactive('produk')}}">Products</a></li>
                            <li><a href="{{url('kontak')}}" class="{{checkrouteactive('kontak')}}">Kontak</a></li>
                            <li><a href="{{url('login')}}" class="{{checkrouteactive('login')}}">login</a></li> 
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->