# Ghost + S3

Ghost with S3 storage adapter integration using colinmeinke/ghost-storage-adapter-s3.

```
docker pull pinodex/ghost-s3:latest
```

## Configuration

You can set Ghost configuration with environment variables. [Docs](https://ghost.org/docs/concepts/config/#running-ghost-with-config-env-variables)

```
server__host=0.0.0.0
server__port=2368
database__client=mysql
database__connection__host=
database__connection__user=
database__connection__password=
database__connection__database=
storage__s3__accessKeyId=
storage__s3__secretAccessKey=
storage__s3__region=
storage__s3__bucket=
storage__s3__pathPrefix=
```

Refer to [colinmeinke/ghost-storage-adapter-s3](https://github.com/colinmeinke/ghost-storage-adapter-s3#configuration) configuration for other config keys.
