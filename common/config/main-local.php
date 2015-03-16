<?php
return [
    'components' => [
	    'request' => [
	    // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
	    'cookieValidationKey' => '0raen9rFNd6OzY14i3z9ssJBR6VJcJuL',
	    ],
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=yiiforum',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
        ],
        'mail' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
            'useFileTransport' => true,
        ],
    ],
];
