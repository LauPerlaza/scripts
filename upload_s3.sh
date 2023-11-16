#!/bin/bash

# Verifica que se proporcione un argumento para el nombre del bucket
if [ $# -eq 0 ]; then
  echo "Por favor, proporciona el nombre del bucket de S3 como argumento."
  exit 1
fi

# Nombre del bucket de S3
bucket_name="test-backups-laup"

# Ruta al archivo que quieres subir
archivo_local="/tmp/test.txt"

# Subir el archivo al bucket de S3
aws s3 cp $archivo_local s3://$bucket_name/

