<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ProjetImage
 */
class ProjetImage
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
     * @var \Mcneude\PortfolioBundle\Entity\Projet
     */
    private $project;


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
     * @return ProjetImage
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
     * @return ProjetImage
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
     * @return ProjetImage
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
     * @return ProjetImage
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
     * Set project
     *
     * @param \Mcneude\PortfolioBundle\Entity\Projet $project
     * @return ProjetImage
     */
    public function setProject(\Mcneude\PortfolioBundle\Entity\Projet $project = null)
    {
        $this->project = $project;
    
        return $this;
    }

    /**
     * Get project
     *
     * @return \Mcneude\PortfolioBundle\Entity\Projet 
     */
    public function getProject()
    {
        return $this->project;
    }
}