#🔥 Don't Remove Credit ➤ @DigitalGalaxyHQ
#🎥 Subscribe our Youtube Channel for Awesome Bots! ➤ @DigitalGalaxyHQ
#💬 Have Questions? Ask on Telegram! ➤ @Tony_Stark_75

# Use Python 3.10 base image
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app/

# Update apt and install ffmpeg along with Python dependencies
RUN apt update && apt install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*  # Clean up cache to reduce image size

# Install Python dependencies from the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the bot
CMD ["python", "bot.py"]