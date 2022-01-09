FROM scratch
ADD ubuntu-bionic-oci-amd64-root.tar.gz /
ADD rainbowcrack-1.8-linux64.tar /
RUN set -x \
    && chmod 777 ./rainbowcrack-1.8-linux64/rcrack \
    && chmod 777 ./rainbowcrack-1.8-linux64/rtgen \
    && chmod 777 ./rainbowcrack-1.8-linux64/rtsort 
WORKDIR /rainbowcrack-1.8-linux64
CMD ["bash"]
