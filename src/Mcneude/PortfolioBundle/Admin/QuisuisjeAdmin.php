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
            ->add( 'pourquoi', 'textarea', array( 'label' => 'Pourquoi développeur web ?' ) )
            ->add( 'competencesTech', 'textarea', array( 'label' => 'Compétences techniques' ) )
            ->add( 'competencesCom', 'textarea', array( 'label' => 'Compétences communication' ) )
            ->add( 'methodes', 'textarea', array( 'label' => 'Methodes de conception' ) )
            ->add( 'politique', 'textarea', array( 'label' => 'Politique / workflow' ) )
            ->add( 'infos', 'textarea', array( 'label' => 'Informations complémentaires' ) )
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
