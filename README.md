# SSMT
SSMT (Simple System Managment Tool) is a resorces monitoring tool using telegraf, influxdb and snmp

## Setting Up

### SNMP
First of all you need to install snmpd and snmp mibs in your machine.
```
sudo apt update
sudo apt isntall snmpd snmp-mibs-downloader
```

#### Docker
Next you need to edit the snmpd configuration file located into `/etc/snmp/snmpd.conf` adding these lines:
```
agentaddress  172.17.0.1:161
rocommunity community_name 0.0.0.0/0
```

Finally restart snmpd service with `sudo systemctl restart snmpd`

### General configuration
Go to .env file in the project directory and change the `SNMP_COMMUNITY` setting the `community_name` added to snmpd config file before.
If you want you can change the remainig variables as you want making particular attention to `INFLUX_PASS` that it's length should be at least 8 characters.

## Run
You're ready to go, in the project directory type `docker-compose up -d`.
Go to `localhost:8086`, login with `INFLUX_USER` and `INFLUX_PASS` configured before.
The last thing you need to do is add the dashboard so go to **Boards**, **Create Dashboard** and **Import Dashboard** put the `snmp_monitor.json` file and youre ready to go.

Enjoy monitoring.
