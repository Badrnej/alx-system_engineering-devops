# puppet apply 1-install_a_package.pp

package { 'python3-flask':
  ensure => '2.1.0',
  provider => 'pip3',
}

