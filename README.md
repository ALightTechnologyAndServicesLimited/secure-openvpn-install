**Forked from [openvpn-install](https://github.com/Nyr/openvpn-install).**
Many thanks to the owner of the above mentioned Github repository.

## openvpn-install
OpenVPN installer for Ubuntu, Debian, AlmaLinux, Rocky Linux, CentOS and Fedora.

## Important differences and suggestions:

### HaveGed ###
1) Install and use HaveGed on Ubuntu machines for entropy.

```sudo ./haveged-install.sh```

### dhpem ###
2) Generate new dhpem key. 3 scripts are available:

a) dh2048.sh

b) dh4096.sh

c) dh8192.sh

```sudo ./dh8192.sh```

```sudo ./dh4096.sh```

```sudo ./dh2048.sh```

Generates /var/dh.pem


### OpenVPN ###

3) Install OpenVPN

This is completely customized for my own purpose, you need to customize for your own purpose

lines 248 - 249: strength of dhpem, number of days for certificates

line 268: location of dhpem

lines 271 - 301: server options, protocol hardcoded to tcp, port hardcoded to 1194

lines 312 - 331: server options, DNS servers

lines 411 - 435: client options


### Alert ###

All weak ciphers are disabled. Default configuration of OpenVPN 3600 seconds key re-negotiation, 7200 seconds validity.

Some state-sponsored hacking spies have ability crack keys in under 240 seconds.
Script's reneg-sec of 10 seconds means, re-negotiate key every 10 seconds, key valid for tran-window i.e maximum 15 seconds.

If targeted by state-sponsored-hacker-spies tran-window of above 45 seconds is a security risk.

The state-sponsored-hacker-spies have invisible spying drones capable of cameras, speakers and even mind-reading.

Remember, civilians thrive when identities are proper.

spies/hackers/mafia create chaos, identity distortion for cover-ups

## Disclaimer ##
NOT associated to state-sponsored-hacker-spies

NOT associated to bh*ttru, e*rra, y*rra, z*nnabath*ni, th*ta surnamed people

NOT associated to est*r, utt*m
