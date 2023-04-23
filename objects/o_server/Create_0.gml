//Server Variables
port = 8000
max_players = 2

server = network_create_server(network_socket_tcp, port, max_players)
total_players = ds_list_create()

//Display error if server is unable to be created
if (server < 0) {
	show_message("Error creating server")
	game_restart()
}