<?php

namespace Mcneude\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;

class FooterController extends Controller
{

    /**
     * Render the footer
     * @param int $nbrTweets Number of tweets in the footer
     * @return Response
     */
    public function renderFooterAction( $nbrTweets, $uri  ) {

        $tweets = $this->getLastTweetsAction( $nbrTweets );
        $websites = $this->getWebsites();
        $otherProjects = $this->getOthersProjects();
        $files = $this->getFiles();

        $twitter_account = $this->container->getParameter( 'twitter_account' );

        $content = $this->renderView(
            'PortfolioBundle:layout:footer.html.twig', array(
                'tweets' => $tweets,
                'uri' => $uri,
                'websites' => $websites,
                'otherProjects'=> $otherProjects,
                'files'  => $files,
                'twitter_account' => $twitter_account
            )
        );
        return new Response( $content );
    }

    /**
     * Get the last tweets
     * @param $nbrTweets Number of tweets showing in the footer
     * @return array Tweet's date and text
     */
    private function getLastTweetsAction( $nbrTweets )
    {
        $formatedTweets = array();

        $twitter = $this->get( 'endroid.twitter' );

        $tweets = $twitter->getTimeline(array(
            'count' => $nbrTweets
        ));

        //Format tweet's url and date
        foreach( $tweets as $tweet ) {
            $dateTweet = date( 'd/m/Y H:m:s', strtotime( $tweet->created_at ) );

            $text = $tweet->text;

            if( !empty( $tweet->entities->urls ) )
            {
                foreach( $tweet->entities->urls as $tweetUrl ){
                    $urlShort = $tweetUrl->url;
                    $htmlLink = '<a target="_blank" href="'.$urlShort.'">'.$urlShort.'</a>';
                    $text = str_replace( $urlShort, $htmlLink , $tweet->text );
                }
            }

            $formatedTweets[] = array( 'date' => $dateTweet, 'text' => $text );
        }

        return ( $formatedTweets );
    }

    /**
     * Get website projects
     * @return mixed
     */
    private function getWebsites()
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

    /**
     * Get other projects
     * @return mixed
     */
    private function getOthersProjects()
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

    /**
     * Get files
     * @return mixed
     */
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