#/bin/env bash
touch .values.yaml
helm upgrade --install --namespace humio \
    -f examples/humio-azure-nvme-$1.yaml \
    -f examples/kafka-azure-$1.yaml \
    -f examples/common.yaml \
    -f .values.yaml \
    $1 chart/