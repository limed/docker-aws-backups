FROM limed/alpine-base
MAINTAINER limed@sudoers.org

COPY files/s3-backup /app/s3-backup

ENV BACKUP_PATH /backups/
ENV BACKUP_BUCKET backup-bucket

RUN pip install -U awscli\
    && ln -s /app/s3-backup /etc/periodic/daily/s3-backup\
    && mkdir -p /backups\
    && rm -rf /var/cache/apk/*

VOLUME /backups

