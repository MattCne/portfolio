<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Parcours
 */
class Parcours
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $experiencesComplementaires;

    /**
     * @var string
     */
    private $interets;

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
     * Set experiencesComplementaires
     *
     * @param string $experiencesComplementaires
     * @return Parcours
     */
    public function setExperiencesComplementaires($experiencesComplementaires)
    {
        $this->experiencesComplementaires = $experiencesComplementaires;
    
        return $this;
    }

    /**
     * Get experiencesComplementaires
     *
     * @return string 
     */
    public function getExperiencesComplementaires()
    {
        return $this->experiencesComplementaires;
    }

    /**
     * Set interets
     *
     * @param string $interets
     * @return Parcours
     */
    public function setInterets($interets)
    {
        $this->interets = $interets;
    
        return $this;
    }

    /**
     * Get interets
     *
     * @return string 
     */
    public function getInterets()
    {
        return $this->interets;
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