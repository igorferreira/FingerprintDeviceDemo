# Fingerprint Device Demo

FingerprintDeviceDemo from http://pt.sztimmy.net/

This project is a demo application for a fingerprint device, utilizing the SSM framework and WebSocket protocol for communication. The application uses the `java.org_websocket` library to implement the WebSocket interface.

## Table of Contents
- [Development Environment](#development-environment)
- [Setup Instructions](#setup-instructions)
- [Configuration](#configuration)
- [Running the Project](#running-the-project)
- [Database Schema](#database-schema)

## Development Environment
- JDK 1.8
- Eclipse IDE for Java EE Developers
- Maven 3.5 and above
- Tomcat 9 and above
- MySQL 5.7 and above

## Setup Instructions

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/igorferreira/FingerprintDeviceDemo.git
   cd FingerprintDeviceDemo
   ```

2. **Import the Project into Eclipse:**
   - Open Eclipse IDE.
   - Go to `File -> Import -> Existing Maven Projects`.
   - Select the cloned repository directory.
   - Click `Finish`.

3. **Setup MySQL Database:**
   - Start your MySQL server.
   - Import the database schema from the `fingerprint.sql` file:
     ```sql
     mysql -u username -p database_name < /path/to/fingerprint.sql
     ```

4. **Configure Maven and Tomcat in Eclipse:**
   - Ensure Maven is installed and configured in Eclipse.
   - Configure Tomcat server in Eclipse.

5. **Open Windows Firewall Port 7788:**
   - Ensure that port 7788 is open on your firewall to allow communication.

6. **Configure the Server IP:**
   - Set the server IP to your local computer's IP and configure the network and server port to 7788.
   - Update `tomcat/conf/server.xml` to configure image settings.

## Configuration

### pom.xml
The project dependencies and plugin configurations are managed in the `pom.xml` file. Some key dependencies include:
- Spring Framework
- MyBatis
- MySQL Connector
- Java-WebSocket
- Jackson (for JSON processing)
- Log4J (for logging)

### Main Class
The main class for the WebSocket server is `WSSServer`. The `onMessage` method handles data received from the device, and the `WebSocketPool` class manages device connections and data transmission.

## Running the Project

1. **Start Tomcat Server:**
   - In Eclipse, right-click on the project.
   - Select `Run As -> Run on Server`.
   - Choose the configured Tomcat server and click `Finish`.

2. **Operate the Device:**
   - Ensure the device is configured to communicate with the server using the correct IP and port.
   - The backup numbers correspond to different types of data:
     - `0-9`: Fingerprint
     - `20-27`: Face (20-23 is the first face, 24-27 is another face)
     - `30-37`: Palm
     - `50`: Photo

## Database Schema

The database schema is defined in the `fingerprint.sql` file. It includes tables and relationships necessary for storing user data, fingerprint data, and other related information.

```sql
-- Example SQL from fingerprint.sql
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- More table definitions...
```

## Additional Resources

- Refer to the `TH_Java_SDK_3.5_settingfile.docx` for detailed configuration instructions.
- For protocol details, consult the `websocket+json protocol2.4.pdf` document.

Feel free to contribute to the project by submitting pull requests or reporting issues.

