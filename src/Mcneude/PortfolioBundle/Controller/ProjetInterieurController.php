<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ProjetInterieurController extends Controller
{
    public function renderAction($slug)
    {
        $projetDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Projets')
            ->findOneBy( array( 'slug' => $slug ) );

        $images = $this->getDoctrine()
            ->getRepository('PortfolioBundle:ProjetImages')
            ->findBy( array( 'projet' => $projetDb ) );

        return $this->render( 'PortfolioBundle:Pages:projetInterieur.html.twig', array(
            'projet' => $projetDb,
            'images' => $images
        ) );
    }
}