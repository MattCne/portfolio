<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ProjetsController extends Controller
{
    public function renderAction()
    {
        $response = array();
        $groupes = array();

        $projetsDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Projets')
            ->createQueryBuilder('projets')
            ->orderBy('projets.position', 'DESC')
            ->getQuery()
            ->getresult();

        if( $projetsDb )
        {
            foreach( $projetsDb as $projetDb )
            {
                foreach( $projetDb->getProjetsGroupe() as $groupeDb )
                    $groupes[$groupeDb->getNomFormate()] = $groupeDb->getNom();
            }
        }

        return $this->render( 'PortfolioBundle:Pages:projets.html.twig', array(
            'projets' => $projetsDb,
            'groupes' => $groupes
        ) );
    }
}