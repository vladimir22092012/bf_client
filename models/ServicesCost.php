<?php

class ServicesCost extends Core
{
    public function add($services_cost)
    {
        $query = $this->db->placehold("
        INSERT INTO s_services_cost 
        SET ?%
        ", $services_cost);

        $this->db->query($query);

        return $this->db->insert_id();
    }

    public function get($id)
    {
        $query = $this->db->placehold("
        SELECT * 
        FROM s_services_cost
        where id = ?
        ", $id);

        $this->db->query($query);
        return $this->db->result();
    }

    public function gets($filter = array())
    {
        $region_filter = '';

        if (isset($filter['region']))
            $region_filter = $this->db->placehold("AND region = ?", $this->db->escape(trim($filter['region'])));
        

        $query = $this->db->placehold("
        SELECT * 
        FROM s_services_cost
        where 1
        $region_filter
        ORDER BY id
        ");

        $this->db->query($query);
        return $this->db->results();
    }

    public function update($id, $services_cost)
    {
        $query = $this->db->placehold("
        UPDATE s_services_cost 
        SET ?%
        where id = ?
        ", (array)$services_cost, (int)$id);

        $this->db->query($query);
    }

    public function delete($id)
    {
        $query = $this->db->placehold("
        DELETE FROM s_services_cost
        where id = ?
        ", $id);

        $this->db->query($query);
    }
}