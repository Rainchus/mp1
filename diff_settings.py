#!/usr/bin/env python3

def apply(config, args):
    config['baseimg'] = 'baserom.us.z64'
    config['myimg'] = 'build/marioparty.z64'
    config['mapfile'] = 'build/marioparty.map'
    config['source_directories'] = ['.']
    config['makeflags'] = ['COMPARE=0']