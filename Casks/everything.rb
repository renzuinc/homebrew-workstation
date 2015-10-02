cask :v1 => "everything" do
  version :latest
  sha256 :no_check

  name "Everything"
  license :gpl

  conflicts_with "boot2docker", because: "deprecated, we install Docker Toolbox instead"

  # Common:
  depends_on formula: "git"
  depends_on formula: "checkstyle"
  depends_on formula: "cloc"

  # Data pipeline, APIs, etc:
  depends_on formula: "maven"

  # Data pipeline:
  depends_on formula: "apache-spark"
  depends_on formula: "scala"
  depends_on formula: "libev"
  depends_on formula: "cassandra"
  depends_on formula: "postgres"

  # Mobile debugging:
  depends_on formula: "libimobiledevice"

  # DevOps
  #   Image management:
  depends_on formula: "packer"

  #   EBS app setup:
  depends_on formula: "jq"
  depends_on formula: "python"

  # `cnc-renbot`:
  #   Common:
  depends_on formula: "redis"
  #   DevOps -- Cert management:
  depends_on formula: "strongswan"
  # TODO: Break this up into various profiles and have `everything` depend on those.

  # TODO: Cask deps?
  # https://github.com/thehunmonkgroup/homebrew-bumptop/blob/master/Casks/bumptop.rb
  depends_on cask: "dockertoolbox"
  depends_on cask: "intellij-idea-ce"
  depends_on cask: "launchrocket"
  depends_on cask: "charles"
  depends_on cask: "tunnelblick"
  depends_on cask: "java"
  # https://github.com/caskroom/homebrew-cask/blob/master/doc/CASK_LANGUAGE_REFERENCE.md#depends_on-stanza-details
  # https://github.com/Homebrew/homebrew/issues/15919
  # https://github.com/Homebrew/homebrew/issues/12130
  # https://github.com/caskroom/homebrew-cask/issues/2001

  # http://www.rubicode.com/Software/RCEnvironment/
  # https://github.com/caskroom/homebrew-cask/blob/ed18a59bb905e16f303f34b7de7509a1cb8bbdf5/Casks/gpgtools.rb
  # https://github.com/caskroom/homebrew-cask/blob/d3c21c601fd04dbfe9a5c897c20770ecb9fc45dd/Casks/java.rb
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
