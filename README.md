# DHCP failover configuration playbook

# Внимание, используем правильные теги. Запускаем задачу холодного старта с cold_start, обновление конфигов делаем с помощью refresh_config


option ntp-servers ip-address [, ip-address... ];
This option specifies a list of IP addresses indicating NTP (RFC 1035) servers available to the client. Servers should be listed in order of preference.