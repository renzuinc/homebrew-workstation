require "formula"

# Homebrew formula to depend on every standard tool we use.
class Everything < Formula
  # desc "Install all dependencies for all workstation profiles."
  # homepage "http://Renzu.co/"
  # # Dummy URL to make Homebrew happy:
  # url "https://raw.githubusercontent.com/renzuinc/homebrew-workstation/master/README.md"
  # # sha256 "786b0de0875053bf61b5531a86ae8119e320edab724fc62fe2150cc931f11037"

  # depends_on "pkg-config" => :build
  # => :optional
  # => :recommended
  # depends_on :x11 => :optional
  # "A Symbol specifies a special conditional dependency, such as X11."

  # conflicts_with "blueduck", :because => "yellowduck also ships a duck binary"

  # Common:
  depends_on "git"
  depends_on "checkstyle"
  depends_on "cloc"

  # Data pipeline, APIs, etc:
  depends_on "maven"

  # Data pipeline:
  depends_on "apache-spark"
  depends_on "scala"
  depends_on "libev"
  depends_on "cassandra"
  depends_on "postgres"

  # Mobile debugging:
  depends_on "libmobiledevice"

  # DevOps
  #   Image management:
  depends_on "packer"

  #   EBS app setup:
  depends_on "jq"
  depends_on "python"

  # `cnc-renbot`:
  #   Common:
  depends_on "redis"
  #   DevOps -- Cert management:
  depends_on "strongswan"
  # TODO: Break this up into various profiles and have `everything` depend on those.

  # TODO: Cask deps?
  # TODO: * dockertoolbox
  # TODO: * intellij-idea-ce
  # TODO: * launchrocket
  # TODO: * charles
  # TODO: * tunnelblick

  # TODO: Python deps?
  # TODO: * Update pip, setuptools
  # TODO: * Install:
  # TODO:     * cassandra-driver (needs libev for best results!)
  # TODO:     * cql
  # TODO:     * awscli
  # TODO:     * awsebcli

  # def install
  #   # TODO: Validate workstation here?
  #   # TODO: * /usr/local/bin appears before /usr/bin in path.
  #   # TODO: * RVM is set to load from relevant rc files.
  #   # TODO: * Various tools tools are accessible from path:
  #   # TODO:     * aws
  #   # TODO:     * eb
  #   # TODO:     * gpg
  #   # TODO: * Permissions are sane on /usr/local/bin, /usr/local/share, etc.
  # end

  # def caveats
  #   <<-EOS.undent
  #     Lorem ipsum dolor sit amet...
  #   EOS
  # end
end
