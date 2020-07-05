FROM ros:melodic-ros-base
MAINTAINER Thomas Herring teh6@rice.edu

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository ppa:dartsim/ppa &&\
    apt-get install -y ros-${ROS_DISTRO}-moveit-*\ 
    python-catkin-tools\ 
    libdart6-all-dev\
    g++\
    cmake\ 
    pkg-config\ 
    libboost-serialization-dev\ 
    libboost-filesystem-dev\ 
    libboost-system-dev\ 
    libboost-program-options-dev\ 
    libboost-test-dev\ 
    libeigen3-dev\ 
    libode-dev\ 
    wget\ 
    libyaml-cpp-dev\
    libhdf5-dev\
    ros-${ROS_DISTRO}-fetch-ros && \
    rm -rf /var/lib/apt/lists/*

RUN  wget -O - https://github.com/ompl/ompl/archive/1.5.0.tar.gz | tar zxf - && \
     cd ompl-1.5.0 && \
     mkdir -p build/Release && \
     cd build/Release && \
     cmake ../.. && \
     make -j 6 && \
     make install

