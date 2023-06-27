# Usage

`source proxy-with.auth.sh`

Proxy can be found at public IP address of MKE cluster on port 8080. Test as follows:

```
PASS=<password>
PROXY_HOST=<public-ip>
curl google.com -x http://admin:$PASS@$PROXY_HOST:8080
```

## Note:

You will need htpasswd which is part of the apache2-utils package on ubuntu

`sudo apt-get install apache2-utils`
