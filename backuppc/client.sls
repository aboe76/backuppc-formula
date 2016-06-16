{% from "backuppc/map.jinja" import backuppc with context %}

backuppc-client:
  pkg.installed:
    - pkgs: {{ backuppc.client.pkgs }}

{# this will ensure that the backuppc server can pick up this machine #}
roles:
  grains.present:
    - value: backupclient

