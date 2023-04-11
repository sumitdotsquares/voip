<?php
/**
 * PhoneNumber list
 */
require 'vendor/autoload.php';
require 'connect.php';

use Plivo\RestClient;
use Plivo\Exceptions\PlivoRestException;
$client = new RestClient(auth_id, auth_token);
echo '<pre>';
try {
    $response = $client->phonenumbers->list(
        'GB'
    );
    
    foreach($response->resources as $item){
        print_r($item->properties);
    }
}
catch (PlivoRestException $ex) {
    print_r($ex);
}