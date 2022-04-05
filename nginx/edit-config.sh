NOW=$(date '+%Y-%m-%d_%H:%M:%S')
BACKUP_DIR="/root/backup"
NGINX_CONFIG="/etc/nginx/sites-enabled/default"

mkdir -p $BACKUP_DIR


cp $NGINX_CONFIG $BACKUP_DIR
mv "$BACKUP_DIR/default" "$BACKUP_DIR/backup-$NOW"

nano  $NGINX_CONFIG

sudo systemctl restart nginx
