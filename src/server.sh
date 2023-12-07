#!/bin/bash

spawn-fcgi -p 8080 mini_server
nginx -g 'daemon off;'
