{% from "backuppc/map.jinja" import backuppc with context %}

backuppc-client:
  pkg.installed:
    - pkgs: {{ backuppc.client.pkgs }}

{# this will ensure that a backuppc server can pick up this machine #}
backupserver:
  grains.present:
    - value: {{ backuppc.client.backupserver }}

