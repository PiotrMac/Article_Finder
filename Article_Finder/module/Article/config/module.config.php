<?php

 return array(
     'controllers' => array(
         'invokables' => array(
             'Article\Controller\Article' => 'Article\Controller\ArticleController',
         ),
     ),
     
     'router' => array(
         'routes' => array(
             'article' => array(
                 'type'    => 'segment',
                 'options' => array(
                     'route'    => '/article[/:action][/:id_artykulu]',
                     'constraints' => array(
                         'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                         'id_artykulu'     => '[0-9]+',
                     ),
                     'defaults' => array(
                         'controller' => 'Article\Controller\Article',
                         'action'     => 'index',
                     ),
                 ),
             ),
         ),
     ),
     
     'view_manager' => array(
         'template_path_stack' => array(
             'article' => __DIR__ . '/../view',
         ),
     ),
 );