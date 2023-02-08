#!/bin/bash
# for name in list; do commands; done
# for name in apple orange banana ; do
#    echo $name
# done
for i in {1..5}; do
    curl -s -o /dev/null -w "%{http_code} " https://zdiscovery-qa.io/api/companies/99799136-d096-4e40-9cfe-8772fd2b59f1/users/03e1dd50-2fc6-401a-97b5-1da9c4119c68/roles;
    date;
    sleep 0;
done

