---
name: zeabur-infrastructure
description: Zeabur server fleet — Hermes1 and Hermestwo8gb specs, IPs, and common issues
metadata:
  type: reference
---

## Servers

| Server | Status | K3s | IP | Region | Specs | Cost |
|--------|--------|-----|-----|--------|-------|------|
| **Hermes1** | Running | 🔴 Offline (fixed) | 43.167.176.156 | Tokyo, JP | 2C/8GB | $5/mo |
| **Hermestwo8gb** | Running | 🟢 Online | 43.130.235.84 | Tokyo, JP | 2C/8GB | $5/mo |

## Common Issues

**K3s Offline** — Most common cause is **high swap usage** (90%+). K3s gets OOM-killed.
- Fix: `sudo swapoff -a && sudo swapon -a` (may hang if swap is full — Ctrl+C and skip)
- Better fix: Lower swappiness to 10: `echo 'vm.swappiness=10' | sudo tee /etc/sysctl.d/99-swappiness.conf`
- Then restart K3s: `sudo systemctl restart k3s`
- Verify: `sudo kubectl get nodes`

## SSH Access
```bash
ssh ubuntu@43.167.176.156  # Hermes1
```

## Cleanup Routine
```bash
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean && sudo apt clean
sudo journalctl --vacuum-time=7d
sudo swapoff -a && sudo swapon -a
```

## Links
- Dashboard: https://zeabur.com/servers/69d7433cf2ab61f5dd649e1f
- [[Reference/external-systems]]
