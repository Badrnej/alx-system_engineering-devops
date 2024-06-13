# Postmortem: Web Stack Outage

## Issue Summary

**Duration:** June 10, 2024, 14:00 - 16:30 UTC

**Impact:** 
- The web application serving our Airbnb clone project experienced a complete outage.
- Users were unable to access the website, receiving a 502 Bad Gateway error.
- Approximately 95% of users were affected.

**Root Cause:** 
A misconfigured Nginx server block caused a failure in the reverse proxy setup, preventing the application server from properly communicating with the web server.

## Timeline

- **14:00 UTC:** Issue detected by monitoring alerts indicating a spike in 502 Bad Gateway errors.
- **14:05 UTC:** On-call engineer begins investigation by checking Nginx logs and server status.
- **14:15 UTC:** Initial assumption was a high server load, leading to an investigation of server performance metrics.
- **14:30 UTC:** Misleading path: server load was normal, indicating the issue was elsewhere.
- **14:45 UTC:** Escalated to the DevOps team for further investigation.
- **15:00 UTC:** DevOps team identified a recent configuration change in Nginx that likely caused the issue.
- **15:15 UTC:** Reverted the Nginx configuration change and restarted the server.
- **15:30 UTC:** Issue persisted, indicating the need for deeper investigation.
- **15:45 UTC:** Discovered a typo in the server block configuration.
- **16:00 UTC:** Corrected the configuration typo and restarted Nginx.
- **16:15 UTC:** Verified that the web application was accessible again.
- **16:30 UTC:** Monitoring confirmed that the issue was fully resolved.

## Root Cause and Resolution

**Root Cause:** 
The outage was caused by a misconfiguration in the Nginx server block. A recent update to the Nginx configuration file included a typo in the proxy_pass directive, which resulted in Nginx being unable to correctly forward requests to the application server.

**Resolution:** 
The issue was resolved by identifying and correcting the typo in the Nginx configuration file. Specifically, the proxy_pass directive had an incorrect URL, which was fixed to correctly point to the application server. After correcting the configuration, Nginx was restarted, restoring normal operation of the web application.

## Corrective and Preventative Measures

**Improvements:**
- Implement more thorough testing and validation of configuration changes before deployment.
- Enhance monitoring to include configuration validation checks.
- Improve logging and alerting to quickly identify and pinpoint configuration errors.

**Tasks:**
1. **Patch Nginx Server:**
   - Ensure all configurations are validated with automated scripts.
2. **Add Monitoring on Server Memory:**
   - Implement monitoring tools to track and alert on memory usage.
3. **Enhance Configuration Deployment Process:**
   - Develop a staging environment to test all configuration changes before they are applied to production.
4. **Update Documentation:**
   - Document the proper configuration setup and common pitfalls to avoid.
5. **Training:**
   - Provide additional training for the team on Nginx configuration and troubleshooting.
6. **Backup Configuration Files:**
   - Regularly backup Nginx configuration files to facilitate quick rollback if needed.

By addressing these corrective and preventative measures, we aim to improve the reliability of our web infrastructure and reduce the likelihood of similar outages in the future.

