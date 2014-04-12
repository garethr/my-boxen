# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.0.2"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "homebrew",   "1.4.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.2.9"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.3.4"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "alfred",      "1.1.6"
github "vagrant",     "3.0.7"
github "firefox",     "1.1.4"
github "virtualbox",  "1.0.11"
github "arq",         "1.0.0"
github "caffeine",    "1.0.0"
github "chrome",      "1.1.1"
github "clojure",     "1.2.0"
github "cyberduck",   "1.0.1"
github "dropbox",     "1.1.1"
github "erlang",      "1.0.1"
github "git",         "1.2.5"
github "go",	      "1.0.1"
github "googledrive", "1.0.2"
github "google_app_engine", "1.0.0"
github "handbrake",   "1.0.1"
github "graphviz",    "1.0.0"
github "heroku",      "2.0.0"
github "imagemagick", "1.2.1"
github "intellij",    "1.3.0"
github "iterm2",      "1.0.3"
github "java",        "1.1.0"
github "macvim",      "1.0.0"
github "pkgconfig",   "1.0.0"
github "swig",        "1.0.0"
github "onepassword", "1.0.2"
github "pcre",        "1.0.0"
github "osx",         "1.6.0"
github "property_list_key", "0.1.0"
github "packer",      "1.0.3"
github "phantomjs",   "2.0.2"
github "propane",     "1.0.0"
github "spotify",     "1.0.1"
github "tmux",        "1.0.2"
github "vmware_fusion", "1.0.0"
github "wget",        "1.0.0"
github "zsh",         "1.0.0"
github "python",      "1.1.1"
