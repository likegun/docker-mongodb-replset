'use strict';
const fs = require('fs');
const yml = fs.readFileSync('./docker-compose.yml').toString('utf-8');
yml.match(/(\d+)\:\d+/g).map(portMap => portMap.split(':')[0]).filter(port => port !=3000 && port !=27017).forEach(port => console.log(port));
