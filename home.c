#include "home.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>

//Css não tá funcionando, descobrir pq
void handle_home(int client_socket) {
    const char *body =
        "<html>"
        "<head>"
        "<style>"
        "body { font-family: Arial, sans-serif; margin: 0; padding: 20px; background-color: #f0f0f0; }"
        "h1 { color: #333; }"
        "p { color: #666; }"
        "</style>"
        "</head>"
        "<body>"
        "<h1>Home Page</h1>"
        "<p>Welcome to the home page!</p>"
        "</body>"
        "</html>";

    char response[2048];
    int response_length = snprintf(response, sizeof(response),
                                   "HTTP/1.1 200 OK\r\n"
                                   "Content-Type: text/html\r\n"
                                   "Content-Length: %ld\r\n"
                                   "\r\n"
                                   "%s",
                                   strlen(body), body);

    write(client_socket, response, response_length);
}
