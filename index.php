<?php

require __DIR__ . "/vendor/autoload.php";

$viacep = new FlyingLuscas\ViaCEP\ZipCode();

$address = $viacep->findByCep('33933560')->toArray();
$address['number'] = 123;
var_dump($address);
