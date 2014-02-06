<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ProjetInterieurController extends Controller
{
    public function renderAction($slug)
    {
        $groupes = array();

        $projetDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Projets')
            ->findOneBy( array( 'slug' => $slug ) );

        foreach( $projetDb->getProjetsGroupe() as $groupeDb )
            $groupes[$groupeDb->getNomFormate()] = $groupeDb->getNom();

        $images = $this->getDoctrine()
            ->getRepository('PortfolioBundle:ProjetImages')
            ->findBy( array( 'projet' => $projetDb ) );

        return $this->render( 'PortfolioBundle:Pages:projetInterieur.html.twig', array(
            'projet' => $projetDb,
            'images' => $images,
            'groupe' => $groupes
        ) );
    }
}