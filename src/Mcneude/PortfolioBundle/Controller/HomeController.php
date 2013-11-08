<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class HomeController extends Controller
{
    public function renderAction()
    {
        $images = array();

        $homeDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Home')
            ->findAll();

        $projetsDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Projets')
            ->createQueryBuilder('projets')
            ->setMaxResults(5)
            ->orderBy('projets.position','DESC')
            ->getQuery()
            ->getresult();
        if( $projetsDb )
        {
            $images = $this->getDoctrine()
                ->getRepository('PortfolioBundle:ProjetImages')
                ->findBy( array( 'projet' => $projetsDb, 'isImagePrincipale' => '1' ) );
        }

        $home = isset( $homeDb[0] ) ? $homeDb[0] : null;

        return $this->render( 'PortfolioBundle:Pages:home.html.twig',
            array(
                'home' => $home,
                'projetsImages' => $images
            ) );
    }
}