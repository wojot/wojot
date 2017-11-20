<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Messages extends CI_Migration {

    public function up()
    {
        $this->dbforge->add_field(array(
            'id_message' => array(
                'type' => 'INT',
                'constraint' => 5,
                'unsigned' => TRUE,
                'auto_increment' => TRUE
            ),
            'name' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
            'email' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
            ),
            'telephone' => array(
                'type' => 'VARCHAR',
                'constraint' => '20',
                'null' => TRUE,
            ),
            'message' => array(
                'type' => 'TEXT',
            ),
        ));
        $this->dbforge->add_key('id_message', TRUE);
        $this->dbforge->create_table('messages');
    }

    public function down()
    {
        $this->dbforge->drop_table('messages');
    }
}