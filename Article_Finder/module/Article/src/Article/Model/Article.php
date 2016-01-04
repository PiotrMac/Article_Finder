<?php

 namespace Article\Model;
 
 use Zend\InputFilter\InputFilter;
 use Zend\InputFilter\InputFilterAwareInterface;
 use Zend\InputFilter\InputFilterInterface;

 class Article implements InputFilterAwareInterface
 {
     public $id_artykulu;
     public $data_dodania;
     public $tytul;
     public $tekst;
     public $id_kategorii;
     public $email_autora;
     protected $inputFilter;

     public function exchangeArray($data)
     {
         $this->id_artykulu     = (!empty($data['id_artykulu'])) ? $data['id_artykulu'] : null;
         $this->data_dodania = (!empty($data['data_dodania'])) ? $data['data_dodania'] : null;
         $this->tytul  = (!empty($data['tytul'])) ? $data['tytul'] : null;
         $this->tekst = (!empty($data['tekst'])) ? $data['tekst'] : null;
         $this->id_kategorii  = (!empty($data['id_kategorii'])) ? $data['id_kategorii'] : null;
         $this->email_autora  = (!empty($data['email_autora'])) ? $data['email_autora'] : null;
     }
      public function getArrayCopy()
     {
         /* return array(
         'id_artykulu' => $this->id_artykulu, 
         'data_dodania' => $this->data_dodania, 
         'tytul' => $this->tytul,
         'tekst' => $this->tekst, 
         'id_kategorii' => $this->id_kategorii
              
         );*/
          return get_object_vars($this);
     }
     
      public function setInputFilter(InputFilterInterface $inputFilter)
     {
         throw new \Exception("Not used");
     }

     public function getInputFilter()
     {
         if (!$this->inputFilter) {
             $inputFilter = new InputFilter();

             $inputFilter->add(array(
                 'name'     => 'id_artykulu',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'Int'),
                 ),
             ));
           /*   $inputFilter->add(array(
                 'name'     => 'email_autora',
                 'required' => true,
                 
                 
             ));
              */
             
             $inputFilter->add(array(
                 'name'     => 'data_dodania',
                 'required' => false,
                 'filters'  => array(
                     array('name' => 'Int'),
                 ),
             ));
             

             $inputFilter->add(array(
                 'name'     => 'tekst',
                 'required' => true,
                 'filters'  => array(
                     //array('name' => 'StripTags'),
                     array('name' => 'StringTrim'),
                 ),
                 'validators' => array(
                     array(
                         'name'    => 'StringLength',
                         'options' => array(
                             'encoding' => 'UTF-8',
                             'min'      => 1,
                             'max'      => 10000000,
                         ),
                     ),
                 ),
             ));
             $inputFilter->add(array(
                 'name'     => 'id_kategorii',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'StripTags'),
                     array('name' => 'StringTrim'),
                 ),
                 'validators' => array(
                     array(
                         'name'    => 'StringLength',
                         'options' => array(
                             'encoding' => 'UTF-8',
                             'min'      => 1,
                             
                         ),
                     ),
                 ),
             ));
             

             $inputFilter->add(array(
                 'name'     => 'tytul',
                 'required' => true,
                 'filters'  => array(
                     array('name' => 'StripTags'),
                     array('name' => 'StringTrim'),
                 ),
                 'validators' => array(
                     array(
                         'name'    => 'StringLength',
                         'options' => array(
                             'encoding' => 'UTF-8',
                             'min'      => 1,
                             'max'      => 255,
                         ),
                     ),
                 ),
             ));

             $this->inputFilter = $inputFilter;
         }

         return $this->inputFilter;
     }
 
 }