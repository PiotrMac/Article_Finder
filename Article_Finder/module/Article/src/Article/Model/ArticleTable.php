<?php

namespace Article\Model;

use Zend\Db\TableGateway\TableGateway;
use Zend\Db\ResultSet\ResultSet;
 use Zend\Db\Sql\Select;
 use Zend\Paginator\Adapter\DbSelect;
 use Zend\Paginator\Paginator;


date_default_timezone_set('Europe/Warsaw');



 class ArticleTable
 {
     protected $tableGateway;
     
     public function __construct(TableGateway $tableGateway)
     {
         $this->tableGateway = $tableGateway;
     }

    /* public function fetchAll()
     {
         $resultSet = $this->tableGateway->select();
         return $resultSet;
     }
*/
     public function fetchAll($paginated=false)
     {
         if ($paginated) {
             // create a new Select object for the table album
             $select = new Select('article');
             // create a new result set based on the Album entity
             $resultSetPrototype = new ResultSet();
             $resultSetPrototype->setArrayObjectPrototype(new Article());
             // create a new pagination adapter object
             $paginatorAdapter = new DbSelect(
                 // our configured select object
                 $select,
                 // the adapter to run it against
                 $this->tableGateway->getAdapter(),
                 // the result set to hydrate
                 $resultSetPrototype
             );
             $paginator = new Paginator($paginatorAdapter);
             return $paginator;
         }
         $resultSet = $this->tableGateway->select();
         return $resultSet;
     }
     public function fetchAll_K1($paginated=false)
     {
       /*   if ($paginated) {
             // create a new Select object for the table album
             $select = new Select('article');
             // create a new result set based on the Album entity
             $resultSetPrototype = new ResultSet();
             $resultSetPrototype->setArrayObjectPrototype(new Article());
             // create a new pagination adapter object
             $paginatorAdapter = new DbSelect(
                 // our configured select object
                 $select,
                 // the adapter to run it against
                 $this->tableGateway->getAdapter(),
                 // the result set to hydrate
                 $resultSetPrototype
             );
             $paginator1 = new Paginator($paginatorAdapter);
             return $paginator1;
         }*/
         $resultSet = $this->tableGateway->select(array('id_kategorii' => '1'));
         return $resultSet;
     }
      public function fetchAll_K2($paginated=false)
     {
       /*    if ($paginated) {
             // create a new Select object for the table album
             $select = new Select('article');
             // create a new result set based on the Album entity
             $resultSetPrototype = new ResultSet();
             $resultSetPrototype->setArrayObjectPrototype(new Article());
             // create a new pagination adapter object
             $paginatorAdapter = new DbSelect(
                 // our configured select object
                 $select,
                 // the adapter to run it against
                 $this->tableGateway->getAdapter(),
                 // the result set to hydrate
                 $resultSetPrototype
             );
             $paginator2 = new Paginator($paginatorAdapter);
             return $paginator2;
         }*/
         $resultSet = $this->tableGateway->select(array('id_kategorii' => '2'));
         return $resultSet;
     }
      public function fetchAll_K3($paginated=false)
     {
       /*    if ($paginated) {
             // create a new Select object for the table album
             $select = new Select('article');
             // create a new result set based on the Album entity
             $resultSetPrototype = new ResultSet();
             $resultSetPrototype->setArrayObjectPrototype(new Article());
             // create a new pagination adapter object
             $paginatorAdapter = new DbSelect(
                 // our configured select object
                 $select,
                 // the adapter to run it against
                 $this->tableGateway->getAdapter(),
                 // the result set to hydrate
                 $resultSetPrototype
             );
             $paginator3 = new Paginator($paginatorAdapter);
             return $paginator3;
         }*/
         $resultSet = $this->tableGateway->select(array('id_kategorii' => '3'));
         return $resultSet;
     }
      public function fetchAll_K4($paginated=false)
     {
          /* if ($paginated) {
             // create a new Select object for the table album
             $select = new Select('article');
             // create a new result set based on the Album entity
             $resultSetPrototype = new ResultSet();
             $resultSetPrototype->setArrayObjectPrototype(new Article());
             // create a new pagination adapter object
             $paginatorAdapter = new DbSelect(
                 // our configured select object
                 $select,
                 // the adapter to run it against
                 $this->tableGateway->getAdapter(),
                 // the result set to hydrate
                 $resultSetPrototype
             );
             $paginator4 = new Paginator($paginatorAdapter);
             return $paginator4;
         }*/
         $resultSet = $this->tableGateway->select(array('id_kategorii' => '4'));
         return $resultSet;
     }
       public function fetchAll_K5($paginated=false)
     {
        /*    if ($paginated) {
             // create a new Select object for the table album
             $select = new Select('article');
             // create a new result set based on the Album entity
             $resultSetPrototype = new ResultSet();
             $resultSetPrototype->setArrayObjectPrototype(new Article());
             // create a new pagination adapter object
             $paginatorAdapter = new DbSelect(
                 // our configured select object
                 $select,
                 // the adapter to run it against
                 $this->tableGateway->getAdapter(),
                 // the result set to hydrate
                 $resultSetPrototype
             );
             $paginator5 = new Paginator($paginatorAdapter);
             return $paginator5;
         }*/
         $resultSet = $this->tableGateway->select(array('id_kategorii' => '5'));
         return $resultSet;
     }
      public function fetchAll_K6($paginated=false)
     {
       /*    if ($paginated) {
             // create a new Select object for the table album
             $select = new Select('article');
             // create a new result set based on the Album entity
             $resultSetPrototype = new ResultSet();
             $resultSetPrototype->setArrayObjectPrototype(new Article());
             // create a new pagination adapter object
             $paginatorAdapter = new DbSelect(
                 // our configured select object
                 $select,
                 // the adapter to run it against
                 $this->tableGateway->getAdapter(),
                 // the result set to hydrate
                 $resultSetPrototype
             );
             $paginator6 = new Paginator($paginatorAdapter);
             return $paginator6;
         }*/
         $resultSet = $this->tableGateway->select(array('id_kategorii' => '6'));
         return $resultSet;
     }
     public function getArticle($id_artykulu)
     {
         $id_artykulu  = (int) $id_artykulu;
         $rowset = $this->tableGateway->select(array('id_artykulu' => $id_artykulu));
         $row = $rowset->current();
         if (!$row) {
             throw new \Exception("Could not find row $id_artykulu");
         }
         return $row;
     }

     public function saveArticle(Article $article)
     {
       

         $data = array(
             //'data_dodania' => $article->data_dodania,
             'data_dodania' => date("Y-m-d H:i:s",mktime()),
             'tytul'  => $article->tytul,
             'tekst' => $article->tekst,
             'id_kategorii'  => $article->id_kategorii,
             'email_autora'  => $article->email_autora, 
         );

         $id_artykulu = (int) $article->id_artykulu;
         if ($id_artykulu == 0) {
             $this->tableGateway->insert($data);
         } else {
             if ($this->getArticle($id_artykulu)) {
                 $this->tableGateway->update($data, array('id_artykulu' => $id_artykulu));
             } else {
                 throw new \Exception('Article id does not exist');
             }
         }
     }

     public function deleteArticle($id_artykulu)
     {
 $this->tableGateway->delete(array('id_artykulu' => (int) $id_artykulu));        
// $this->tableGateway->delete(array('id_artykulu' => (int) $id_artykulu));
     }
 }
