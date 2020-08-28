oVEngMaint
================
A script to backup oVirt engine onto a NFS share.<br/>

## Copyright
Copyright (c) 2020 Marco Napolitano<br/>
The author is Marco Napolitano, email: mannysys-AaaaT-outlook.com put at sign instead of -AaaaT-<br/>
The content of the repository is licensed under Apache License, available at: http://www.apache.org/licenses/LICENSE-2.0

## Disclaimer
THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Description
This repository contains a shell script to backup oVirt engine onto a NFS share.<br/>
After doing backup, keeps the last 9 backups and deletes the older ones.<br/>
It is important to substitute the right server:/export/path/ inside the script.<br/>
Schedule script execution inside root's crontab, for example:<br/>
<br/>
30 0 * * * /root/engine-maintenance.sh >/dev/null 2>&1<br/>
