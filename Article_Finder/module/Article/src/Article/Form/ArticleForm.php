<?php

namespace Article\Form;

 use Zend\Form\Form;

 class ArticleForm extends Form 
 {
     public function __construct($name = null)
     {
         // we want to ignore the name passed
         parent::__construct('article');

         $this->add(array(
             'name' => 'id_artykulu',
             'type' => 'Hidden',
         ));
         /* $this->add(array(
             'name' => 'email_autora',
             'type' => 'Hidden',
         ));
           */
          
        /* $this->add(array(
     'type' => 'Zend\Form\Element\DateTime',
     'name' => 'data_dodania',
     'options' => array(
             'label' => 'Data dodania',
             'format' => 'Y-m-d\TH:iP'
     ),
     'attributes' => array(
             'min' => '2010-01-01T00:00:00Z',
             'max' => '2020-01-01T00:00:00Z',
             'step' => '1', // minutes; default step interval is 1 min
     )));*/
          $this->add(array(
             'name' => 'data_dodania',
             'type' => 'Hidden',
         
         ));
         $this->add(array(
             'name' => 'tytul',
             'type' => 'Text',
             'options' => array(
                 'label' => 'Tytuł',
             ),
               'attributes'=>array(
			     'placeholder'=>'Tytuł artykułu ...',
                    'id'=>'tekst_ckeditor2'
		     ),
         ));
         $this->add(array(
             'name' => 'tekst',
             'type' => 'Zend\Form\Element\Textarea',
             'options' => array(
                 'label' => 'Treść',
             ),
             'attributes'=>array(
			     'id'=>'tekst_ckeditor'
		     ),
           
         ));
         /*
         $this->add(array(
  'type' => 'CKEditorModule\Form\Element\CKEditor',
  'name' => 'tekst',
  'options' => array(
    'label' => 'Treść artykułu',
    'ckeditor' => array(
        // add anny config you would normaly add via CKEDITOR.editorConfig
        'language' => 'nl',
        'uiColor' => '#AADC6E',
    )
  ),
));*/
        
         $this->add(array(
             'name' => 'id_kategorii',
             //'type' => 'Text',
             'type' => 'Zend\Form\Element\Select',
             'options' => array(
                 'label' => 'Kategoria',
                 'value_options' => array(
             '1' => 'Informatyka',
             '2' => 'Fizyka',
             '3' => 'Matematyka',
             '4' => 'Biologia',
             '5' => 'Elektronika',
             '6' => 'Inne',
             ),),
         ));
             
         $this->add(array(
             'name' => 'submit',
             'type' => 'Submit',
             'attributes' => array(
                 'value' => 'Go',
                 'id' => 'submitbutton',
                 'class'=>'btn btn-info'
             ),
         ));
     }
    /* public function initFormOptions()
{
    $this->get('id_kategorii')->setAttribute('options', 'test');//$this->getNumberOptions());
}

protected function getNumberOptions()
{
    // or however you want to load the data in
    $sql = 'SELECT nazwa_kategorii FROM kategoria';
    $result = $db->fetchAll($sql, 1);
    return $result->getList();
}

*/
 }