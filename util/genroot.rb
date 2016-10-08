require "openssl"

puts "About to generate RSA root key"

certs_dir = "../certs"

root_private_key = "#{certs_dir}/root_private.key"
root_private_cert = "#{certs_dir}/root_private_cert.crt"

puts OpenSSL::PKey::RSA.new(4096)


# `openssl genrsa -out #{root_private_key} 4096`
# `openssl req -x509 -new -nodes -key #{root_private_key} -sha256 -days #{365 * 5} -out #{root_private_cert}`
