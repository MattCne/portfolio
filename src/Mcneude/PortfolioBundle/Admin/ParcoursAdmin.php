<?php
namespace Mcneude\PortfolioBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class ParcoursAdmin extends Admin
{
    /**
     * Configuration du formulaire
     * @param FormMapper $formMapper
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('translations', 'a2lix_translations_gedmo', array(
                'translatable_class' => 'Mcneude\PortfolioBundle\Entity\Parcours',
                'by_reference' => false,
                'fields' => array(
                    'experiencesComplementaires' => array(
                        'label' => 'Experiences complémentaires',
                        'attr' => array( 'class' => 'tinymce' )
                    ),
                    'interets' => array(
                        'label' => 'Intérets',
                        'attr' => array( 'class' => 'tinymce' )
                    ),
                )
            ) )
            ->add( 'experiences_complementaires', 'textarea', array( 'label' => 'Experiences complémentaires' ) )
            ->add( 'interets', 'textarea', array( 'label' => 'Intérets' ) )
        ;
    }

    /**
     * Configuration des filtres
     * @param DatagridMapper $datagridMapper
     */
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('experiencesComplementaires')
            ->add('interets')
        ;
    }

    /**
     * Configuration de la liste
     * @param ListMapper $listMapper
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('experiences_complementaires')
            ->add('interets')
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
