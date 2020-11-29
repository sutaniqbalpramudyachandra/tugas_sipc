<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SIPC| Store Website</title>
    @include('customer.template.section.link')

    </head>
    
    <body>

    
    @include('customer.template.section.header')

    @include('customer.template.section.main-banner')

    @yield('content')
    
    @include('customer.template.section.footer')

    @include('customer.template.section.script')

  </body>
</html>