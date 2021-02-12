FROM fpco/stack-build:lts-16.12

WORKDIR /app
ADD . /app

# RUN stack setup
RUN stack build --copy-bins

EXPOSE 80

CMD ["critical-counter-exe"]