<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

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
}