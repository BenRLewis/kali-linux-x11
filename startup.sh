#!/bin/bash
exec startlxde &
exec synapse &
tail -f /var/log/*
