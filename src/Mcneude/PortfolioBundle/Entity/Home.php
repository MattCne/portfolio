<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Home
 */
class Home
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $accroche;

    /**
     * @var string
     */
    private $apprendre;

    /**
     * @var string
     */
    private $construire;

    /**
     * @var ArrayCollection
     */
    private $translations;

    /**
     * @var string
     */
    protected $locale;

    public function __construct()
    {
        $this->translations = new ArrayCollection;
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
     * Set accroche
     *
     * @param string $accroche
     * @return Home
     */
    public function setAccroche($accroche)
    {
        $this->accroche = $accroche;
    
        return $this;
    }

    /**
     * Get accroche
     *
     * @return string 
     */
    public function getAccroche()
    {
        return $this->accroche;
    }

    /**
     * Set apprendre
     *
     * @param string $apprendre
     * @return Home
     */
    public function setApprendre($apprendre)
    {
        $this->apprendre = $apprendre;
    
        return $this;
    }

    /**
     * Get apprendre
     *
     * @return string 
     */
    public function getApprendre()
    {
        return $this->apprendre;
    }

    /**
     * Set construire
     *
     * @param string $construire
     * @return Home
     */
    public function setConstruire($construire)
    {
        $this->construire = $construire;
    
        return $this;
    }

    /**
     * Get construire
     *
     * @return string 
     */
    public function getConstruire()
    {
        return $this->construire;
    }
    /**
     * @var string
     */
    private $titre;


    /**
     * Set titre
     *
     * @param string $titre
     * @return Home
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;
    
        return $this;
    }

    /**
     * Get titre
     *
     * @return string 
     */
    public function getTitre()
    {
        return $this->titre;
    }
    /**
     * @var string
     */
    private $urlImage;

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


    /**
     * Set urlImage
     *
     * @param string $urlImage
     * @return Home
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
}