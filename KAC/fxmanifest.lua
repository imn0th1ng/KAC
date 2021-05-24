fx_version 'adamant' --bodacious
game 'gta5'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
	"config/server_config.lua",
    "server/*.lua",
}

client_scripts {
	"config/client_config.lua",
    "client/*.lua"
}