# denon-rest-api

## Summary
This application creates a REST API that can be used to send commands to a Denon AV receiver over a network connection. This was tested with bencouture's Denon AVR-E300 and my Denon AVC-X3700H (same as AVR-X3700H), but should be compatible with other
Denon network-attached receivers.

I forked this app from https://github.com/bencouture/denon-rest-api and fixed an error that made the api crash after one command. I also fixed the docker file and added build and run scripts.

## Running in Docker
The included Dockerfile will install the dependencies and run on an Ubuntu image. You must set the IP address of the receiver you want to connect to in the Dockerfile. Port 8000 is exposed by default.

## Running from comamnd line
1) Navigate to the root of this project in the command line.
1) Install Node (http://nodejs.org) and execute `npm install`. 
2) Run `node . [ip address of receiver] [optional port]` to launch the web server. Port 8000 is used by default.

## Executing commands
Send GET requests to http://localhost:[port]/api/[command]

## Examples
``` Javascript
'http://localhost:8000/api/SIDVD'     //Sets Input to DVD   
'http://localhost:8000/api/SITUNER'   //Sets Input to TUNER   
'http://localhost:8000/api/PWON'      //turns PoWer ON   
```

## Notes
- The full list of valid commands is available in the included protocol PDF from Denon.
- You may need to adjust settings on your receiver to allow remote network control of your device.
- This application communicates with the receiver via the factory-provided telnet API.