const http = require('http');
const port = process.env.PORT || 5000;

http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/plain" });
    res.write("Hello, From inside the docker.");
    res.end();
}).listen(port, () => {
    console.log(`App is running on port ${port}`);
});