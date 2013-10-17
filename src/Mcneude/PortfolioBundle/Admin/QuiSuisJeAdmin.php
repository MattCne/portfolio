<?php
namespace Mcneude\PortfolioBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class QuiSuisJeAdmin extends Admin
{
    /**
     * Configuration du formulaire
     * @param FormMapper $formMapper
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add( 'pourquoi', 'textarea', array( 'label' => 'Pourquoi développeur web ?' ), array('edit' => 'list') )
            ->add( 'politique', 'textarea', array( 'label' => 'Politique / Workflow' ) )
            ->add( 'methodes', 'textarea', array( 'label' => 'Méthodes de conception' ) )
            ->add( 'infos', 'textarea', array( 'label' => 'Informations complémentaires' ) )
            ->add( 'competences', 'textarea', array( 'label' => 'Compétences' ) )
        ;
    }

    /**
     * Configuration des filtres
     * @param DatagridMapper $datagridMapper
     */
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('pourquoi')
            ->add('politique')
            ->add('methodes')
            ->add('infos')
            ->add('competences')
        ;
    }

    /**
     * Configuration de la liste
     * @param ListMapper $listMapper
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('pourquoi')
            ->add('politique')
            ->add('methodes')
            ->add('infos')
            ->add('competences')
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
