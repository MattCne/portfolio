<?php
namespace Mcneude\PortfolioBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class ContactReseauxAdmin extends Admin
{
    /**
     * Configuration du formulaire
     * @param FormMapper $formMapper
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('translations', 'a2lix_translations', array(
                'by_reference' => false,
                'fields' => array(
                    'nom' => array(
                        'label' => 'Nom'
                    ),
                    'description' => array(
                        'label' => 'Description',
                        'attr' => array( 'class' => 'tinymce' ) )
                )
            ) )
            ->add( 'nom', 'text', array( 'label' => 'Nom' ) )
            ->add( 'description', 'textarea', array( 'label' => 'Description', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'classReseau', 'text', array( 'label' => 'Classe du réseau. Doit être lié à une classe CSS.' ) )
            ->add( 'urlImage', 'text', array( 'label' => 'URL de l\'image : bundles/portfolio/images' ) )
            ->add( 'url', 'text', array( 'label' => 'URL du réseau' ) )
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
            ->add('classReseau')
            ->add('url')
            ->add('urlImage')
            ->add('position')
        ;
    }

    /**<
     * Configuration de la liste
     * @param ListMapper $listMapper
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->add('nom')
            ->add('classReseau')
            ->add('description')
            ->add('url')
            ->add('urlImage')
            ->add('position')
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
