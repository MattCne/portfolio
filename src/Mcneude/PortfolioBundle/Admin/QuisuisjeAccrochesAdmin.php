<?php
namespace Mcneude\PortfolioBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class QuisuisjeAccrochesAdmin extends Admin
{
    /**
     * Configuration du formulaire
     * @param FormMapper $formMapper
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add( 'accroche_methodes', 'textarea', array( 'label' => 'Methodes de conception' ) )
            ->add( 'accroche_infos', 'textarea', array( 'label' => 'Informations complémentaires' ) )
            ->add( 'accroche_politique', 'textarea', array( 'label' => 'Politique / workflow' ) )
            ->add( 'accroche_competences', 'textarea', array( 'label' => 'Compétences' ) )
        ;
    }

    /**
     * Configuration des filtres
     * @param DatagridMapper $datagridMapper
     */
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add( 'accrocheMethodes' )
            ->add( 'accrocheInfos' )
            ->add( 'accrochePolitique' )
            ->add( 'accrocheCompetences' )
        ;
    }

    /**
     * Configuration de la liste
     * @param ListMapper $listMapper
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('accroche_methodes')
            ->add('accroche_infos')
            ->add('accroche_politique')
            ->add('accroche_competences')
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
