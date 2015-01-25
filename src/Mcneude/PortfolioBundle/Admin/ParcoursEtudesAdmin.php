<?php
namespace Mcneude\PortfolioBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class ParcoursEtudesAdmin extends Admin
{
    /**
     * Configuration du formulaire
     * @param FormMapper $formMapper
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('translations', 'a2lix_translations_gedmo', array(
                'translatable_class' => 'Mcneude\PortfolioBundle\Entity\ParcoursEtudes',
                'by_reference' => false,
                'fields' => array(
                    'nom' => array(
                        'label' => 'Nom',
                    ),
                    'description' => array(
                        'label' => 'Description',
                        'attr' => array( 'class' => 'tinymce' )
                    )
                )
            ) )
            ->add( 'nom', 'text', array( 'label' => 'Nom' ) )
            ->add( 'description', 'textarea', array( 'label' => 'Description', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'date', 'date', array( 'label' => 'date' ) )
            ->add( 'urlImage', 'text', array( 'label' => 'URL image : /bundles/portfolio/images/content/parcours_etudes' ) )
            ->add( 'url', 'text', array( 'label' => 'URL', 'required' => false ) )
            ->add( 'position', 'text', array( 'label' => 'Position' ) )
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
            ->add('date')
            ->add('urlImage')
            ->add('url')
            ->add('position')
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
