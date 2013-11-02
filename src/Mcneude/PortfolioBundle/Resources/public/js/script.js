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
 * TODO gestion en Ajax (plus propre à l'initialisation de la page, plus rapide au chargement)
 * TODO animation en CSS3 (ça en jette plus quand même =)
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

    //Initialisation : Tous les projets sont visibles
    $listeProjet.show();
    $showAll.addClass($groupeActive);
    $listeProjet.addClass($projetActive);

    //Au click sur un groupe
    $listeGroupe.on( 'click',function(){
        var $currentId = $(this).data('id'),
            $currentProjet = $listeProjetContainer.children('li.'+$currentId);

        console.log($currentId);

        $listeGroupe.removeClass($groupeActive);
        $(this).addClass($groupeActive);

        if (Modernizr.csstransitions) {
            $listeProjet.removeClass($projetActive);
            $listeProjet.addClass($projetHidden);
            $listeProjetContainer.on( animEndEventName, 'li', function(event){
                $listeProjet.hide();
                $currentProjet.show();

                console.log(event);

                $currentProjet.removeClass($projetHidden);
                $currentProjet.addClass($projetActive);

                $listeProjetContainer.off( animEndEventName );
            });
        }

        return false;
    });

})(window.jQuery);

