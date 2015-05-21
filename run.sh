#!/bin/bash
/user/sbin/sshd & exec apache2 -D FOREGROUND
