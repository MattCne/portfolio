<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;


/**
 * QuisuisjeAccroches
 */
class QuisuisjeAccroches
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $accrocheCompetences;

    /**
     * @var string
     */
    private $accrocheMethodes;

    /**
     * @var string
     */
    private $accrochePolitique;

    /**
     * @var string
     */
    private $accrocheInfos;

    /**
     * @var ArrayCollection
     */
    private $translations;

    /**
     * @var string
     */
    protected $locale;



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
     * Set accrocheCompetences
     *
     * @param string $accrocheCompetences
     * @return QuisuisjeAccroches
     */
    public function setAccrocheCompetences($accrocheCompetences)
    {
        $this->accrocheCompetences = $accrocheCompetences;
    
        return $this;
    }

    /**
     * Get accrocheCompetences
     *
     * @return string 
     */
    public function getAccrocheCompetences()
    {
        return $this->accrocheCompetences;
    }

    /**
     * Set accrocheMethodes
     *
     * @param string $accrocheMethodes
     * @return QuisuisjeAccroches
     */
    public function setAccrocheMethodes($accrocheMethodes)
    {
        $this->accrocheMethodes = $accrocheMethodes;
    
        return $this;
    }

    /**
     * Get accrocheMethodes
     *
     * @return string 
     */
    public function getAccrocheMethodes()
    {
        return $this->accrocheMethodes;
    }

    /**
     * Set accrochePolitique
     *
     * @param string $accrochePolitique
     * @return QuisuisjeAccroches
     */
    public function setAccrochePolitique($accrochePolitique)
    {
        $this->accrochePolitique = $accrochePolitique;
    
        return $this;
    }

    /**
     * Get accrochePolitique
     *
     * @return string 
     */
    public function getAccrochePolitique()
    {
        return $this->accrochePolitique;
    }

    /**
     * Set accrocheInfos
     *
     * @param string $accrocheInfos
     * @return QuisuisjeAccroches
     */
    public function setAccrocheInfos($accrocheInfos)
    {
        $this->accrocheInfos = $accrocheInfos;
    
        return $this;
    }

    /**
     * Get accrocheInfos
     *
     * @return string 
     */
    public function getAccrocheInfos()
    {
        return $this->accrocheInfos;
    }

    /**
     * Get translations
     *
     * @return ArrayCollection
     */
    public function getTranslations()
    {
        return $this->translations;
    }

    /**
     * @param mixed $locale
     */
    public function setLocale($locale)
    {
        $this->locale = $locale;
    }

    /**
     * @return mixed
     */
    public function getLocale()
    {
        return $this->locale;
    }



}