backuppc
========

Available states
================

.. contents::
    :local:

``backuppc``
----------------

Meta state to install ``backuppc.server`` and ``backuppc.hosts``


``backuppc.server``
-----------------------

Generates and installs the backuppc server.

``backuppc.hosts``
--------------

Includes ``backuppc.server``.

Installs the backuppc hosts file, from which backuppc server will backup the
data. This file is dynamically updated from grains on the clients
``backupserver: backup.example.com``.

``backuppc.client``
---------------------

Installs the necessary packages needed for backuppc to backup this client. And
installs a grain on the minion so it will be added to the hosts file on the
backuppc server.

Configuration
=============

The ``pillar.example`` has example pillar data for both the server and client, though ``backuppc.server`` only uses data from ``backuppc:server`` and ``backuppc.client`` only uses data from ``backuppc:client``.

Requirements
============

To fully configure control the backuppc server and client you need to add the
following formulas:
 - apache-formula => for controlling the apache2 configuration that is provided
   with the backuppc package
 - users-formula => for controlling and installing ssh-keys on the backuppc
   user and client.
