/**
 * Gestion du slider
 */
$(function( $, undefined ){
    $('.flexslider').flexslider({
        animation: "slide"
    });
});

/**
 * Gestion de la hauteur des colonnes dans le footer
 */
(function($, undefined){
    if( typeof window.orientation === 'undefined' )
    {
        var $sectionFooter = $('body #main > footer section');
        var h = 0;
        $sectionFooter.each(function(){
            if($(this).outerHeight() >= h)
                h = $(this).outerHeight();
        });

        $sectionFooter.each(function(){
            $(this).height(h);
        });
    }

})(window.jQuery);

/**
 * Ajustement de la hauteur des elements '.box' dans les pages par colonne
 */
(function($, undefined){
    $(window).load(function() {
        if( typeof window.orientation === 'undefined' )
        {
            $('.row').each( function(){
                var h = 0,
                    $box = $(this).children('.box');

                $box.each(function(){
                    if($(this).outerHeight() >= h)
                        h = $(this).outerHeight();
                })

                $box.each(function(){
                    $(this).height(h);
                });
            });

        }
    });
})(window.jQuery);


/**
 * Gestion du changement de groupe dans la page Projet
 * TODO gestion en Ajax (plus propre à l'initialisation de la page, plus rapide au chargement)
 */

(function($, undefined){
    var animEndEventNames = {
        'WebkitAnimation' : 'webkitAnimationEnd',
        'OAnimation' : 'oAnimationEnd',
        'msAnimation' : 'MSAnimationEnd',
        'animation' : 'animationend'
    },
        // animation end event name
        animEndEventName = animEndEventNames[ Modernizr.prefixed( 'animation' ) ],

        $groupeActive = 'active',
        $projetActive = 'projet-active',
        $projetHidden = 'projet-hidden',

        $listeGroupe = $('.full-projets .list-groupe a'),
        $listeProjetContainer = $('.full-projets .list-projet'),
        $listeProjet = $('.full-projets .list-projet li'),

        $showAll = $('.full-projets .list-groupe .all');

    //Initialisation : all projects are visible
    $listeProjet.show();
    $showAll.addClass($groupeActive);
    $listeProjet.addClass($projetActive);

    //click on a group
    $listeGroupe.on( 'click',function(){
        var $currentId = $(this).data('id'),
            $currentProjet = $listeProjetContainer.children('li.'+$currentId);

        $listeGroupe.removeClass($groupeActive);
        $(this).addClass($groupeActive);

        if (Modernizr.csstransitions) {
            $listeProjet.removeClass($projetActive);
            $listeProjet.addClass($projetHidden);
            $listeProjetContainer.on( animEndEventName, 'li', function(event){
                $listeProjet.hide();
                $currentProjet.show();

                $currentProjet.removeClass($projetHidden);
                $currentProjet.addClass($projetActive);

                $listeProjetContainer.off( animEndEventName );
            });
        }

        return false;
    });

})(window.jQuery);

//Skills
(function($, undefined){

    //Initialisation
    $('.full-quisuisje #competences .competence .description').hide();

    $('.full-quisuisje #competences .competence .accordeon').on('click', function() {
        if ($(this).next().is(':visible')) $(this).removeClass('active').next('.description').slideUp();
        else $(this).addClass('active').next('.description').slideDown();
    });

})(window.jQuery);

