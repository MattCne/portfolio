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

    public function __toString()
    {
        return $this->nom;
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
     * @param string $nom
     * @return Projets
     */
    public function setNom($nom)
    {
        $this->nom = $nom;
    
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

}