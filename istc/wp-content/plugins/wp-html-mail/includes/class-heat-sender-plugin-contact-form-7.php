<?php
/**
*   detect the origin of an email
*
**/
class Haet_Sender_Plugin_contact_form_7 extends Haet_Sender_Plugin {
    public function __construct($mail) {
        if( !array_key_exists('_wpcf7', $_POST) )
            throw new Haet_Different_Plugin_Exception();
    }
    
    /**
    *   get_plugin_default_options()
    *   define plugin specific default options
    **/
    public static function get_plugin_default_options(){
        return array('template'=>true,'sender'=>false);
    }


    
    private function replace_newline_html($message){
        $message = wpautop( $message);
        return $message;
    }

}