require 'pathname'
require 'fileutils'

# Path to copy from
cert = Pathname.pwd.join("AddTrustExternalCARoot-2048.pem")

# Path to copy to
ruby_gems_path = Pathname.new `gem which rubygems`
ssl_certs_path = ruby_gems_path.dirname.join("rubygems").join("ssl_certs")

# Do the copy
puts "Copying from: #{cert}"
puts "Copying to: #{ssl_certs_path}"
FileUtils.cp cert, ssl_certs_path
