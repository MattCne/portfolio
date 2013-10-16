<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * QuiSuisJe
 */
class QuiSuisJe
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
    private $politique;

    /**
     * @var string
     */
    private $methodes;

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
     * @return QuiSuisJe
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
     * Set politique
     *
     * @param string $politique
     * @return QuiSuisJe
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
     * Set methodes
     *
     * @param string $methodes
     * @return QuiSuisJe
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
     * Set infos
     *
     * @param string $infos
     * @return QuiSuisJe
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
    /**
     * @var string
     */
    private $competences;


    /**
     * Set competences
     *
     * @param string $competences
     * @return QuiSuisJe
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
}