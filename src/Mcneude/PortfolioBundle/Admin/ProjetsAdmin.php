<?php
namespace Mcneude\PortfolioBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class ProjetsAdmin extends Admin
{
    /**
     * Configuration du formulaire
     * @param FormMapper $formMapper
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('translations', 'a2lix_translations_gedmo', array(
                'translatable_class' => 'Mcneude\PortfolioBundle\Entity\Projets',
                'by_reference' => false,
                'fields' => array(
                    'nom' => array(
                        'label' => 'Nom du projet'
                    ),
                    'description' => array(
                        'label' => 'Description du projet',
                        'attr' => array( 'class' => 'tinymce' )
                    ),
                    'difficultes' => array(
                        'label' => 'Difficultés rencontrés',
                        'attr' => array( 'class' => 'tinymce' )
                    ),
                    'technologies' => array(
                        'label' => 'Technologies utilisées',
                        'attr' => array( 'class' => 'tinymce' )
                    ),
                    'competencesAcquises' => array(
                        'label' => 'Compétences acquises',
                        'attr' => array( 'class' => 'tinymce' )
                    )
                )
            ) )
            ->add( 'nom', 'text', array( 'label' => 'Nom du projet' ) )
            ->add( 'description', 'textarea', array( 'label' => 'Description du projet', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'difficultes', 'textarea', array( 'label' => 'Difficultés rencontrés', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'technologies', 'textarea', array( 'label' => 'Technologies utilisées', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'competences_acquises', 'textarea', array( 'label' => 'Compétences acquises', 'attr' => array( 'class' => 'tinymce' ) ) )
            ->add( 'projetsGroupe', 'sonata_type_model', array( 'label' => 'Groupes', 'required' => false, 'expanded' => true, 'multiple' => true)  )
            ->add( 'url_miniature', 'text', array( 'label' => 'Url de la miniature principale :  /bundles/portfolio/images/content/projets_miniatures' ) )
            ->add( 'url_external', 'text', array( 'label' => 'Url externe : http://', 'required' => false ) )
            ->add( 'position', 'text', array( 'label' => 'Position' ) )
            ->add( 'is_website', 'checkbox', array( 'label' => 'Le projet est-il un site Internet ?', 'required' => false ) )
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
            ->add('difficultes')
            ->add('technologies')
            ->add('competencesAcquises')
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
            ->add('description')
            ->add('difficultes')
            ->add('technologies')
            ->add('competences_acquises')
            ->add( 'projetsGroupe' )
            ->add('url_miniature')
            ->add('url_external')
            ->add( 'position' )
            ->add( 'slug' )
            ->add('_action', 'actions', array(
                'actions' => array(
                    'show' => array(),
                    'edit' => array(),
                    'delete' => array(),
                )
            ) )
        ;
    }
}
