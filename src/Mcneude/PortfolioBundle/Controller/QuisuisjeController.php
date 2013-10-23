<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class QuisuisjeController extends Controller
{
    public function renderAction()
    {
        $accrochesDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:QuisuisjeAccroches')
            ->findAll();

        $quisuisjeDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Quisuisje')
            ->findAll();

        $accroches = isset( $accrochesDb[0] ) ? $accrochesDb[0] : null;
        $quisuisje = isset( $quisuisjeDb[0] ) ? $quisuisjeDb[0] : null;

        return $this->render( 'PortfolioBundle:Pages:quisuisje.html.twig', array(
            'accroches' => $accroches,
            'quisuisje' => $quisuisje
        ) );
    }
}