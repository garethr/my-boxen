# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.7.0.beta1"

# Support for default hiera data in modules

github "module-data", "0.0.4", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.1.0"
github "foreman",     "1.2.0"
github "gcc",         "2.1.1"
github "git",         "2.6.0"
github "go",          "2.1.0"
github "homebrew",    "1.9.4"
github "hub",         "1.3.0"
github "inifile",     "1.1.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.8.2"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.1.2"
github "stdlib",      "4.3.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "alfred",      "1.3.1"
github "vagrant",     "3.1.1"
github "firefox",     "1.2.2"
github "virtualbox",  "1.0.11"
github "arq",         "1.0.0"
github "caffeine",    "1.0.0"
github "chrome",      "1.1.2"
github "clojure",     "1.3.0"
github "cyberduck",   "1.0.1"
github "dropbox",     "1.4.0"
github "erlang",      "1.0.2"
github "googledrive", "1.0.2"
github "google_app_engine", "1.0.0"
github "handbrake",   "1.0.1"
github "graphviz",    "1.0.0"
github "heroku",      "2.1.1"
github "imagemagick", "1.3.0"
github "intellij",    "1.5.1"
github "iterm2",      "1.2.0"
github "java",        "1.7.0"
github "macvim",      "1.0.0"
github "pkgconfig",   "1.0.0"
github "swig",        "1.0.0"
github "pcre",        "1.0.0"
github "osx",         "2.7.1"
github "property_list_key", "0.1.0"
github "packer",      "1.3.0"
github "phantomjs",   "2.3.0"
github "propane",     "1.0.0"
github "spotify",     "1.0.2"
github "tmux",        "1.0.2"
github "vmware_fusion", "1.1.0"
github "wget",        "1.0.1"
github "zsh",         "1.0.0"
github "python",      "1.3.0"
github "nmap",        "1.0.3"
github "skype",       "1.0.9"
github "sonos",       "1.0.4", :repo => "garethr/puppet-sonos"
