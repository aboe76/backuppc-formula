{% from "backuppc/map.jinja" import backuppc with context %}

include:
  - backuppc.server

backuppc_hosts:
  file.managed:
    - name: {{ backuppc.server.configdir }}/hosts
    - source: salt://backuppc/files/{{ grains.get('host', 'default') }}/hosts
    - source: salt://backuppc/files/default/hosts
    - template: jinja
    - user: root
    - group: root
    - require:
      - pkg: backuppc
