<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class QuisuisjeController extends Controller
{
    public function renderAction()
    {
        $catchphraseDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:QuisuisjeAccroches')
            ->findAll();

        $whoAmIDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Quisuisje')
            ->findAll();

        $techSkillsDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:QuisuisjeCompetences')
            ->createQueryBuilder('competencesTech')
            ->where('competencesTech.isCompetencesTechniques = 1')
            ->orderBy('competencesTech.position')
            ->getQuery()
            ->getresult();

        $otherSkillsDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:QuisuisjeCompetences')
            ->createQueryBuilder('competences')
            ->where('competences.isCompetencesTechniques = 0')
            ->orderBy('competences.position')
            ->getQuery()
            ->getresult();

        $catchphrase = isset( $catchphraseDb[0] ) ? $catchphraseDb[0] : null;
        $whoAmI = isset( $whoAmIDb[0] ) ? $whoAmIDb[0] : null;

        return $this->render( 'PortfolioBundle:Pages:quisuisje.html.twig', array(
            'catchphrase' => $catchphrase,
            'whoAmI'      => $whoAmI,
            'techSkills'  => $techSkillsDb,
            'otherSkills' => $otherSkillsDb
        ) );
    }
}