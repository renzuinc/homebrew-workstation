class Everything < Formula
  desc "Install all dependencies for all workstation profiles."
  homepage "http://Renzu.co/"
  # url "http://www.libimobiledevice.org/downloads/libimobiledevice-1.2.0.tar.bz2"
  # sha256 "786b0de0875053bf61b5531a86ae8119e320edab724fc62fe2150cc931f11037"

  # depends_on "pkg-config" => :build

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

  def install
    # TODO: Validate workstation here?
    # TODO: * /usr/local/bin appears before /usr/bin in path.
    # TODO: * RVM is set to load from relevant rc files.
    # TODO: * Various tools tools are accessible from path:
    # TODO:     * aws
    # TODO:     * eb
    # TODO:     * gpg
    # TODO: * Permissions are sane on /usr/local/bin, /usr/local/share, etc.
  end
end
