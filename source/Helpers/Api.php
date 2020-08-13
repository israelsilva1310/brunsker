<?php


namespace source\Helpers;


class Api
{
    public function consultaCep($cep)
    {
        $url = "viacep.com.br/ws/01001000/json/";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_exec($ch);
        curl_close($ch);
    }
}