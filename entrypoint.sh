#!/bin/sh
set -e

# 默认工作目录 /conf，可用 WORK_DIR 环境变量覆盖
WORK_DIR=${WORK_DIR:-/conf}
cd "$WORK_DIR"

ENTRY_SCRIPT="after_u_diskmount.sh"

# 检查入口脚本是否存在且可执行
if [ -x "$ENTRY_SCRIPT" ]; then
    echo "[container] Executing $ENTRY_SCRIPT..."
    "$ENTRY_SCRIPT"
else
    echo "[container] Warning: $ENTRY_SCRIPT not found or not executable"
fi

# 保持容器前台运行
exec "$@"
