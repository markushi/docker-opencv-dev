# docker-opencv-dev  

Dockerized CI environment for building C++ applications with OpenCV(4.4.0) and cmake(optional). 

## Example usage

Here's how the image can be used in conjunction with bitbucket pipelines.  

bitbucket-pipelines.yml
````
image: markushi/opencv-dev:latest

pipelines:
  default:
    - step:
        script:
          - mkdir build
          - cd build
          - cmake ../Linux
          - make
````
