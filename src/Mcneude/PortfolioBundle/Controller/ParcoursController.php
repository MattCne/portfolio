<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ParcoursController extends Controller
{
    public function renderAction()
    {
        $accrochesDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:ParcoursAccroches')
            ->findAll();

        $experiencesDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:ParcoursExperiences')
            ->createQueryBuilder('experiences')
            ->orderBy('experiences.position')
            ->getQuery()
            ->getresult();

        $parcoursDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Parcours')
            ->findAll();

        $etudesDb =  $this->getDoctrine()
            ->getRepository('PortfolioBundle:ParcoursEtudes')
            ->createQueryBuilder('etudes')
            ->orderBy('etudes.position')
            ->getQuery()
            ->getresult();

        $accroches = isset( $accrochesDb[0] ) ? $accrochesDb[0] : null ;
        $parcours  = isset( $parcoursDb[0] ) ? $parcoursDb[0] : null ;

        $experiences = $experiencesDb;
        $etudes      = $etudesDb;

        return $this->render( 'PortfolioBundle:Pages:parcours.html.twig', array(
            'accroches'     => $accroches,
            'experiences'   => $experiences,
            'parcours'      => $parcours,
            'etudes'        => $etudes
        ) );
    }
}