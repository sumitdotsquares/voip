<?php

require 'vendor/autoload.php';
require 'connect.php';


$myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
$txt = "John Doe\n";
fwrite($myfile, $txt);
fwrite($myfile, json_encode($_POST));
$txt = "John Doe\n";
fwrite($myfile, $txt);
fwrite($myfile, json_encode($_GET));

use Plivo\XML\Response;

$response = new Response();

$play_body = "https://s3.amazonaws.com/plivocloud/Trumpet.mp3";
$response->addPlay($play_body);

Header('Content-type: text/xml');
echo($response->toXML());