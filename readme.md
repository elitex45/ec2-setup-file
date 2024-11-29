# EC2 Instance Setup File
Pull this repo and run below commands
```
cd ec2-setup-file
chmod +x setup.sh
./setup.sh
```

tmux will be pre-installed so here is the quick guide to tmux commands

### **tmux Basics**

**1. Start tmux:**
```bash
tmux
```

**2. Create a New Session:**
```bash
tmux new -s <session-name>
```

**3. Attach to an Existing Session:**
```bash
tmux attach -t <session-name>
```

**4. List All Sessions:**
```bash
tmux list-sessions
```

**5. Detach from a Session:**
Press `Ctrl+b`, then `d`  
Or run:
```bash
tmux detach
```

---

### **Window Management**

**1. Create a New Window:**
Press `Ctrl+b`, then `c`

**2. Switch Between Windows:**
Press `Ctrl+b`, then use the number of the window (e.g., `0`, `1`).

**3. Rename the Current Window:**
Press `Ctrl+b`, then `,`  
Type a new name and press `Enter`.

**4. Close a Window:**
Press `Ctrl+d` (to exit the shell in the window).

---

### **Pane Management**

**1. Split Horizontally:**
Press `Ctrl+b`, then `"`

**2. Split Vertically:**
Press `Ctrl+b`, then `%`

**3. Navigate Between Panes:**
Press `Ctrl+b`, then arrow keys.

**4. Resize Panes:**
Press `Ctrl+b`, then `:` and type:
```bash
resize-pane -D  # Resize down
resize-pane -U  # Resize up
resize-pane -L  # Resize left
resize-pane -R  # Resize right
```

---

### **Saving and Restoring Sessions**

**1. Save tmux Session Layout:**
Use a plugin like `tmux-resurrect` to save and restore sessions automatically.

---

### **Exiting tmux**

**1. Kill a Specific Session:**
```bash
tmux kill-session -t <session-name>
```

**2. Kill All Sessions:**
```bash
tmux kill-server
```

---

### **Quick Cheat Sheet**

| Command                   | Action                              |
|---------------------------|-------------------------------------|
| `tmux new -s <name>`      | Start a new session                |
| `Ctrl+b d`                | Detach session                     |
| `Ctrl+b c`                | Create new window                  |
| `Ctrl+b ,`                | Rename current window              |
| `Ctrl+b "`                | Split pane horizontally            |
| `Ctrl+b %`                | Split pane vertically              |
| `Ctrl+b arrow`            | Switch panes                       |
| `tmux ls`                 | List all sessions                  |
| `tmux attach -t <name>`   | Attach to a session                |

---

Add this to your README for a quick and effective `tmux` guide.
