import http.server
import socketserver

# Set the port you want the server to run on
PORT = 4891

# Define the handler to use (SimpleHTTPRequestHandler serves files from the current directory)
handler = http.server.SimpleHTTPRequestHandler

# Create the server
httpd = socketserver.TCPServer(("", PORT), handler)

# Print a message indicating the server is running
print(f"Serving on port {PORT}")

# Start the server
httpd.serve_forever()
