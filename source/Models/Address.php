<?php


namespace source\Models;


use source\Core\Model;

class Address extends Model
{
    /** @var array $safe no update or create */
    protected static $safe = ["id", "created_at", "updated_at"];

    /** @var string $entity database table */
    protected static $entity = "Address";

    public function bootstrap(int $zipcode, int $street, int $number, string $complement, string $district, string $city, string $state, int $ibge): ?Address
    {
        $this->zipcode = $zipcode;
        $this->street = $street;
        $this->number = $number;
        $this->complement = $complement;
        $this->district = $district;
        $this->city = $city;
        $this->state = $state;
        $this->ibge = $ibge;
        return $this;
    }

    public function load(int $id, string $columns = "*")
    {
        $load = $this->read("SELECT " . $columns . " FROM " . self::$entity . " WHERE id= :id", "id={$id}");
            if ($this->fail() || !$load->rowCount()) {
                $this->message = "Endereço não encontrado";
                return null;
            }
        return $load->fetchObject(__CLASS__);
    }

    public function find()
    {

    }

    public function all()
    {

    }

    public function save()
    {

    }

    public function destroy()
    {

    }

    public function required()
    {

    }
}