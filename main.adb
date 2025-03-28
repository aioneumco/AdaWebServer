with Ada.Text_IO;
with AWS.Server;
with AWS.Socket;

procedure Main is
   Server : AWS.Server.Server;
   Client : AWS.Server.Client;
   Address : AWS.Socket.Address := AWS.Socket.Create_Address (Port => 8080);
begin
   -- Start the server on port 8080
   AWS.Server.Create (Server, Address);

   loop
      -- Wait for client requests
      AWS.Server.Accept (Server, Client);
      
      -- Send content to the client
      AWS.Server.Send (Client, "HTTP/1.1 200 OK\r\n");
      AWS.Server.Send (Client, "Content-Type: text/html\r\n\r\n");
      AWS.Server.Send (Client, "<html><body><h2>Page One (Device 1)</h2>");
      AWS.Server.Send (Client, "<p>Welcome to Device 1. Click the button to go to Device 2.</p>");
      AWS.Server.Send (Client, "<form action='http://<IP-Device-2>:8081' method='GET'>");
      AWS.Server.Send (Client, "<button type='submit'>Go to Device 2</button></form></body></html>");

      -- Close the connection with the client after sending the response
      AWS.Server.Close_Client (Client);
   end loop;
end Main;
