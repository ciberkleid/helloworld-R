FROM r-base:3.5.2
USER 1000
ADD helloworld-R.R /app/helloworld-R.R
ENTRYPOINT [ "/usr/bin/R", "--slave",  "--no-restore", "--file=/app/helloworld-R.R" ] 