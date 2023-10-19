### Task 1
Please design a script that writes the numbers from 1 - 10 in random order.
Each number should appear only once. You can use bash only.
Please provide tests for the script, along with documentation which should include
the following:
- Build instructions
- Usage
- Description
- Known limitations / bugs
# Task 1 Answer:
### Description
This repo is result of my test task.

### Build instructions
This executable script does not need to be compiled, ```bash``` and ```shuf``` must be installed on your system, that's it!

### Usage
1. Clon this repo: ``` git clone git@github.com:dysondi/test_task.git ```  
2. cd into folder ```cd test_task```  
3. Grant executable permission to sh files: ```chmod +x *.sh```  
4. Execute numbers.sh  ```./numbers.sh ``` for see the output  
5. Execute test.sh  ```./test.sh ``` for test numbers.sh script  


### Known limitations / bugs
Also in test.sh you can edit line 12 (uncomment it and comment line 13) and set another numbers to see how output of script changes, wrong checks will be in red color.


# Task 2
Imagine a server with the following specs:  
- 4 times Intel(R) Xeon(R) CPU E7-4830 v4 @ 2.00GHz  
- 64GB of ram  
- 2 tb HDD disk space  
- 2 x 10Gbit/s nics  
The server is used for SSL offloading and proxies around 25000 requests per
second.  
Please let us know which metrics are interesting to monitor in that specific case  
and how would you do that? What are the challenges of monitoring this?  

# Task 2 Answer:

**Metrics are interesting to monitor in that specific case:**

- CPU usage: Monitor the utilization of each CPU core to ensure they are not overloaded.  
- Memory usage: Track the usage of the 64GB RAM to ensure there is enough memory available for the server's processes.  
- Disk usage: Monitor the disk space to ensure there is enough storage available for logs.  
- Network usage: Track the bandwidth usage of the 2 x 10Gbit/s NICs to ensure there is enough network capacity for the incoming and outgoing traffic.  
- SSL offloading performance: Monitor the SSL handshake time, SSL session cache hit rate, and SSL errors.  
- Proxy performance: Track the response time, error rate.  

All of this metrics can be monitored by operating system tools like: top, htop, iostat, and ifstat can provide real-time information on CPU, memory, disk, and network usage.  

**But I prefer to setup:** 
- Grafana: to provides a wide range of visualization options, such as dashboards, graphs, tables, and heatmaps.  
- Prometheus: It is a monitoring system and database that collects and stores metrics from various sources. in our case it will be node exporter.  
- Node Exporter: It is an exporter for hardware-related metrics, which can be used with Prometheus.  
- Loki: loginning solutions for transfer node logs to Grafana with possibility to create alerts that via Alertmanager  
- Alertmanager: is responsible for grouping, and routing alerts to the receiver (e.g., email, Slack, etc.).  
