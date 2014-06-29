<?php

namespace Mcneude\PortfolioBundle\Formulaire\type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class ContactType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $form = $builder
            ->add('nom', 'text', array( 'required' => false ) )
            ->add('prenom', 'text', array( 'required' => false ) )
            ->add('sujet', 'text', array( 'attr' => array( 'class' => 'required' ) ) )
            ->add('email', 'text', array( 'attr' => array( 'class' => 'required' ) ) )
            ->add('societe', 'text', array( 'required' => false ) )
            ->add('adresse', 'text', array( 'required' => false ) )
            ->add('telephone', 'text', array( 'required' => false ) )
            ->add('message', 'textarea', array( 'attr' => array( 'class' => 'required' ) ) );
    }

    public function getName()
    {
        return 'Contact';
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'translation_domain' => 'contact'
        ));

    }
}
