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
            ->add('translations', 'a2lix_translations_gedmo', array(
                'translatable_class' => 'Mcneude\PortfolioBundle\Entity\QuisuisjeAccroches',
                'by_reference' => false,
                'fields' => array(
                    'accrocheMethodes' => array(
                        'label' => 'Methodes de conception',
                        'attr' => array( 'class' => 'tinymce' )
                    ),
                    'accrocheInfos' => array(
                        'label' => 'Informations complémentaires',
                        'attr' => array( 'class' => 'tinymce' )
                    ),
                    'accrochePolitique' => array(
                        'label' => 'Politique / workflow',
                        'attr' => array( 'class' => 'tinymce' )
                    ),
                    'accrocheCompetences' => array(
                        'label' => 'Compétences',
                        'attr' => array( 'class' => 'tinymce' )
                    ),

                )
            ) )
            ->add( 'accroche_methodes', 'textarea', array( 'label' => 'Methodes de conception', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'accroche_infos', 'textarea', array( 'label' => 'Informations complémentaires', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'accroche_politique', 'textarea', array( 'label' => 'Politique / workflow', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'accroche_competences', 'textarea', array( 'label' => 'Compétences', 'attr' => array( 'class' => 'tinymce' ) ) )
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
                    'show' => array(),
                    'edit' => array(),
                    'delete' => array(),
                )
            ))
        ;
    }
}
