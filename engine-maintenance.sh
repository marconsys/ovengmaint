#!/bin/sh

#
# Copyright (c) 2020 Marco Napolitano
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# coded by: Marco Napolitano    email: mannysys-AaaaT-outlook.com put at sign instead of -AaaaT-
#

mkdir -p /engback
mount -t nfs NFS_SERVER:/nfs/export/path /engback    # substitute server:/export/ with the right one
/usr/bin/engine-backup --scope=all --mode=backup --log=/engback/engine-backup_$(/bin/date +%Y%m%d%H%M%S).log  --file=/engback/engine-backup_$(/bin/date +%Y%m%d%H%M%S).tar.bz2
/usr/bin/engine-vacuum -a -v > /engback/engine-vacuum_$(/bin/date +%Y%m%d%H%M%S).log 2>&1
rm -f $(ls -1 /engback/engine-backup* | grep 'bz2$' | head -n -9)
rm -f $(ls -1 /engback/engine-backup* | grep 'log$' | head -n -9)
rm -f $(ls -1 /engback/engine-vacuum* | grep 'log$' | head -n -9)
umount /engback
