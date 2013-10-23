<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Quisuisje
 */
class Quisuisje
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $pourquoi;

    /**
     * @var string
     */
    private $competencesTech;

    /**
     * @var string
     */
    private $competencesCom;

    /**
     * @var string
     */
    private $methodes;

    /**
     * @var string
     */
    private $politique;

    /**
     * @var string
     */
    private $infos;


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
     * Set pourquoi
     *
     * @param string $pourquoi
     * @return Quisuisje
     */
    public function setPourquoi($pourquoi)
    {
        $this->pourquoi = $pourquoi;
    
        return $this;
    }

    /**
     * Get pourquoi
     *
     * @return string 
     */
    public function getPourquoi()
    {
        return $this->pourquoi;
    }

    /**
     * Set competencesTech
     *
     * @param string $competencesTech
     * @return Quisuisje
     */
    public function setCompetencesTech($competencesTech)
    {
        $this->competencesTech = $competencesTech;
    
        return $this;
    }

    /**
     * Get competencesTech
     *
     * @return string 
     */
    public function getCompetencesTech()
    {
        return $this->competencesTech;
    }

    /**
     * Set competencesCom
     *
     * @param string $competencesCom
     * @return Quisuisje
     */
    public function setCompetencesCom($competencesCom)
    {
        $this->competencesCom = $competencesCom;
    
        return $this;
    }

    /**
     * Get competencesCom
     *
     * @return string 
     */
    public function getCompetencesCom()
    {
        return $this->competencesCom;
    }

    /**
     * Set methodes
     *
     * @param string $methodes
     * @return Quisuisje
     */
    public function setMethodes($methodes)
    {
        $this->methodes = $methodes;
    
        return $this;
    }

    /**
     * Get methodes
     *
     * @return string 
     */
    public function getMethodes()
    {
        return $this->methodes;
    }

    /**
     * Set politique
     *
     * @param string $politique
     * @return Quisuisje
     */
    public function setPolitique($politique)
    {
        $this->politique = $politique;
    
        return $this;
    }

    /**
     * Get politique
     *
     * @return string 
     */
    public function getPolitique()
    {
        return $this->politique;
    }

    /**
     * Set infos
     *
     * @param string $infos
     * @return Quisuisje
     */
    public function setInfos($infos)
    {
        $this->infos = $infos;
    
        return $this;
    }

    /**
     * Get infos
     *
     * @return string 
     */
    public function getInfos()
    {
        return $this->infos;
    }
}