# install flask using puppet

class { 'python':
  pip3 => true,
}
python::pip { 'Flask':
  ensure => latest,
  require => Class['python'],
}
