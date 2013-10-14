<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Competence
 */
class Competence
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
    private $note;

    /**
     * @var string
     */
    private $urlVisuel;


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
     * @return Competence
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
     * Set note
     *
     * @param integer $note
     * @return Competence
     */
    public function setNote($note)
    {
        $this->note = $note;
    
        return $this;
    }

    /**
     * Get note
     *
     * @return integer 
     */
    public function getNote()
    {
        return $this->note;
    }

    /**
     * Set urlVisuel
     *
     * @param string $urlVisuel
     * @return Competence
     */
    public function setUrlVisuel($urlVisuel)
    {
        $this->urlVisuel = $urlVisuel;
    
        return $this;
    }

    /**
     * Get urlVisuel
     *
     * @return string 
     */
    public function getUrlVisuel()
    {
        return $this->urlVisuel;
    }
}
