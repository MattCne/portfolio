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

        /*if( isset( $accrochesDb[0] )
            && isset( $experiencesDb[0] )
            && isset( $experiencesComplementairesDb[0] )
            && isset( $etudesDb[0] ) )
        {

            $accrochesDb = $accrochesDb[0];
            $parcoursDb = $parcoursDb[0];

            $accroches = array(
                'experiences'                => $accrochesDb->getAccrocheExperiences(),
                'etudes'                     => $accrochesDb->getAccrocheEtudes(),
                'experiencesComplementaires' => $accrochesDb->getAccrocheExperiencesComplementaires(),
                'interets'                   => $accrochesDb->getAccrocheInterets()
            );

            $parcoursDb = array(
                'experiences_complementaires' => $parcoursDb->getExperiencesComplementaires(),
                'interets' => $parcoursDb->getInterets(),
            );

            foreach( $experiencesDb as $key => $experienceDb )
            {
                $experiences[$key] = array(
                    'nom'           => $experienceDb->getNom(),
                    'description'   => $experienceDb->getDescription(),
                    'url_images'    => $experienceDb->getUrlImages(),
                    'url'           => $experienceDb->getUrl(),
                    'position'      => $experienceDb->getPosition(),
                    'date'          => $experienceDb->getDate()
                );
            }

            foreach( $etudesDb as $key => $etudeDb )
            {
                $experiences[$key] = array(
                    'nom'           => $etudeDb->getNom(),
                    'description'   => $etudeDb->getDescription(),
                    'url_images'    => $etudeDb->getUrlImages(),
                    'url'           => $etudeDb->getUrl(),
                    'position'      => $etudeDb->getPosition(),
                    'date'          => $etudeDb->getDate()
                );
            }
        }*/


    }
}