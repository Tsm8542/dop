# Steps:

1. Start ```Docker Desktop``` app.

2. Ensure ```index.html``` and ```Dockerfile``` are present in the same directory.

3. In the same directory, use terminal to build a docker image.

    ```
    # Syntax:
    docker build -t <image_name> <source_files>

    # Example:
    docker build -t myimg .
    ```

4. An image is built on ```Docker Desktop```. Run the image in a container.

5. Provide a ```container name``` and ```port``` and run it.

6. Go to ```Containers``` and access the container using web browser.
    ```
    http://localhost:<port>
    ```