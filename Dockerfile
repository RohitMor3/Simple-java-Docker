# pull a base image which gives all requirement and libraries
FROM eclipse-temurin:17-jdk

# create a folder where the app code will be store
WORKDIR /app

# copy the source code from your HOST machine to your container
COPY . .

# compile the application code
RUN javac src/Main.java 

# run the application
CMD ["java","-cp", "src", "Main"]
