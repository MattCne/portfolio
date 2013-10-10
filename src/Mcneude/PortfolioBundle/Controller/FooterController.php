<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;

class FooterController extends Controller
{
    public function renderFooterAction( $nbrTweets ) {

        $tweets = $this->getLastTweetAction( $nbrTweets );

        $content = $this->renderView(
            'PortfolioBundle:layout:footer.html.twig',
            array( 'tweets' => $tweets )
        );

        return new Response( $content );
    }

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
            $urlShort = $tweet->entities->urls[0]->url;
            $htmlLink =  '<a target="_blank" href="'.$urlShort.'">'.$urlShort.'</a>';

            $formatedTweets[] = array( 'date' => $dateTweet, 'text' => str_replace( $urlShort, $htmlLink , $tweet->text ) );
        }

        return ( $formatedTweets );
    }
}