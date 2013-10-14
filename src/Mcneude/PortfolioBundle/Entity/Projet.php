<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Projet
 */
class Projet
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
    private $accroche;

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
    private $competences;

    /**
     * @var string
     */
    private $technologies;


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
     * @return Projet
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
     * @return Projet
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
     * Set accroche
     *
     * @param string $accroche
     * @return Projet
     */
    public function setAccroche($accroche)
    {
        $this->accroche = $accroche;
    
        return $this;
    }

    /**
     * Get accroche
     *
     * @return string 
     */
    public function getAccroche()
    {
        return $this->accroche;
    }

    /**
     * Set idPrincipalImage
     *
     * @param string $idPrincipalImage
     * @return Projet
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
     * @return Projet
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
     * @return Projet
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
     * @return Projet
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
     * @return Projet
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
     * Set competences
     *
     * @param string $competences
     * @return Projet
     */
    public function setCompetences($competences)
    {
        $this->competences = $competences;
    
        return $this;
    }

    /**
     * Get competences
     *
     * @return string 
     */
    public function getCompetences()
    {
        return $this->competences;
    }

    /**
     * Set technologies
     *
     * @param string $technologies
     * @return Projet
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
