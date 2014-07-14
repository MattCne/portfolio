<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;

class FooterController extends Controller
{

    /**
     * Rend graphiquement le footer
     * @param int $nbrTweets Nombre des derniers tweets apparaissant dans le footer
     * @return Response
     */
    public function renderFooterAction( $nbrTweets, $uri  ) {

        $tweets = $this->getLastTweetAction( $nbrTweets );
        $sitesInternet = $this->getSitesInternet();
        $autresProjets = $this->getAutresProjets();
        $fichiers = $this->getFiles();
        $twitter_account = $this->container->getParameter( 'twitter_account' );

        $content = $this->renderView(
            'PortfolioBundle:layout:footer.html.twig', array(
                'tweets' => $tweets,
                'uri' => $uri,
                'sitesInternet' => $sitesInternet,
                'autresProjets'=> $autresProjets,
                'fichiers'  => $fichiers,
                'twitter_account' => $twitter_account
            )
        );
        return new Response( $content );
    }

    /**
     * Récupère les derniers tweets
     * @param $nbrTweets Nombre des derniers tweets apparaissant dans le footer
     * @return array Texte des tweets formatés et leurs dates
     */
    private function getLastTweetAction( $nbrTweets )
    {
        $formatedTweets = array();

        $twitter = $this->get( 'endroid.twitter' );

        $tweets = $twitter->getTimeline(array(
            'count' => $nbrTweets
        ));

        //Récupération des informations utiles
        foreach( $tweets as $tweet ) {
            $dateTweet = date( 'd/m/Y h:m:s', strtotime( $tweet->created_at ) );

            if( isset( $tweet->entities->urls[0] ) )
            {
                $urlShort = $tweet->entities->urls[0]->url;
                $htmlLink =  '<a target="_blank" href="'.$urlShort.'">'.$urlShort.'</a>';
                $text = str_replace( $urlShort, $htmlLink , $tweet->text );
            }
            else
                $text = $tweet->text;

            $formatedTweets[] = array( 'date' => $dateTweet, 'text' => $text );
        }

        return ( $formatedTweets );
    }

    /**
     * Réccupère les projets "sites internet"
     * @return mixed
     */
    private function getSitesInternet()
    {
        $projetsDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Projets')
            ->createQueryBuilder('projets')
            ->where( 'projets.isWebsite = 1')
            ->orderBy('projets.position')
            ->getQuery()
            ->getresult();

        return $projetsDb;
    }

    private function getAutresProjets()
    {
        $projetsDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Projets')
            ->createQueryBuilder('projets')
            ->where( 'projets.isWebsite = 0')
            ->orderBy('projets.position')
            ->getQuery()
            ->getresult();

        return $projetsDb;
    }

    private function getFiles()
    {
        $filesDb = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Fichiers')
            ->createQueryBuilder('fichiers')
            ->orderBy('fichiers.position')
            ->getQuery()
            ->getresult();

        return $filesDb;
    }
}