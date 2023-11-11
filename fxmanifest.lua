fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'bd_usablenarcan'
author 'broad.' -- optional 
description ''
version '0.1' -- optional 

client_scripts { 
    'Code/client.lua',
}

server_scripts { 
    'Code/server.lua'
}

shared_scripts {
    '@ox_lib/init.lua', -- UNCOMMENT THIS IF YOUR USING OX LIBS
    'config.lua'
}

files {
    '*.*',
}

escrow_ignore {
  'config.lua',
  'readme.md',
}

dependencies { 
    "qb-core",
    "qb-smallresources",
}