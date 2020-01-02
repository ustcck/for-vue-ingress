#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash kubectl-delete.sh

logSummary(){
    echo ""
    echo "#####################################################"
    echo "Please find the below useful endpoints,"
    echo "Gateway - http://gateway.default."
    echo "#####################################################"
}

kubectl delete -f registry/
kubectl delete -f gateway/
kubectl delete -f blog/
kubectl delete -f store/

logSummary
