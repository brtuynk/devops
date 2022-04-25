$ cat <<EOF > portainer-pass.sh
#!/usr/bin/env bash
    
if [ -z "\$1" ]; then
    echo -e "\\nPlease call '\$0 <password>' to run this command!\\n"
    exit 1
fi
    
htpasswd -nb -B manager \$1 | cut -d ":" -f 2
EOF