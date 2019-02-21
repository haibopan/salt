include:
  - nginx_rpm_install
  - nginx_conf 
/etc/nginx/conf.d/web1.conf:
  file.managed:
    - source: salt://files/nginx/web1.conf
    - user: root
    - group: root
    - mode: 644
  service.running:
    - name: nginx
    - enable: True
    - reload: True
    - watch:
      - file: /etc/nginx/conf.d/web1.conf
