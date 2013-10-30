<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ProjetsGroupes
 */
class ProjetsGroupes
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
     * @var \Doctrine\Common\Collections\Collection
     */
    private $projets;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->projets = new \Doctrine\Common\Collections\ArrayCollection();
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
     * @return ProjetsGroupes
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
     * @return ProjetsGroupes
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
     * Add projets
     *
     * @param \Mcneude\PortfolioBundle\Entity\Projets $projets
     * @return ProjetsGroupes
     */
    public function addProjet(\Mcneude\PortfolioBundle\Entity\Projets $projets)
    {
        $this->projets[] = $projets;
    
        return $this;
    }

    /**
     * Remove projets
     *
     * @param \Mcneude\PortfolioBundle\Entity\Projets $projets
     */
    public function removeProjet(\Mcneude\PortfolioBundle\Entity\Projets $projets)
    {
        $this->projets->removeElement($projets);
    }

    /**
     * Get projets
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getProjets()
    {
        return $this->projets;
    }

    public function __toString()
    {
        if( $this->getNom() )
            return $this->getNom();
        else
            return '';
    }

}
