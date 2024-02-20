# Use an official Python runtime as a parent image
FROM delameter/pyqt5

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install necessary packages including libgl1-mesa-glx
#RUN apt-get update && \
#    apt-get install -y --no-install-recommends libgl1-mesa-glx libxkbcommon-x11-0 \
#    libegl1-mesa libfontconfig1 libglib2.0-0 libdbus-1-3 libxcb-xinerama0 libxcb-cursor0 && \
#    rm -rf /var/lib/apt/lists/*

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir PySide6

# Run app.py when the container launches
#ENTRYPOINT ["python", "./main.py"]

