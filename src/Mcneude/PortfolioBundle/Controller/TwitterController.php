<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;

class TwitterController extends Controller
{
    public function getLastTweetAction( $max )
    {
        $reponse = '';

        $twitter = $this->get('endroid.twitter');

        // Retrieve the user's timeline
        $tweets = $twitter->getTimeline(array(
            'count' => $max
        ));

        foreach( $tweets as $tweet )
            $reponse .=  '<li>'.$tweet->text.'</li>';

        return new Response( $reponse );
    }
}