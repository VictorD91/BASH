#!/bin/bash

function control_c() {
        echo "Proceso detenido"
        exit 1
}

trap control_c SIGINT

for i in {1..255}; do
        timeout 1 bash -c "ping -c 1 10.0.2.$i" >/dev/null
        if [ $? -eq 0 ]; then
            echo "El host 10.0.2.$i está activo"
        fi
done
