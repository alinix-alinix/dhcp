ALL=$(cat aaa)
generate_post_data() {
cat<<EOF
        - name: $NAME
          description: "initial"
          active: true
          guest: false
          subnet: $SUBN
          option_routers: $RT
          pool_range_start: $ST
          pool_range_end: $END
EOF
}


for ONE in $ALL; do
    NAME=$(echo $ONE|awk -F "!" '{print$3}')
    SUBN=$(echo $ONE|awk -F "!" '{print$2 0}')
    ST=$(echo $ONE|awk -F "!" '{print$2 150}')
    END=$(echo $ONE|awk -F "!" '{print$2 200}')
    RT=$(echo $ONE|awk -F "!" '{print$1}')
    generate_post_data >> subnet.yml
done
