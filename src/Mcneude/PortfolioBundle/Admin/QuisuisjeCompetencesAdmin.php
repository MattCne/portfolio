<?php
namespace Mcneude\PortfolioBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class QuisuisjeCompetencesAdmin extends Admin
{
    /**
     * Configuration du formulaire
     * @param FormMapper $formMapper
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add( 'nom', 'text', array( 'label' => 'Nom' ) )
            ->add( 'description', 'textarea', array( 'label' => 'Description', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'position', 'text', array( 'label' => 'position' ) )
            ->add( 'image', 'text', array( 'label' => 'URL de l\'image', 'required' => false ) )
            ->add( 'isCompetencesTechniques', 'checkbox', array( 'label' => 'Cette compétence est-elle technique ?', 'required' => false ) )

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
            ->add('image')
        ;
    }

    /**
     * Configuration de la liste
     * @param ListMapper $listMapper
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('nom')
            ->add('description')
            ->add('position')
            ->add('image')
            ->add('isCompetencesTechniques')
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
