#!/bin/sh

amazon-linuz-extras install -y docker
systemctl start docker
systemctl enable docker

