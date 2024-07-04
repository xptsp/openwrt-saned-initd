#  OpenWrt Package saned-initd

**Purpose:** This package adds an init.d script to launch `saned -a` at boot time, while also permitting the use of such commands like `service saned start` and `service saned stop` to work properly.

**Origin:** [saned Scanner Server: Start saned without xinetd](https://openwrt.org/docs/guide-user/services/scanner_server/saned#start_saned_without_xinetd) suggests adding `saned -a` to the `/etc/rc.local` file, which allows the adminstrator to start the SANED server daemon in a non-manual way, but this method lacks any way to stop, start or restart the server on the command-line or in the LuCI control panel. 
