sudo sysctl -w kernel/yama/ptrace_scope=0
sudo sysctl -w kernel/randomize_va_space=0 # Needed by VUzzer
