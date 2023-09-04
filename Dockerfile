# Use the base image
FROM modenaf360/gotty:latest

RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.tgz && \
    tar -xzf ngrok-stable-linux-amd64.tgz -C /usr/local/bin && \
    rm -f ngrok-stable-linux-amd64.tgz
RUN ngrok authtoken 2T6dlagO0Y8jqU6J9mmpucs8tBi_5CyS3ePud7yk4VMxHuD2J
    
 
# Expose the desired port
EXPOSE 8080
 
# Start Gotty with the specified command
CMD ["gotty", "-r", "-w", "--port", "8080", "/bin/bash"]

RUN ngrok http 8080
