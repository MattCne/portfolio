<?php

namespace Mcneude\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Contact
 */
class Contact
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $accrocheForm;

    /**
     * @var string
     */
    private $accrocheReseaux;


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
     * Set accrocheForm
     *
     * @param string $accrocheForm
     * @return Contact
     */
    public function setAccrocheForm($accrocheForm)
    {
        $this->accrocheForm = $accrocheForm;
    
        return $this;
    }

    /**
     * Get accrocheForm
     *
     * @return string 
     */
    public function getAccrocheForm()
    {
        return $this->accrocheForm;
    }

    /**
     * Set accrocheReseaux
     *
     * @param string $accrocheReseaux
     * @return Contact
     */
    public function setAccrocheReseaux($accrocheReseaux)
    {
        $this->accrocheReseaux = $accrocheReseaux;
    
        return $this;
    }

    /**
     * Get accrocheReseaux
     *
     * @return string 
     */
    public function getAccrocheReseaux()
    {
        return $this->accrocheReseaux;
    }
}