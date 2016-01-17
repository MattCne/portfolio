<?php

namespace Mcneude\PortfolioBundle\Controller;

use Mcneude\PortfolioBundle\Formulaire\type\ContactType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Mcneude\PortfolioBundle\Formulaire\Contact;
use Symfony\Component\Config\Definition\Exception\Exception;
use Symfony\Component\HttpFoundation\Request;

class ContactController extends Controller
{
    /**
     * Render the contact page
     * @param Request $request
     * @return Response
     */
    public function renderAction( Request $request )
    {
        $contact = new Contact();
        $form = $this->createForm( 'Contact', $contact );

        $contact = $this->getDoctrine()
            ->getRepository('PortfolioBundle:Contact')
            ->findAll();

        $reseaux = $this->getDoctrine()
            ->getRepository('PortfolioBundle:ContactReseaux')
            ->createQueryBuilder('reseau')
            ->orderBy('reseau.position')
            ->getQuery()
            ->getresult();

        if ( $request->isMethod( 'POST' ) )
        {
            $form->submit( $request );

            if ( $form->isValid() )
            {
                $adress = $this->container->getParameter( 'admin_email' );
                $message = \Swift_Message::newInstance()
                            ->setSubject( $this->container->getParameter( 'admin_email_subject_prefixe' ).$form->get( 'sujet' )->getData() )
                            ->setFrom( $form->get( 'email' )->getData() )
                            ->setTo( $adress )
                            ->setContentType("text/html")
                            ->setBody(
                                $this->renderView(
                                    'PortfolioBundle:Emails/Forms:contact.html.twig',
                                    array(
                                        'nom' => $form->get( 'nom' )->getData(),
                                        'prenom' => $form->get( 'prenom' )->getData(),
                                        'sujet' => $form->get( 'sujet' )->getData(),
                                        'societe' => $form->get( 'societe' )->getData(),
                                        'adresse' => $form->get( 'adresse' )->getData(),
                                        'telephone' => $form->get( 'telephone' )->getData(),
                                        'message' => $form->get( 'message' )->getData()
                                    )
                                )
                            );

                $this->get( 'mailer' )->send( $message );

                $this->addFlash(
                    'notice',
                    $this->get('translator')->trans('contact.message.email_sent')
                );

                return $this->redirect( $this->generateUrl( 'contact' ) );
            }
        }

        return $this->render('PortfolioBundle:Pages:contact.html.twig', array(
            'form' => $form->createView(),
            'contact' => $contact,
            'reseaux' => $reseaux
        ) );
    }
}