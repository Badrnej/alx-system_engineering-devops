# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Configure Nginx to listen on port 80
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => "
server {
    listen 80;
    listen [::]:80;

    server_name _;

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }

    location / {
        root /var/www/html;
        index index.html;
    }
}
",
}

# Ensure Nginx service is running
service { 'nginx':
  ensure => running,
  enable => true,
}

# Create Hello World index.html file
file { '/var/www/html/index.html':
  ensure  => present,
  content => "Hello World!\n",
}

