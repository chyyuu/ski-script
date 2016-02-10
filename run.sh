#!/bin/bash
export SKI_DEBUG_CHILD_START_SLEEP_SECONDS=0
export SKI_DEBUG_CHILD_WAIT_START_SECONDS=0
export SKI_DEBUG_EXIT_AFTER_HYPERCALL_ENABLED=0
export SKI_DEBUG_PARENT_EXECUTES_ENABLED=0
export SKI_DEBUG_START_SLEEP_ENABLED=0
export SKI_FORKALL_CONCURRENCY=1
export SKI_FORKALL_ENABLED=1
export SKI_INPUT1_RANGE=1-25
export SKI_INPUT2_RANGE=+0-1
export SKI_INTERLEAVING_RANGE=1-200
export SKI_MEMFS_ENABLED=1
export SKI_MEMFS_LOG_LEVEL=1
export SKI_MEMFS_TEST_MODE_ENABLED=0
export SKI_OUTPUT_DIR=/mnt/Workspace/code/workspace/ski/out/ski-result/
export SKI_OUTPUT_DIR_PER_INPUT_ENABLED=1
export SKI_PRIORITIES_FILENAME=/mnt/Workspace/code/workspace/ski/ski-0.1/config/fsstress.priorities
export SKI_QUIT_HYPERCALL_THRESHOLD=1
export SKI_RACE_DETECTOR_ENABLED=1
export SKI_RESCHEDULE_K=1
export SKI_RESCHEDULE_POINTS=1
export SKI_TRACE_INSTRUCTIONS_ENABLED=0
export SKI_TRACE_MEMORY_ACCESSES_ENABLED=0
export SKI_WATCHDOG_SECONDS=300
$1 -m 512 -smp 4 -loadvm ski-vm-YYYYMMDDHHMMSS -hda /home/progman/workspace/img/ubuntu5-tmp.qcow2 -rtc base=utc,clock=vm -net nic -net user,hostfwd=tcp::10000-:22 -vnc :6 -serial file:/home/progman/workspace/ski/out/ski-result/console.txt -ski 0,input_number=210:210,preemptions=119:97
