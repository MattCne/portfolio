<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ParcoursController extends Controller
{
    public function renderAction()
    {
        $catchphrases = $this->getDoctrine()
            ->getRepository( 'PortfolioBundle:ParcoursAccroches' )
            ->createQueryBuilder( 'parcours' )
            ->getQuery()
            ->getSingleResult();


        $experiences = $this->getDoctrine()
            ->getRepository( 'PortfolioBundle:ParcoursExperiences' )
            ->createQueryBuilder( 'experiences' )
            ->orderBy( 'experiences.position' )
            ->getQuery()
            ->getresult();

        $career = $this->getDoctrine()
            ->getRepository( 'PortfolioBundle:Parcours' )
            ->createQueryBuilder( 'parcours' )
            ->getQuery()
            ->getSingleResult();

        $studies =  $this->getDoctrine()
            ->getRepository( 'PortfolioBundle:ParcoursEtudes' )
            ->createQueryBuilder( 'etudes' )
            ->orderBy( 'etudes.position' )
            ->getQuery()
            ->getresult();

        return $this->render( 'PortfolioBundle:Pages:parcours.html.twig', array(
            'catchphrases'   => $catchphrases,
            'experiences'   => $experiences,
            'career'        => $career,
            'studies'       => $studies
        ) );
    }
}