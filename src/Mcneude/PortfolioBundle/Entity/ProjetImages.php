<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ProjetImages
 */
class ProjetImages
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $url;

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
    private $mignatureUrl;

    /**
     * @var \Mcneude\PortfolioBundle\Entity\Projets
     */
    private $projet;


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
     * Set url
     *
     * @param string $url
     * @return ProjetImages
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
     * Set nom
     *
     * @param string $nom
     * @return ProjetImages
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
     * @return ProjetImages
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
     * Set mignatureUrl
     *
     * @param string $mignatureUrl
     * @return ProjetImages
     */
    public function setMignatureUrl($mignatureUrl)
    {
        $this->mignatureUrl = $mignatureUrl;
    
        return $this;
    }

    /**
     * Get mignatureUrl
     *
     * @return string 
     */
    public function getMignatureUrl()
    {
        return $this->mignatureUrl;
    }

    /**
     * Set projet
     *
     * @param \Mcneude\PortfolioBundle\Entity\Projets $projet
     * @return ProjetImages
     */
    public function setProjet(\Mcneude\PortfolioBundle\Entity\Projets $projet = null)
    {
        $this->projet = $projet;
    
        return $this;
    }

    /**
     * Get projet
     *
     * @return \Mcneude\PortfolioBundle\Entity\Projets 
     */
    public function getProjet()
    {
        return $this->projet;
    }
}