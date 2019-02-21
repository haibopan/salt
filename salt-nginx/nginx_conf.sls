nginx-conf:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://files/nginx/nginx.conf
    - user: root
    - group: root
    - mode: 644

apache-service:
  service.running:
    - name: nginx
    - enalbe: True
    - reload: True
    - watch:
      - file: /etc/nginx/nginx.conf
