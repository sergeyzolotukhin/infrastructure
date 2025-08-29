#### Pluggable Authentication Modules (PAM)

https://www.baeldung.com/linux/password-complexity
https://medium.com/@sandaruwijayasena/how-to-append-new-password-policy-for-existing-users-in-linux-cfd117942bba
https://www.linuxfordevices.com/tutorials/linux/linux-password-policies

https://www.linkedin.com/pulse/how-disable-password-complexity-red-hat-linux-caiting-ye/

/etc/pam.conf
/etc/login.defs

/etc/pam.d
/etc/pam.d/common-password
/etc/pam.d/system-auth
/etc/security/pwquality.conf

pam_cracklib 
pam_unix 
pam_tally2 
pam_pwhistory
pam_pwquality

> sudo chage