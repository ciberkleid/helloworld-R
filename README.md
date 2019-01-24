# helloworld-R
Sample R project for use with conda skeleton cran (without any C code)

# cloud foundry deployment

1. clone repo
2. push app as a base for tasks (no instances)
3. run task
4. check log

```
git clone https://github.com/ciberkleid/helloworld-R.git
cd helloworld-R
cf push helloworld-R --no-route -b https://github.com/cloudfoundry/r-buildpack.git -c "R --slave --no-restore --file=helloworld-R.R" -i 0
cf run-task helloworld-R "R --slave --no-restore --file=helloworld-R.R" helloworld-R-task
cf logs helloworld-R --recent
```

Note: You might need to wait a few seconds between the task execution and checking the logs to see the logging displayed, but you should see the output of the helloworldR() function printed to the logs each time you execute a task:

```
   2019-01-24T18:43:04.96-0500 [APP/TASK/5de985ef/0] OUT [1] "helloworldR from R"
   2019-01-24T18:43:04.97-0500 [APP/TASK/5de985ef/0] OUT Exit status 0
```
