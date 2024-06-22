#include "about.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>

void handle_about(int client_socket) {
    const char *body = "<html><body><h1>About Page</h1><p>This is the about page.</p></body></html>";
    char response[1024];
    int response_length = snprintf(response, sizeof(response),
                                   "HTTP/1.1 200 OK\r\n"
                                   "Content-Type: text/html\r\n"
                                   "Content-Length: %ld\r\n"
                                   "\r\n"
                                   "%s",
                                   strlen(body), body);

    write(client_socket, response, response_length);
}
