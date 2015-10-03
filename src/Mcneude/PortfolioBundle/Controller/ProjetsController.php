<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ProjetsController extends Controller
{
    public function renderAction()
    {
        $formatedGroups = array();

        $projects = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Projets')
            ->createQueryBuilder('projets')
            ->orderBy('projets.position', 'DESC')
            ->getQuery()
            ->getresult();

        if( $projects )
        {
            foreach( $projects as $projet )
            {
                $groups = $projet->getProjetsGroupe();
                foreach( $groups as $group )
                    $formatedGroups[$group->getFormatedName()] = $group->getNom();
            }
        }

        return $this->render( 'PortfolioBundle:Pages:projets.html.twig', array(
            'projects' => $projects,
            'groups' => $formatedGroups
        ) );
    }
}