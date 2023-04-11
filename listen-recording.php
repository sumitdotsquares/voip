<?php

/**
 * Example for Answer call
 */

require 'vendor/autoload.php';
require 'connect.php';

use Plivo\XML\Response;

$response = new Response();

$params = array(
    'action' => "https://vmcom.24livehost.com/voip/listen-recording-list.php",
    'method' => "POST",
    'numDigits' => 99,
    'digitTimeout' => 4,
    'timeout' => 5
);

$get_digits = $response->addGetDigits($params);
$input_received_speak = "Please enter your your 4 digit code.";
$get_digits->addSpeak($input_received_speak);

// $redirect_url = "https://vmcom.24livehost.com/voip/listen-recording-list.php";
// $response->addRedirect($redirect_url);

Header('Content-type: text/xml');
echo ($response->toXML());
