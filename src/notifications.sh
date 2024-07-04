#!/bin/bash

if [ "$CI_JOB_STATUS" == "success" ]; then
  MESSAGE="Стадия -> $CI_JOB_NAME успешно завершена!"
else
  MESSAGE="Стадия -> $CI_JOB_NAME завершилась с ошибкой!"
fi

curl -X POST "https://api.telegram.org/bot6966927475:AAFpWJS4jKjgYITVRtZd56NE7QbRkapmVLA/sendMessage" -d chat_id=351510986 -d text="$MESSAGE"


