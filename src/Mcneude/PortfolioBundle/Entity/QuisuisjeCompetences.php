<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * QuisuisjeCompetences
 */
class QuisuisjeCompetences
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
     * @var string
     */
    private $description;

    /**
     * @var integer
     */
    private $position;

    /**
     * @var string
     */
    private $image;


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
     * @return QuisuisjeCompetences
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
     * Set description
     *
     * @param string $description
     * @return QuisuisjeCompetences
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
     * Set position
     *
     * @param integer $position
     * @return QuisuisjeCompetences
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
     * Set image
     *
     * @param string $image
     * @return QuisuisjeCompetences
     */
    public function setImage($image)
    {
        $this->image = $image;
    
        return $this;
    }

    /**
     * Get image
     *
     * @return string 
     */
    public function getImage()
    {
        return $this->image;
    }
    /**
     * @var integer
     */
    private $isCompetencesTechniques;


    /**
     * Set isCompetencesTechniques
     *
     * @param integer $isCompetencesTechniques
     * @return QuisuisjeCompetences
     */
    public function setIsCompetencesTechniques($isCompetencesTechniques)
    {
        $this->isCompetencesTechniques = $isCompetencesTechniques;
    
        return $this;
    }

    /**
     * Get isCompetencesTechniques
     *
     * @return integer 
     */
    public function getIsCompetencesTechniques()
    {
        return $this->isCompetencesTechniques;
    }

    /**
     * Get NomFormate
     * Renvoie le nom formate (sans espace ni majuscules)
     * @return string
     */
    public function getNomFormate()
    {
        return strtolower( str_replace( ' ', '_', $this->nom ) );
    }
    /**
     * @var string
     */
    private $urlImage;


    /**
     * Set urlImage
     *
     * @param string $urlImage
     * @return QuisuisjeCompetences
     */
    public function setUrlImage($urlImage)
    {
        $this->urlImage = $urlImage;
    
        return $this;
    }

    /**
     * Get urlImage
     *
     * @return string 
     */
    public function getUrlImage()
    {
        return $this->urlImage;
    }
}