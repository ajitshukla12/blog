PORT=80
PID=$(lsof -t -i :$PORT)
if [ -n "$PID" ]; then
    echo "Killing process with PID: $PID on port $PORT"
    sudo kill $PID
fi
