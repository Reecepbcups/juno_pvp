# TODO: Use https://github.com/Reecepbcups/minecraft-panel?
# java -Xmx8024M -Xms8024M -jar $server nogui

# server=paper-1.18.2-388.jar
server=paper-1.20.1-111.jar
MAXRAM=8024M
MINRAM=8024M

while [ true ]; do
    java -Xmx$MAXRAM -Xms$MINRAM -jar $server nogui
    echo "If you want to completely stop the server process now, press Ctrl+C before the time is up!"
    echo "Rebooting in:"
    for i in 5 4 3 2 1; do
        echo "$i..."
        sleep 1
    done
    echo "Rebooting now!"
done
