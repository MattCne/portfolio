<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ProjetsController extends Controller
{
    public function renderAction()
    {
        $projetsDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Projets')
            ->createQueryBuilder('projets')
            ->orderBy('projets.position')
            ->getQuery()
            ->getresult();

        return $this->render( 'PortfolioBundle:Pages:projets.html.twig', array(
            'projets' => $projetsDb
        ) );
    }
}