/**
 * Gestion du slider
 */
$(function( $, undefined ){
    $('.flexslider').flexslider({
        animation: "slide"
    });
});

/**
 * Gestion de la taille des colonnes dans le footer
 */
(function($, undefined){
    var $sectionFooter = $('body #main > footer section');
    var h = 0;
    $sectionFooter.each(function(){
        if($(this).outerHeight() >= h)
            h = $(this).outerHeight();
    })
    $sectionFooter.each(function(){
        $(this).height(h);
    })

})(window.jQuery);
