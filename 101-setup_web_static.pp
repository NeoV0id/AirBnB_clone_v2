# Same task as task 0
package{"nginx":
  ensure       =>  installed
  name         =>  'nginx'
  command      =>  sudo service nginx start
}

exec{"mkdir":
  command  => 'sudo mkdir -p /data/web_static/releases/test /data/web_static/shared'
}

file{"index.html":
  path     =>  '/data/web_static/releases/test'
  owner    =>  ubuntu
  group    =>  ubuntu
  command  =>  'ln -sf /data/web_static/releases/test/ /data/web_static/current'
}
