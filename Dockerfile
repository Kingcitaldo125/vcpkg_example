FROM vcpkg:2024.10.21

WORKDIR /vcpkg_example/

COPY . .

RUN vcpkg install
RUN $(find / -type d | grep cmake | grep bin)/cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake
RUN $(find / -type d | grep cmake | grep bin)/cmake --build build/ --parallel $(nproc)

CMD [ "/vcpkg_example/build/main" ]
