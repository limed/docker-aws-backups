#### AWS Backup container ####
This is a container that will sync a folder to s3

#### Building images ####
```bash
docker build -t limed/aws-backup .
```

#### Running container ####
You must provide the enviroment variable AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY

```bash
docker run -d --name aws-backup --restart always -v /path/to/your/backups:/backups\
        -e AWS_ACCESS_KEY_ID="blah"\
        -e AWS_SECRET_ACCESS_KEY="bleargh"\
        -e BACKUP_BUCKET="mybucketnamehere" limed/aws-backup
```
