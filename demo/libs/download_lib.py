import requests

# URL to download the olap4j-0.9.7.jar file
url = "https://repo1.maven.org/maven2/org/olap4j/olap4j/0.9.7/olap4j-0.9.7.jar"

# Path to save the downloaded file
file_path = "./olap4j-0.9.7.jar"

# Download the file
response = requests.get(url)
if response.status_code == 200:
    with open(file_path, "wb") as file:
        file.write(response.content)
    print(f"Downloaded olap4j-0.9.7.jar to {file_path}")
else:
    print(f"Failed to download olap4j-0.9.7.jar. Status code: {response.status_code}")
