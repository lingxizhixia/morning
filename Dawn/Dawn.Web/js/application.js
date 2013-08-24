!function ($) {

  $(function(){

    var $window = $(window)

    // Docs sidebar
    setTimeout(function () {
      $('.coreos-docs-sidenav').affix({
          offset: {
            top: 180 
          }
        });
    }, 100)

    setTimeout(function () {
      $('.coreos-blog-sidenav').affix({
          offset: {
            top: 0 
          }
        });
    }, 100)

    // Back to top link
    setTimeout(function () {
      $('.bs-top').affix()
    }, 100)

  })

}(window.jQuery)
