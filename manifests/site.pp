require boxen::environment
require homebrew
#require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::boxen_user}"
  ]
}

File {
  group => 'staff',
  owner => $boxen_user
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => File["${boxen::config::bindir}/boxen-git-credential"],
  config   => {
    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential"
  }
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things
  #include dnsmasq
  include git
  include hub

  # fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }

  # node versions
  include nodejs::v0_10

  # default ruby versions
  ruby::version { '1.9.3-p448': }
  ruby::version { '2.1.1': }

  # common, useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar'
    ]:
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }

  class { 'vagrant':
    version => '1.6.3',
  }
  include firefox
  #include virtualbox
  include arq
  include caffeine
  include clojure
  include cyberduck
  include dropbox
  include erlang
  include git
  include googledrive
  include google_app_engine::python
  include handbrake
  include graphviz
  include heroku
  include imagemagick
  include iterm2::stable
  include java
  include macvim
  include onepassword
  include packer
  include phantomjs
  include propane
  include spotify
  include tmux
  include vmware_fusion
  include wget
  include zsh
  include python
  include chrome

  phantomjs::version { '1.9.2': }

  class { 'intellij':
    edition => 'community',
  }

  git::config::global { 'user.email':
    value  => 'gareth@morethanseven.net'
  }

  include osx::finder::show_all_on_desktop
  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library
  include osx::no_network_dsstores

}
