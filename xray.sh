#!/bin/sh
if [ ! -f UUID ]; then
  UUID="1fd7cf9a-60ee-47ce-a27b-5a970d230ab3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

