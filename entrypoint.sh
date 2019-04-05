export GUNICORN_TIMEOUT=${GUNICORN_TIMEOUT:-120}
export GUNICORN_WORKERS=${GUNICORN_WORKERS:-10}

[ "${INIT_AIRFLOW:-1}" -eq "1" ] && superset-init --username admin --firstname admin --lastname admin --password admin --email admin@admin || true

/usr/bin/supervisord
