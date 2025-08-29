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

pam_deny
pam_permit
pam_passwd_auth
pam_succeed_if
pam_lastlog

---
https://docs.oracle.com/cd/E19253-01/816-4557/pam-15/index.html
auth     
account  
password
session

> sudo chage