<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ContactReseaux
 */
class ContactReseaux
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
    private $classReseau;

    /**
     * @var string
     */
    private $description;

    /**
     * @var string
     */
    private $urlImage;

    /**
     * @var string
     */
    private $url;


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
     * @return ContactReseaux
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
     * Set classReseau
     *
     * @param string $classReseau
     * @return ContactReseaux
     */
    public function setClassReseau($classReseau)
    {
        $this->classReseau = $classReseau;
    
        return $this;
    }

    /**
     * Get classReseau
     *
     * @return string 
     */
    public function getClassReseau()
    {
        return $this->classReseau;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return ContactReseaux
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
     * Set urlImage
     *
     * @param string $urlImage
     * @return ContactReseaux
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

    /**
     * Set url
     *
     * @param string $url
     * @return ContactReseaux
     */
    public function setUrl($url)
    {
        $this->url = $url;
    
        return $this;
    }

    /**
     * Get url
     *
     * @return string 
     */
    public function getUrl()
    {
        return $this->url;
    }
    /**
     * @var integer
     */
    private $position;


    /**
     * Set position
     *
     * @param integer $position
     * @return ContactReseaux
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
}