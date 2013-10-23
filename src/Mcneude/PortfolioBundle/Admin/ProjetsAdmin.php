<?php
namespace Mcneude\PortfolioBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class ProjetsAdmin extends Admin
{
    /**
     * Configuration du formulaire
     * @param FormMapper $formMapper
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add( 'nom', 'text', array( 'label' => 'Nom du projet' ) )
            ->add( 'description', 'textarea', array( 'label' => 'Description du projet' ) )
            ->add( 'difficultes', 'textarea', array( 'label' => 'Difficultés rencontrés' ) )
            ->add( 'technologies', 'textarea', array( 'label' => 'Technologies utilisées' ) )
            ->add( 'competences_acquises', 'textarea', array( 'label' => 'Compétences acquises' ) )
            ->add( 'url_miniature', 'text', array( 'label' => 'Url de la miniature principale' ) )
            ->add( 'url_internal', 'text', array( 'label' => 'Url interne', 'required' => false ) )
            ->add( 'url_external', 'text', array( 'label' => 'Url externe', 'required' => false ) )
            ->add( 'position', 'text', array( 'label' => 'Position' ) )
            ->add( 'is_website', 'checkbox', array( 'label' => 'Le projet est-il un site Internet ?') )
        ;
    }

    /**
     * Configuration des filtres
     * @param DatagridMapper $datagridMapper
     */
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('nom')
            ->add('description')
            ->add('difficultes')
            ->add('technologies')
            ->add('competencesAcquises')

        ;
    }

    /**
     * Configuration de la liste
     * @param ListMapper $listMapper
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('nom')
            ->add('description')
            ->add('difficultes')
            ->add('technologies')
            ->add('competences_acquises')
            ->add('url_miniature')
            ->add('url_internal')
            ->add('url_external')
            ->add('_action', 'actions', array(
                'actions' => array(
                    'view' => array(),
                    'edit' => array(),
                    'delete' => array(),
                )
            ) )
        ;
    }
}
