#!/bin/bash

pulp-manage-db

# re-create the dummy cert with the correct hostname
#pushd /etc/pki/tls/certs/
#rm localhost.crt
#cat << EOF | make testcert
#.
#.
#.
#.
#.
#pulpapi
#.
#EOF
#popd
