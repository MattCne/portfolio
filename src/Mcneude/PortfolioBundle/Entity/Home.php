<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

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
    private $image;

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
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set image
     *
     * @param string $image
     * @return Home
     */
    public function setImage($image)
    {
        $this->image = $image;
    
        return $this;
    }

    /**
     * Get image
     *
     * @return string 
     */
    public function getImage()
    {
        return $this->image;
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
}