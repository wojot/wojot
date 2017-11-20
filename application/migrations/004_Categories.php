<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Categories extends CI_Migration {

    public function up()
    {
        $this->dbforge->add_field(array(
            'id_category' => array(
                'type' => 'INT',
                'constraint' => 5,
                'unsigned' => TRUE,
                'auto_increment' => TRUE
            ),
            'name' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            )

        ));
        $this->dbforge->add_key('id_category', TRUE);
        $this->dbforge->create_table('categories');
    }

    public function down()
    {
        $this->dbforge->drop_table('categories');
    }
}