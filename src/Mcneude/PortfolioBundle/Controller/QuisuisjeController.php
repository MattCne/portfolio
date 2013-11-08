<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class QuisuisjeController extends Controller
{
    public function renderAction()
    {
        $competences = array();

        $accrochesDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:QuisuisjeAccroches')
            ->findAll();

        $quisuisjeDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Quisuisje')
            ->findAll();

        $competencesTechDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:QuisuisjeCompetences')
            ->createQueryBuilder('competencesTech')
            ->where('competencesTech.isCompetencesTechniques = 1')
            ->orderBy('competencesTech.position')
            ->getQuery()
            ->getresult();

        $competencesAutreDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:QuisuisjeCompetences')
            ->createQueryBuilder('competences')
            ->where('competences.isCompetencesTechniques = 0')
            ->orderBy('competences.position')
            ->getQuery()
            ->getresult();

        $accroches = isset( $accrochesDb[0] ) ? $accrochesDb[0] : null;
        $quisuisje = isset( $quisuisjeDb[0] ) ? $quisuisjeDb[0] : null;

        return $this->render( 'PortfolioBundle:Pages:quisuisje.html.twig', array(
            'accroches' => $accroches,
            'quisuisje' => $quisuisje,
            'competencesTech' => $competencesTechDb,
            'competencesAutre' => $competencesAutreDb
        ) );
    }
}