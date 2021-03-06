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
            ->add('translations', 'a2lix_translations_gedmo', array(
                'translatable_class' => 'Mcneude\PortfolioBundle\Entity\Quisuisje',
                'by_reference' => false,
                'fields' => array(
                    'pourquoi' => array(
                        'label' => 'Pourquoi développeur web ?',
                        'attr' => array( 'class' => 'tinymce' )
                    ),
                    'methodes' => array(
                        'label' => 'Methodes de conception',
                        'attr' => array( 'class' => 'tinymce' )
                    ),
                    'politique' => array(
                        'label' => 'Politique / workflow',
                        'attr' => array( 'class' => 'tinymce' )
                    ),
                    'infos' => array(
                        'label' => 'Informations complémentaires',
                        'attr' => array( 'class' => 'tinymce' )
                    )
                )
            ) )
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
            ->add( 'methodes' )
            ->add( 'politique' )
            ->add( 'infos' )
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
