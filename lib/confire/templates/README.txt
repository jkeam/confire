README
--------------------
This is a very quick readme to get you up and going quickly.  For the full readme check out:
https://github.com/jkeam/confire


Usage
--------------------
1.  If you got this far, I assume you ran:
confire [project_name]

2.  Next we setup the config.yml
  filename            input filename
  lines_per_test_case how many lines count as 1 test case
  log_level           the log level you want.  right now only logs to console.
  log_name            optional name you want to see in the log. deleting this prop defaults it to 'application'

3.  Implement custom_processor.rb
There are two methods you need to implement.
  process_testcase    put the logic of processing the test case here
  process_line        put the logic of formatting each line here

If you need, add 'byebug' to get gdb like debugging.  Great cheatsheet:
http://fleeblewidget.co.uk/2014/05/byebug-cheatsheet/

4.  Write tests
Check out the stuff in the spec folder to see some examples.  To run your tests run:
rake test

5.  Run the program
./run.sh
