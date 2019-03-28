superset-init --username admin --firstname admin --lastname admin --password admin --email admin@admin || true

bash kinit.sh &

gunicorn --timeout ${GUNICORN_TIMEOUT:-120} --workers ${GUNICORN_WORKERS:-10} superset:app
