#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>

#include "home.h"
#include "about.h"
#include "contact.h"

#define PORT 5000
#define BUFFER_SIZE 4096

//TODO mover para pages futuramente
void send_404(int client_socket) {
    const char *body = "<html><body><h1>404 Not Found</h1><p>The page you are looking for was not found.</p></body></html>";
    char response[BUFFER_SIZE];
    int response_length = snprintf(response, sizeof(response),
                                   "HTTP/1.1 404 Not Found\r\n"
                                   "Content-Type: text/html\r\n"
                                   "Content-Length: %ld\r\n"
                                   "\r\n"
                                   "%s",
                                   strlen(body), body);

    write(client_socket, response, response_length);
}

void handle_client(int client_socket) {
    char buffer[BUFFER_SIZE];
    int bytes_read;

    bytes_read = read(client_socket, buffer, BUFFER_SIZE - 1);
    if (bytes_read < 0) {
        perror("Failed to read from socket");
        close(client_socket);
        return;
    }

    buffer[bytes_read] = '\0';

    printf("Request:\n%s\n", buffer);

    // Extrai o método e caminho do request http
    char method[16], path[256];
    sscanf(buffer, "%s %s", method, path);

    // Roteamento das páginas
    if (strcmp(path, "/") == 0) {
        handle_home(client_socket);
    } else if (strcmp(path, "/about") == 0) {
        handle_about(client_socket);
    } else if (strcmp(path, "/contact") == 0) {
        handle_contact(client_socket);
    } else {
        send_404(client_socket);
    }

    close(client_socket);
}


//ToDo Adicionar conexão com MySql
//Ver como faz bind dos dados do MySql com os arquivos html

int main() {
    int server_socket, client_socket;
    struct sockaddr_in server_addr, client_addr;
    socklen_t client_addr_len = sizeof(client_addr);

    // Criação do socket
    server_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (server_socket < 0) {
        perror("Failed to create socket");
        exit(EXIT_FAILURE);
    }

    // Configuração do servidor
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(PORT);

    // Bind do socket com a porta
    if (bind(server_socket, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0) {
        perror("Failed to bind socket");
        close(server_socket);
        exit(EXIT_FAILURE);
    }

    // Colocando o socket em listening mode
    if (listen(server_socket, 5) < 0) {
        perror("Failed to listen on socket");
        close(server_socket);
        exit(EXIT_FAILURE);
    }

    printf("Server listening on port %d\n", PORT);

    // Aceita handleClient 
    while (1) {
        client_socket = accept(server_socket, (struct sockaddr *)&client_addr, &client_addr_len);
        if (client_socket < 0) {
            perror("Failed to accept client connection");
            continue;
        }

        handle_client(client_socket);
    }

    // Fecha o socket
    close(server_socket);
    return 0;
}
