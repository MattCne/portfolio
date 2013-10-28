<?php
namespace Mcneude\PortfolioBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class QuisuisjeAdmin extends Admin
{
    /**
     * Configuration du formulaire
     * @param FormMapper $formMapper
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add( 'pourquoi', 'textarea', array( 'label' => 'Pourquoi développeur web ?', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'competencesTech', 'textarea', array( 'label' => 'Compétences techniques', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'competencesCom', 'textarea', array( 'label' => 'Compétences communication', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'methodes', 'textarea', array( 'label' => 'Methodes de conception', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'politique', 'textarea', array( 'label' => 'Politique / workflow', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'infos', 'textarea', array( 'label' => 'Informations complémentaires', 'attr' => array( 'class' => 'tinymce' ) ) )
        ;
    }

    /**
     * Configuration des filtres
     * @param DatagridMapper $datagridMapper
     */
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add( 'pourquoi' )
            ->add( 'competencesTech' )
            ->add( 'competencesCom' )
            ->add( 'methodes' )
            ->add( 'politique' )
            ->add( 'infos' )
        ;
    }

    /**
     * Configuration de la liste
     * @param ListMapper $listMapper
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add( 'pourquoi' )
            ->add( 'competencesTech' )
            ->add( 'competencesCom' )
            ->add( 'methodes' )
            ->add( 'politique' )
            ->add( 'infos' )
            ->add('_action', 'actions', array(
                'actions' => array(
                    'view' => array(),
                    'edit' => array(),
                    'delete' => array(),
                )
            ))
        ;
    }
}
