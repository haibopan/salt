redis-conf:
  file.managed:
    - name: /opt/redis/redis-5.0.3/redis.conf
    - source: salt://files/redis/redis.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
      BIND: 
      PORT: 7000
      LOGFILE: /opt/logs/redis.log
      PASSWORD: xxxxxxxxx

redis-service:
  service.running:
    - name: redis
    - enalbe: True
    - reload: True
    - watch:
      - file: /opt/redis/redis-5.0.3/redis.conf
