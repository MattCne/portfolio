<?php
namespace Mcneude\PortfolioBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class ProjetImagesAdmin extends Admin
{
    /**
     * Configuration du formulaire
     * @param FormMapper $formMapper
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add( 'nom', 'text', array( 'label' => 'Nom' ) )
            ->add( 'url', 'text', array( 'label' => 'Url : /bundles/portfolio/images/content/projets' ) )
            ->add( 'position', 'text', array( 'label' => 'position' ) )
            ->add( 'isImagePrincipale', 'checkbox', array( 'label' => 'Image principale ?', 'required' => false ) )
            ->add( 'projet', 'sonata_type_model', array(), array() )
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
            ->add( 'url')
            ->add( 'position' )
            ->add( 'isImagePrincipale' )
        ;
    }

    /**
     * Configuration de la liste
     * @param ListMapper $listMapper
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('nom')
            ->add('url')
            ->add('position')
            ->add( 'projet', 'sonata_type_model', array(), array() )
            ->add( 'isImagePrincipale' )
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
