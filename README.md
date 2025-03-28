This code sets up a simple web server that listens on port 8080 and sends a basic HTML page to the client. When the user clicks the button, they will be redirected to another device (Device 2) at a specified IP address (<IP-Device-2>). The server then closes the connection after sending the response.
1. Set Up Ada Development Environment:
First, make sure you have Ada installed on your system. You can use GNAT, which is an open-source Ada compiler.

sudo apt-get install gnat
Using Ada to Create a Simple Web Server:
We need to use a library like AWS (Ada Web Server) to build a web server. This library provides interfaces for developing web applications using Ada.

 Simple Code to Create a Web Page Using Ada:
Here is a simple example where we use Ada to build a web server that serves a web page. This example is similar to the one previously mentioned, but written in Ada.

File: main.adb
Run the Server:
To run this code, you can use the GNAT compiler to compile and execute it:


gnatmake main.adb
./main
The Second Page on Another Device:
On Device 2, you can use the same method to create a simple web server that serves the second page. You would need to modify the text and the links in the code as appropriate.

-- Same code as above, but modify the text and links
Connecting Between Devices:
Ensure that Device 1 and Device 2 can communicate over the network (using a static IP address or a local address).

When the user clicks the button on the first page, they will be redirected to Device 2.
