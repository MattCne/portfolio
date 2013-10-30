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
    });

    $sectionFooter.each(function(){
        $(this).height(h);
    });

})(window.jQuery);

/**
 * Gestion du changement de groupe dans la page Projet
 */

(function($, undefined){
    var $listeGroupeContainer = $('.full-projets .list-groupe'),
        $listeGroupe = $('.full-projets .list-groupe a'),
        $listeProjetContainer = $('.full-projets .list-projet'),
        $listeProjet = $('.full-projets .list-projet li'),

        $firstGroup  = $listeGroupeContainer.children('a:first-child'),
        $firstGroupId = $firstGroup.data('id'),

        $classActive = 'active';

    //Initialisation : le premier groupe est selectionné
    $firstGroup.addClass('active');
    $listeProjetContainer.children('li').hide();
    $listeProjetContainer.children('li.'+$firstGroupId).show();

    //Au click sur un groupe
    $listeGroupe.on('click',function(){
        var $currentId = $(this).data('id');

        $listeGroupe.removeClass($classActive);
        $(this).addClass($classActive);

        $listeProjetContainer.children('li').hide();
        $listeProjetContainer.children('li.'+$currentId).show();

        return false;
    });

})(window.jQuery);

