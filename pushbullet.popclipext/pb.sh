#!/bin/bash

if [[ -z "$POPCLIP_OPTION_TOKEN" ]];then
  exit 1
fi

if [[ "${#POPCLIP_TEXT}" -gt 20 ]];then
  title="${POPCLIP_TEXT:0:18}"...
else
  title=$POPCLIP_TEXT
fi

if [[ -n "$POPCLIP_OPTION_DEV" ]];then
  export BULLETGO_DEV=$POPCLIP_OPTION_DEV
fi

exec ./bulletgo "$POPCLIP_OPTION_TOKEN" note "$title" "$POPCLIP_TEXT"
