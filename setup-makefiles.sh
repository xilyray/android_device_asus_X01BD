#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
# Copyright (C) 2021 The xdroid Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=X01BD
export DEVICE_COMMON=sdm660-common
export VENDOR=asus

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
