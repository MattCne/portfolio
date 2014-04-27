<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;


/**
 * Projets
 */
class Projets
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $nom;

    /**
     * @var integer
     */
    private $position;

    /**
     * @var string
     */
    private $description;

    /**
     * @var string
     */
    private $idPrincipalImage;

    /**
     * @var string
     */
    private $urlInternal;

    /**
     * @var string
     */
    private $urlExternal;

    /**
     * @var boolean
     */
    private $isWebsite;

    /**
     * @var string
     */
    private $difficultes;

    /**
     * @var string
     */
    private $technologies;

    /**
     * @var ArrayCollection
     */
    private $projetImages;

    /**
     * @var ArrayCollection
     */
    private $translations;

    /**
     * @var string
     */
    protected $locale;




    public function __toString()
    {
        if( $this->nom )
            return $this->nom;
        else
            return 'Unknown';
    }


    public function __construct() {
        $this->projetImages = new ArrayCollection();
    }

    public function addProjetImages( \Mcneude\PortfolioBundle\Entity\ProjetImages $projetImages )
    {
        $projetImages->setProjet( $this );
        $this->projetImages->add( $projetImages );

        return $this;
    }

    public function getProjetImages()
    {
        return $this->projetImages;
    }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nom
     *
     * Ajoute le nom et crée le slug à partir de celui ci
     * @param string $nom
     * @return Projets
     */
    public function setNom($nom)
    {
        $this->nom = $nom;
        $this->setSlug( $this->slugify( $nom ) );

        return $this;
    }

    /**
     * Get nom
     *
     * @return string 
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set position
     *
     * @param integer $position
     * @return Projets
     */
    public function setPosition($position)
    {
        $this->position = $position;
    
        return $this;
    }

    /**
     * Get position
     *
     * @return integer 
     */
    public function getPosition()
    {
        return $this->position;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Projets
     */
    public function setDescription($description)
    {
        $this->description = $description;
    
        return $this;
    }

    /**
     * Get description
     *
     * @return string 
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set idPrincipalImage
     *
     * @param string $idPrincipalImage
     * @return Projets
     */
    public function setIdPrincipalImage($idPrincipalImage)
    {
        $this->idPrincipalImage = $idPrincipalImage;
    
        return $this;
    }

    /**
     * Get idPrincipalImage
     *
     * @return string 
     */
    public function getIdPrincipalImage()
    {
        return $this->idPrincipalImage;
    }

    /**
     * Set urlInternal
     *
     * @param string $urlInternal
     * @return Projets
     */
    public function setUrlInternal($urlInternal)
    {
        $this->urlInternal = $urlInternal;
    
        return $this;
    }

    /**
     * Get urlInternal
     *
     * @return string 
     */
    public function getUrlInternal()
    {
        return $this->urlInternal;
    }

    /**
     * Set urlExternal
     *
     * @param string $urlExternal
     * @return Projets
     */
    public function setUrlExternal($urlExternal)
    {
        $this->urlExternal = $urlExternal;
    
        return $this;
    }

    /**
     * Get urlExternal
     *
     * @return string 
     */
    public function getUrlExternal()
    {
        return $this->urlExternal;
    }

    /**
     * Set isWebsite
     *
     * @param boolean $isWebsite
     * @return Projets
     */
    public function setIsWebsite($isWebsite)
    {
        $this->isWebsite = $isWebsite;
    
        return $this;
    }

    /**
     * Get isWebsite
     *
     * @return boolean 
     */
    public function getIsWebsite()
    {
        return $this->isWebsite;
    }

    /**
     * Set difficultes
     *
     * @param string $difficultes
     * @return Projets
     */
    public function setDifficultes($difficultes)
    {
        $this->difficultes = $difficultes;
    
        return $this;
    }

    /**
     * Get difficultes
     *
     * @return string 
     */
    public function getDifficultes()
    {
        return $this->difficultes;
    }

    /**
     * Set technologies
     *
     * @param string $technologies
     * @return Projets
     */
    public function setTechnologies($technologies)
    {
        $this->technologies = $technologies;
    
        return $this;
    }

    /**
     * Get technologies
     *
     * @return string 
     */
    public function getTechnologies()
    {
        return $this->technologies;
    }

    /**
     * @var string
     */
    private $competencesAcquises;

    /**
     * @var string
     */
    private $urlMiniature;


    /**
     * Set competencesAcquises
     *
     * @param string $competencesAcquises
     * @return Projets
     */
    public function setCompetencesAcquises($competencesAcquises)
    {
        $this->competencesAcquises = $competencesAcquises;
    
        return $this;
    }

    /**
     * Get competencesAcquises
     *
     * @return string 
     */
    public function getCompetencesAcquises()
    {
        return $this->competencesAcquises;
    }

    /**
     * Set urlMiniature
     *
     * @param string $urlMiniature
     * @return Projets
     */
    public function setUrlMiniature($urlMiniature)
    {
        $this->urlMiniature = $urlMiniature;
    
        return $this;
    }

    /**
     * Get urlMiniature
     *
     * @return string 
     */
    public function getUrlMiniature()
    {
        return $this->urlMiniature;
    }
    /**
     * @var \Doctrine\Common\Collections\Collection
     */
    private $projetsGroupe;


    /**
     * Add projetsGroupe
     *
     * @param \Mcneude\PortfolioBundle\Entity\ProjetsGroupes $projetsGroupe
     * @return Projets
     */
    public function addProjetsGroupe(\Mcneude\PortfolioBundle\Entity\ProjetsGroupes $projetsGroupe)
    {
        $this->projetsGroupe[] = $projetsGroupe;
    
        return $this;
    }

    /**
     * Remove projetsGroupe
     *
     * @param \Mcneude\PortfolioBundle\Entity\ProjetsGroupes $projetsGroupe
     */
    public function removeProjetsGroupe(\Mcneude\PortfolioBundle\Entity\ProjetsGroupes $projetsGroupe)
    {
        $this->projetsGroupe->removeElement($projetsGroupe);
    }

    /**
     * Get projetsGroupe
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getProjetsGroupe()
    {
        return $this->projetsGroupe;
    }
    /**
     * @var string
     */
    private $slug;


    /**
     * Set slug
     *
     * @param string $slug
     * @return Projets
     */
    public function setSlug($slug)
    {
       $this->slug = $slug;

        return $this;
    }

    /**
     * Get slug
     *
     * @return string 
     */
    public function getSlug()
    {
        return $this->slug;
    }

    /**
     * Crée un slug pour le projet
     * @param $string le texte à convertir
     * @return string le slug
     * @todo Ca marche tant qu'on fait pas n'importe quoi, mais bon a voir pour la robustesse (regex ?)
     */
    public function slugify( $string )
    {
        return strtolower( str_replace( ' ', '-', $string ) );
    }

    /**
     * Set translations
     *
     * @param ArrayCollection $translations
     * @return Product
     */
    public function setTranslations($translations)
    {
        foreach ($translations as $translation) {
            $translation->setObject($this);
        }

        $this->translations = $translations;
        return $this;
    }

    /**
     * Get translations
     *
     * @return ArrayCollection
     */
    public function getTranslations()
    {
        return $this->translations;
    }

    /**
     * @param mixed $locale
     */
    public function setLocale($locale)
    {
        $this->locale = $locale;
    }

    /**
     * @return mixed
     */
    public function getLocale()
    {
        return $this->locale;
    }
}