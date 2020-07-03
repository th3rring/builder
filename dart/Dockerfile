FROM ros:melodic-ros-base
MAINTAINER Thomas Herring teh6@rice.edu

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository ppa:dartsim/ppa &&\
    apt-get install -y ros-${ROS_DISTRO}-moveit-*\ 
    python-catkin-tools\ 
    libdart6-all-dev\
    ros-${ROS_DISTRO}-fetch-ros && \
    rm -rf /var/lib/apt/lists/*

