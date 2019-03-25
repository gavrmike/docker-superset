superset-init --username admin --firstname admin --lastname admin --password admin --email admin@admin || true

bash kinit.sh &

gunicorn superset:app
