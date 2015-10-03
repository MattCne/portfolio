<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ProjetInterieurController extends Controller
{
    public function renderAction($slug)
    {
        $groups = array();

        $project = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Projets')
            ->findOneBy( array( 'slug' => $slug ) );

        foreach( $project->getProjetsGroupe() as $group )
            $groups[$group->getFormatedName()] = $group->getNom();

        $images = $this->getDoctrine()
            ->getRepository('PortfolioBundle:ProjetImages')
            ->findBy( array( 'projet' => $project ) );

        return $this->render( 'PortfolioBundle:Pages:projetInterieur.html.twig', array(
            'project' => $project,
            'images' => $images,
            'group' => $groups
        ) );
    }
}