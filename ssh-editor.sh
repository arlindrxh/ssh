created with love<3 from Arlind Rexha
#-------------------------------------------

These rules allow only "root access" to join/control SSH&SFTP
And they block other users to connect to SSH&SFTP, this is
very helpful for hostings who rent web hostings, games...
Apply them to /etc/ssh/sshd_config/

#-------------------------------------------

Match User root
   AllowTcpForwarding yes
   X11Forwarding no
   AllowAgentForwarding no
   ForceCommand /bin/bash -l -c 'if [ "$SSH_TTY" = "" ]; then exec /usr/lib/openssh/sftp-server; fi; exec /bin/bash -l'

#-------------------------------------------

Match User *
AllowTcpForwarding yes
X11Forwarding no
AllowAgentForwarding no
ForceCommand /bin/false

#--------------------------------------------

Please remove "#---" when you export them to /etc/ssh/sshd_config

#--------------------------------------------

!!!!!!!!!!!!!!!                  WARNING                    !!!!!!!!!!!!!!!!!!!

This article is for educational purposes only, the author is not responsible for their misuse by unauthorized persons.

best regards,
Arlind Rexha
