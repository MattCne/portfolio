<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * ParcoursAccroches
 */
class ParcoursAccroches
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $accrocheExperiences;

    /**
     * @var string
     */
    private $accrocheEtudes;

    /**
     * @var string
     */
    private $accrocheExperiencesComplementaires;

    /**
     * @var string
     */
    private $accrocheInterets;

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
     * Set accrocheExperiences
     *
     * @param string $accrocheExperiences
     * @return ParcoursAccroches
     */
    public function setAccrocheExperiences($accrocheExperiences)
    {
        $this->accrocheExperiences = $accrocheExperiences;
    
        return $this;
    }

    /**
     * Get accrocheExperiences
     *
     * @return string 
     */
    public function getAccrocheExperiences()
    {
        return $this->accrocheExperiences;
    }

    /**
     * Set accrocheEtudes
     *
     * @param string $accrocheEtudes
     * @return ParcoursAccroches
     */
    public function setAccrocheEtudes($accrocheEtudes)
    {
        $this->accrocheEtudes = $accrocheEtudes;
    
        return $this;
    }

    /**
     * Get accrocheEtudes
     *
     * @return string 
     */
    public function getAccrocheEtudes()
    {
        return $this->accrocheEtudes;
    }

    /**
     * Set accrocheExperiencesComplementaires
     *
     * @param string $accrocheExperiencesComplementaires
     * @return ParcoursAccroches
     */
    public function setAccrocheExperiencesComplementaires($accrocheExperiencesComplementaires)
    {
        $this->accrocheExperiencesComplementaires = $accrocheExperiencesComplementaires;
    
        return $this;
    }

    /**
     * Get accrocheExperiencesComplementaires
     *
     * @return string 
     */
    public function getAccrocheExperiencesComplementaires()
    {
        return $this->accrocheExperiencesComplementaires;
    }

    /**
     * Set accrocheInterets
     *
     * @param string $accrocheInterets
     * @return ParcoursAccroches
     */
    public function setAccrocheInterets($accrocheInterets)
    {
        $this->accrocheInterets = $accrocheInterets;
    
        return $this;
    }

    /**
     * Get accrocheInterets
     *
     * @return string 
     */
    public function getAccrocheInterets()
    {
        return $this->accrocheInterets;
    }

    /**
     * Set translations
     *
     * @param ArrayCollection $translations
     * @return Product
     */
    public function setTranslations($translations)
    {
        foreach ($translations as $translation) {
            $translation->setObject($this);
        }

        $this->translations = $translations;
        return $this;
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