<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ProjetsController extends Controller
{
    public function renderAction()
    {
        //Récupération des projets dans la base de donnée
        /*$dbProjet = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Projet');

        $projets = $dbProjet->findAll();*/

        return $this->render( 'PortfolioBundle:Pages:projets.html.twig' );
    }
}