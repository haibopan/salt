redis-5.0.3:
  file.managed:
    - name: /opt/redis/redis-5.0.3.tar.gz
    - unless: test -f /opt/redis/redis-5.0.3.tar.gz
    - source: salt://files/redis/redis-5.0.3.tar.gz
    - user: root
    - group: root
    - mode: 755
redis-install:
  cmd.run:
    - name: cd /opt/redis && tar xzf redis-5.0.3.tar.gz 
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: redis-5.0.3
