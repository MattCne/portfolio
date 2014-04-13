<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;

class GeneralController extends Controller
{
    public function chooseLanguageAction( Request $request, $language = NULL ){
        if($language = null)
        {
            $language = $this->container->getParameter( 'locale' );
        }

        $locale = $request->getLocale();

        if( $locale != $language)
            $request->setLocale( $language );

        $locale = $request->getLocale();

        $url = $this->container->get('request')->headers->get('referer');
        if(empty($url)) {
            $url = $this->container->get('router')->generate('homepage');
        }

        return new RedirectResponse($url);
    }
}