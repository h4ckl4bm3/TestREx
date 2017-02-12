IMPORTANT: 
------------------------------------------------------
This project is protected by a patent from SAP, so I had to remove everything. If you
would like to get the source code. please contact me at stanislav.dashevskyi[at]unitn.it


About:
------------------------------------------------------
TestREx is a testbed for repeatable exploits, which has as main features: 
* packing and running applications with their environments; 
* injecting exploits and monitoring their success; and
* generating security reports. 

We also provide a several example applications (wordpress 3.2, nodegoat and a couple of 
simple apps that demonstrate vulnerabilities for node.js).


Quick installation instructions (tested on Ubuntu 16.04)
------------------------------------------------------
1. Run the 'scripts/install.sh' script (reboot/log out if necessary)

2. Build the base software containers by running:
    sudo python [TestREx root folder]/util/build-base-images.py


References:
------------------------------------------------------
Stanislav Dashevskyi, Daniel Ricardo dos Santos, Fabio Massacci, Antonino Sabetta. "[TESTREX: a Testbed for Repeatable Exploits](https://www.usenix.org/conference/cset14/workshop-program/presentation/dashevskyi)" in 7th Workshop on Cyber Security Experimentation and Test (USENIX CSET'14)
