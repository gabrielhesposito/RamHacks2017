var http = require('http');
//var config = require ('config.js');

var options = {
  host: 'api.coindesk.com',
  path: '/v1/bpi/currentprice.json'
};

callback = function(response) {
  var str = '';

  //another chunk of data has been recieved, so append it to `str`
  response.on('data', function (chunk) {
    str += chunk;
  });

  //the whole response has been recieved, so we just print it out here
  response.on('end', function () {
    console.log(str);
  });
}

http.request(options, callback).end();
