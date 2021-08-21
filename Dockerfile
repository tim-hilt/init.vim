FROM archlinux:latest

RUN useradd -m dev
RUN echo "dev ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN sed -i "s/#Color/Color/" /etc/pacman.conf
RUN sed -i "s/#ParallelDownloads/ParallelDownloads/" /etc/pacman.conf

RUN pacman --cachedir /tmp -Syu --noconfirm \
	fish \
	git \
    starship \
    sudo \
	tmux \
	neovim \
    ranger \
	&& rm -rf /tmp/*

RUN mkdir /home/dev/.config
RUN chown dev /home/dev/.config

USER dev

ENV HOME /home/dev

COPY --chown=dev:dev . /home/dev/.config/nvim
RUN mkdir /home/dev/.config/fish
RUN echo "starship init fish | source" >> /home/dev/.config/fish/config.fish

WORKDIR /home/dev

ENTRYPOINT [ "fish" ]
