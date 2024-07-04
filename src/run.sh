#!/bin/bash

REMOTE_HOST="192.168.1.10"
REMOTE_USER="rhoadesb"
REMOTE_DIR="/usr/local/bin"

scp -o StrictHostKeyChecking=no cat/s21_cat grep/s21_grep $REMOTE_USER@$REMOTE_HOST:/tmp/
ssh -o StrictHostKeyChecking=no $REMOTE_USER@$REMOTE_HOST "mv /tmp/s21_cat $REMOTE_DIR; mv /tmp/s21_grep $REMOTE_DIR"

echo "Успешно!"
