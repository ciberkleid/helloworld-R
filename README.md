# helloworld-R
Sample R project for use with conda skeleton cran (without any C code)

# cloud foundry deployment

1. clone repo

2. push app as a base for tasks:
cf push helloworld-R --random-route -b https://github.com/cloudfoundry/r-buildpack.git -c "Rscript R/helloworld-R.R" -i 0

3. run task:
cf run-task helloworld-R "Rscript R/helloworld-R.R" helloworld-R-task
