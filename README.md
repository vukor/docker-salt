docker-salt
===========

This is docker project for run Salt Master as container app.

How it's work
===========

1. Download project:

    `` git clone https://vukor@github.com/vukor/docker-salt.git``

2. Install docker and docker-compose on your system

3. Create and start container:

    `` cd docker-salt/ ``

    `` docker-compose up -d ``

4. Put your base states to states/ and restart container

5. For stop, start, restart containers run:

    `` docker-compose stop [container]``

    `` docker-compose start [container]``

    `` docker-compose restart [container]``

6. For register clients run:

    `` docker exec salt-master salt-key -a CLIENT-HOSTNAME -y``

7. After this you can check clients running:

    `` docker exec salt-master salt '*' test.ping ``

8. Put your receipts to /states and run:
 
    `` docker exec salt-master salt '*' state.highstate ``

9. For full manage run:

    `` docker exec salt-master -ti /bin/bash ``


Share dirs
===========

``states - Salt states files``


Useful links
============
  - http://docs.docker.com/compose/
  - https://github.com/docker/compose/blob/master/docs/index.md

