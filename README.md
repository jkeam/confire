# Confire
*Somewhat stable.  Let me know if you find any issues.*

## Purpose
Very simple project preparer for google codejam.  This will evolve over time.  This is just something I'm throwing together to avoid the dirty work of project setup everytime.

## Benefits
As far as I see it, this gem is nice in that it generates a project directory with lots of nice files to get going immediately:

1.  Gemfile - has binding.pry gems already dropped in there for you
  If you've never used it, its a great tool.  All you have to do is write:
```shell
binding.pry
```
anywhere in your code (think gdb) and you get a nice breakpoint.  [Binding.pry cheatsheet](https://gist.github.com/lfender6445/9919357)

Don't forget to run
```shell
bundle install
```
to install the gems.

2.  Rakefile - will run everything in the generated spec folder automatically.  There is already included an example test that you can overwrite.
```shell
rake test
```

3.  custom_processor.rb - The main purpose of the google codejam is the algorithm.  Anything else you have to do is unnecessary time wasting setup.  There are other gems out there that try and accomplish the same thing, but I wanted something even simpler.  Where I didn't have to write ANY ceremony, I could merely set some properties, implement the methods I needed and be done.  That is exactly what this gem does.  See the Usage section to see what I mean.


## Usage
Get this gem from rubygems and once installed, use it to generate a new project.

```shell
# creates new project and copies some files in
confire new_project_name

# setup the configs in the config.yml
  #filename: input_sample.txt - the filename to process
  #lines_per_test_case: 2 - how many lines count as 1 test case

  #log_level: 'debug' - the log level you want.  right now only logs to console.
  #log_name: 'application' - optional name you want to see in the log. deleting this prop defaults it to 'application'

# implement both methods in the custom_processor.rb
  # process_testcase - put the logic of processing the test case here
  # process_line     - put the logic of formatting each line here

# run everything
./run.sh
```

## Files it copies in
You will see a lot of files get dumped into your project directory.  Don't worry, they each have a purpose.  You shouldn't ever need to edit let alone open any of the files other than config.yml and custom_processor.rb.

1.  README.txt - a very quick readme to get up and running quickly.

2.  config.yml - Used to set properties such as what file to read in, how many lines in a given test case and log info

3.  Gemfile - List of debugging and some formatting gems.

4.  Rakefile - Rakefile with 'rake test' already set up.

5.  custom_processor.rb - This is where you will put your work.  There are two main methods to overload here, one to process a given test case and one to process each line.  Read the comments in this file for a detailed explaination.  Feel free to add other classes you need and require them here.

6.  spec - Contains a generic tests for the custom_processor.rb.  Expand as you need of course.

7.  input_sample.txt - Dummy sample file that you need to override (or simply point to a new one in the config.yml)

8.  driver.rb - The main ruby script invoked by the run.  This ties your custom_processor to the rest of the code that is parsing the input file.

9.  run.sh - Script used to invoke everything (will run the main which will invoke the processor).  Simply call without passing in any args.
```shell
./run.sh
```

## Future
This will get expanded of course as time goes on.  Complete with tests and more functionality.   There are some tests now, but I hope to add more.

