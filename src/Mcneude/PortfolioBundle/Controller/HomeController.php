<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class HomeController extends Controller
{
    /**
     * Render the homepage
     * @return Response
     */
    public function renderAction()
    {
        $homeDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Home')
            ->findAll();


        $home = isset( $homeDb[0] ) ? $homeDb[0] : null;

        return $this->render( 'PortfolioBundle:Pages:home.html.twig',
            array(
                'home' => $home
            ) );
    }
}