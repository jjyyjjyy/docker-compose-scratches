#!/usr/bin/env bash
keytool -import -file ../es/certs/ca/ca.crt -keystore graylog.jks -alias "graylog"