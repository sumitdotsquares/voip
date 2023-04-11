<?php
/**
 * Example for PhoneNumber create
 */
require 'vendor/autoload.php';
require 'connect.php';
use Plivo\RestClient;
use Plivo\Exceptions\PlivoRestException;
$client = new RestClient(auth_id, auth_token);

try {
    $response = $client->phonenumbers->buy(
        '447362055346'
    );
    print_r($response);
}
catch (PlivoRestException $ex) {
    print_r($ex);
}