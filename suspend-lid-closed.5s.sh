#!/bin/bash

echo "⏸ | iconName=computer-symbolic"

lid_status=$(cat /proc/acpi/button/lid/LID0/state)

if [[ $lid_status == *"closed"* ]]; then
  systemctl suspend
fi