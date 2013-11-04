<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ContactController extends Controller
{
    public function renderAction()
    {
        return $this->render( 'PortfolioBundle:Pages:contact.html.twig' );
    }
}