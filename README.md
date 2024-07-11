A fork of [ryancbutler/ns-letsencrypt](https://github.com/ryancbutler/ns-letsencrypt) for deploying every issued cert to a pair of standalone netscalers (versus one in the original).  
The number of netscalers is hardcoded. Don't be too harsh, I'm not a coder.  
You need to fill both 'mynsconfig1.py' and 'mynsconfig2.py' and test both 'ns-copytons1.py' and 'ns-copytons1.py'.

Other minor changes:
- Updated version of dehydrated
- Changed some parameters in config.sh to match updated dehydrated
- Certificates and files are named by FQDN, not by hostname
- Base directory changed to work not as root
- Echo date and time to make the logs easier to read

2024-06 Added changes from @aderixon's PR https://github.com/ryancbutler/ns-letsencrypt/pull/19:

> Handle new Let's Encrypt R10-R14 rotating CA chain certs from June 2024:
>  - Use nschain/nschainname as base and append SHA1 hex fingerprint to uniquely identify each chain cert
>  - Always check if CA cert exists and create if not
>  - Always link renewed cert in case signing CA has changed (reports 'Conflict' if linked cert is unchanged, can be ignored)

The original readme is below:

> To be used with [Netscaler Certificate Automation](http://techdrabble.com/citrix/18-letsencrypt-san-certificate-with-citrix-netscaler-take-2) process.  Please checkout blog for how-to.
>
> Uses [dehydrated](https://github.com/lukas2511/dehydrated) to create and renew certificates.  Then Python scripts utilizing REST API to update Netscaler.
