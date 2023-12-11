FROM ubuntu:latest
RUN apt update
RUN apt install wget curl git -y
RUN TOKEN="7308e04e67493a1f4fed3eb4a13dc4e1dfb352bbdab6c9d129" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
RUN ~/.buildkite-agent/bin/buildkite-agent start
