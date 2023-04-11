<?php
/**
 * Example for PhoneNumber create
 */
require 'vendor/autoload.php';
require 'connect.php';

use Plivo\XML\Response;

$response = new Response();

$first_speak_body = "Please leave a message. Press the star key or hang up when you're done.";

$response->addSpeak($first_speak_body);

$params = array(
    'action' => "https://vmcom.24livehost.com/voip/get_recording.php",
    'maxLength' => "30",
    'finishOnKey' => "*"
);

$response->addRecord($params);

$second_speak_body = "Recording not received.";
$response->addSpeak($second_speak_body);

Header('Content-type: text/xml');
echo ($response->toXML());
