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

COPY --from=th3rring/builder:ompl /usr /usr

ENV user_name=dart
RUN useradd -ms /bin/bash $user_name && \
    ln -s /Workspace /home/$user_name/Workspace 
USER $user_name
WORKDIR /home/$user_name

# Copy over entrypoint and set default command to bash.
COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]

    # echo "source /scripts/devcd.sh" >> /home/$user_name/.bashrc && \
    # echo "export WORKSPACE_PATH=/home/$user_name/Workspace" >> /home/$user_name/.bashrc
