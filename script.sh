#!/usr/bin/env bash
#
#**************************************************
# Author:         AGou-ops                        *
# E-mail:         agou-ops@foxmail.com            *
# Date:           2023-08-30                      *
# Description:                              *
# Copyright 2023 by AGou-ops.All Rights Reserved  *
#**************************************************

origin_text=$(helm install --generate-name --dry-run "$@" | grep "image:")

image_name=""

for i in $origin_text;do
	if [[ "$i" =~ "/" ]]; then
		image_name="$image_name $i"
	fi
done

echo "$image_name" | sed "s/\"//g" | xargs -n1
