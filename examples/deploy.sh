#/bin/env bash
touch .values.yaml
helm upgrade --install --namespace humio \
    -f examples/humio-$1-nvme-$2.yaml \
    -f examples/kafka-$1-$2.yaml \
    -f examples/common.yaml \
    -f .values.yaml \
    $2 chart/