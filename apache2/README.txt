sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout apache-selfsigned.key -out apache-selfsigned.crt -subj "/C=UA/ST=Kyiv/L=Kyiv/O=Home/CN=ubuntu-focal"

sudo openssl req -addext basicConstraints=critical,CA:TRUE,pathlen:1 -x509 -nodes -days 365 -newkey rsa:2048 -keyout apache-selfsigned.key -out apache-selfsigned.crt -subj "/C=UA/ST=Kyiv/L=Kyiv/O=Home/CN=ubuntu-focal"

https://ubuntu-focal

openssl
    req
    -addext
        basicConstraints=critical,CA:TRUE,pathlen:1
    -x509
    -nodes
    -days 365
    -newkey rsa:2048
    -keyout apache-selfsigned.key
    -out apache-selfsigned.crt
    -subj "/C=UA/ST=Kyiv/L=Kyiv/O=Home/CN=ubuntu-focal"

=======================================================================================================================
private key
    Key Algorithm = RSA, DSA, ECDSA
    Key Size = 2048, 512, 256 bit
    Passphrase = if present then key will be encrypted
    format = PEM, DER, CER,  PFX, PKCS#7 (.P7B, .P7C), PKCS#10, PKCS#12 (.P12)
public key
certificate (crt) ssl
    Name of owns
    Name of signer
    period of time
    public key
    signed by a certificate authority
hash of public key, private key, crt = same for all
=======================================================================================================================

OpenSSL
cryptographic algorithms - ?
TLS 1.1
TLS 1.2
x509 - standard defining the format of public key certificates
public key infrastructure (PKI) - ?
self signed certificate
certificate authority (CA)
certificate signing request (CSR)
    format = PEM
    public key
    information about you
        Common Name (e.g., server FQDN)

private key file contains
    private key
    public key
