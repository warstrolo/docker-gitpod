FROM gitpod/workspace-full

RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | BOOTSTRAP_HASKELL_NONINTERACTIVE=1 sh

RUN echo 'source /home/gitpod/.ghcup/env' >> ~/.bashrc

RUN mkdir -p /home/gitpod/.ssh/
COPY ./id_rsa /home/gitpod/.ssh/id_rsa
COPY ./id_rsa.pub /home/gitpod/.ssh/id_rsa.pub
