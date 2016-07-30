#!/bin/bash

if [ ! -d "/config" ]; then
  mkdir /config
  chown abc:abc /config
fi

if [ ! -d "/music" ]; then
  mkdir /music
  chown abc:abc /music
fi

if [ ! -d "/podcasts" ]; then
  mkdir /podcasts
  chown abc:abc /podcasts
fi

if [ ! -d "/playlists" ]; then
  mkdir /playlists
  chown abc:abc /playlists
fi
