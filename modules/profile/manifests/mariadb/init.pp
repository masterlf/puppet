class profile::mariadb::init {
  class {'mariadb::cluster':
    cluster_servers => $mariadb_cluster_server,
    config_hash	  => {
    'root_password' => 'password',
    'bind_address'  => '0.0.0.0',
    'restart'	  => false,
    }
  }
}
