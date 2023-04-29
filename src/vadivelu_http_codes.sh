#!/bin/bash

api="https://vadivelu.anoram.com"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_http_code() {
  # 1 - format: (string): <format - default: jpg>
  # 2 - status_code: (integer): <status_code>
  # 3 - grayscale: (boolean): <true, false - default: false>
  curl --request GET \
    --url "$api/${1:-jpg}/$2" \
    --user-agent "$user_agent" \
    --header "content-type: image/jpeg" \
    --output vadivelu_http_code.jpg
}
