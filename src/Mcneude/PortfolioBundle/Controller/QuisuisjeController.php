<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class QuisuisjeController extends Controller
{
    public function renderAction()
    {
        $quiSuisJeTable = $this->getDoctrine()
            ->getRepository('PortfolioBundle:QuiSuisJe');
        $quisuisje = $quiSuisJeTable->findAll();

        //On prend le premier résultat
        $quisuisje = $quisuisje[0];

        return $this->render( 'PortfolioBundle:Pages:quisuisje.html.twig', array(
            'pourquoi'      => $quisuisje->getPourquoi(),
            'politique'     => $quisuisje->getPolitique(),
            'methodes'      => $quisuisje->getMethodes(),
            'infos'         => $quisuisje->getInfos(),
            'competences'   => $quisuisje->getCompetences()
        ) );
    }
}