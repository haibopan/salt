nginx-14.2:
  file.managed:
    - name: /tmp/nginx-1.14.2-1.el7_4.ngx.x86_64.rpm
    - unless: test -f /tmp/nginx-1.14.2-1.el7_4.ngx.x86_64.rpm
    - source: salt:///files/nginx/nginx-1.14.2-1.el7_4.ngx.x86_64.rpm
    - user: root
    - group: root
    - mode: 755
nginx-install:
  cmd.run:
    - name: rpm -ivh /tmp/nginx-1.14.2-1.el7_4.ngx.x86_64.rpm 
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: nginx-14.2
