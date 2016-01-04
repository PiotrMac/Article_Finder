<?php

 namespace Article\Controller;

 use Zend\Mvc\Controller\AbstractActionController;
 use Zend\View\Model\ViewModel;
 use Article\Model\Article;          
 use Article\Form\ArticleForm; 

 class ArticleController extends AbstractActionController
 {
     
     protected $articleTable;
     //protected $categoryTable;
     
    /* public function indexAction()
     {
          return new ViewModel(array(
             'articles' => $this->getArticleTable()->fetchAll(),
             //'kategoria' => $this->getArticleTable()->fetchAll(),
         ));
     }
     */
     public function indexAction()
 {
     // grab the paginator from the AlbumTable
     $paginator = $this->getArticleTable()->fetchAll(true);
     // set the current page to what has been passed in query string, or to 1 if none set
     $paginator->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
     // set the number of items per page to 10
     $paginator->setItemCountPerPage(1);

     return new ViewModel(array(
         'paginator' => $paginator
     ));
 }
     
     public function adminAction()
     {
          return new ViewModel(array(
             'articles' => $this->getArticleTable()->fetchAll(),
             //'kategoria' => $this->getArticleTable()->fetchAll(),
         ));
     }
       
      public function informaticsAction()
     {
         return new ViewModel(array(
         'articles' => $this->getArticleTable()->fetchAll_K1(),
         ));
          
          // grab the paginator from the AlbumTable
    /* $paginator1 = $this->getArticleTable()->fetchAll_K1(true);
     // set the current page to what has been passed in query string, or to 1 if none set
     $paginator1->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
     // set the number of items per page to 10
     $paginator1->setItemCountPerPage(1);

     return new ViewModel(array(
         'paginator' => $paginator1
     )); */  
     } 
     
       public function physicsAction()
     {
         return new ViewModel(array(
         'articles' => $this->getArticleTable()->fetchAll_K2(),
         ));
          // grab the paginator from the AlbumTable
    /* $paginator2 = $this->getArticleTable()->fetchAll_K2(true);
     // set the current page to what has been passed in query string, or to 1 if none set
     $paginator2->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
     // set the number of items per page to 10
     $paginator2->setItemCountPerPage(1);

     return new ViewModel(array(
         'paginator' => $paginator2
     ));  */ 
     }  
     
       public function mathAction()
     {
         return new ViewModel(array(
         'articles' => $this->getArticleTable()->fetchAll_K3(),
         ));
           // grab the paginator from the AlbumTable
   /*  $paginator3 = $this->getArticleTable()->fetchAll_K3(true);
     // set the current page to what has been passed in query string, or to 1 if none set
     $paginator3->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
     // set the number of items per page to 10
     $paginator3->setItemCountPerPage(2);

     return new ViewModel(array(
         'paginator' => $paginator3
     ));   */
     }  
     
       public function biologyAction()
     {
         return new ViewModel(array(
         'articles' => $this->getArticleTable()->fetchAll_K4(),
         ));
     /*$paginator4 = $this->getArticleTable()->fetchAll_K4(true);
     // set the current page to what has been passed in query string, or to 1 if none set
     $paginator4->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
     // set the number of items per page to 10
     $paginator4->setItemCountPerPage(1);

     return new ViewModel(array(
         'paginator' => $paginator4
     )); */  
     }   
     
       public function electronicsAction()
     {
         return new ViewModel(array(
         'articles' => $this->getArticleTable()->fetchAll_K5(),
         ));
     /* $paginator5 = $this->getArticleTable()->fetchAll_K5(true);
     // set the current page to what has been passed in query string, or to 1 if none set
     $paginator5->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
     // set the number of items per page to 10
     $paginator5->setItemCountPerPage(1);

     return new ViewModel(array(
         'paginator' => $paginator5
     )); */  
     }   
     
       public function otherAction()
     {
         return new ViewModel(array(
         'articles' => $this->getArticleTable()->fetchAll_K6(),
         ));
     /* $paginator6 = $this->getArticleTable()->fetchAll_K6(true);
     // set the current page to what has been passed in query string, or to 1 if none set
     $paginator6->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
     // set the number of items per page to 10
     $paginator6->setItemCountPerPage(1);

     return new ViewModel(array(
         'paginator' => $paginator6
     ));  */ 
     }   

      public function addAction()
     {
            
   
         $form = new ArticleForm();
         $form->get('submit')->setValue('Zapisz artykuł ');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $article = new Article();
             $form->setInputFilter($article->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                 $article->exchangeArray($form->getData());
                     if ($this->zfcUserAuthentication()->hasIdentity()) {
    //get the email of the user
    $article->email_autora=$this->zfcUserAuthentication()->getIdentity()->getEmail();
    
} 
                 $this->getArticleTable()->saveArticle($article);

                 // Redirect to list of albums
                 return $this->redirect()->toRoute('article');
             }
         }
         return array('form' => $form);
     }

     public function editAction()
     {
         $id_artykulu = (int) $this->params()->fromRoute('id_artykulu', 0);
         if (!$id_artykulu) {
             return $this->redirect()->toRoute('article', array(
                 'action' => 'add'
             ));
         }

         
         try {
             $article = $this->getArticleTable()->getArticle($id_artykulu);
         }
         catch (\Exception $ex) {
             return $this->redirect()->toRoute('article', array(
                 'action' => 'index'
             ));
         }

         $form  = new ArticleForm();
         $form->bind($article);
         $form->get('submit')->setAttribute('value', 'Edytuj');

         $request = $this->getRequest();
         if ($request->isPost()) {
             $form->setInputFilter($article->getInputFilter());
             $form->setData($request->getPost());

             if ($form->isValid()) {
                  if ($this->zfcUserAuthentication()->hasIdentity()) {
    //get the email of the user
    $article->email_autora=$this->zfcUserAuthentication()->getIdentity()->getEmail();
    
} 
                 $this->getArticleTable()->saveArticle($article);
//$this->form()->getErrorMessages();
                 // Redirect to list of albums
                 return $this->redirect()->toRoute('article');
             }
             else{
                 $this->form()->getErrorMessages();
             }
         }

         return array(
             'id_artykulu' => $id_artykulu,
             'form' => $form,
         );
     }
     

     public function deleteAction()
     {
          $id_artykulu = (int) $this->params()->fromRoute('id_artykulu', 0);
         if (!$id_artykulu) {
             return $this->redirect()->toRoute('article');
         }

         $request = $this->getRequest();
         if ($request->isPost()) {
             $del = $request->getPost('del', 'Nie');

             if ($del == 'Tak') {
                 $id_artykulu = (int) $request->getPost('id_artykulu');
                 $this->getArticleTable()->deleteArticle($id_artykulu);
             }

             // Redirect to list of albums
             return $this->redirect()->toRoute('article');
         }

         return array(
             'id_artykulu'    => $id_artykulu,
             'article' => $this->getArticleTable()->getArticle($id_artykulu)
         );
     }
     
      public function getArticleTable()
     {
         if (!$this->articleTable) {
             $sm = $this->getServiceLocator();
             $this->articleTable = $sm->get('Article\Model\ArticleTable');
         }
         return $this->articleTable;
     }
     
     

 }
