# Confire
*Still unstable!  I am changing a lot of things so use at your own risk.*

## Purpose
Very simple project preparer for google codejam.  This will evolve over time.  This is just something I'm throwing together to avoid the dirty work of project setup everytime.

## Usage
Get this gem from rubygems and once installed, use it to generate a new project.

```shell
# creates new project and copies some files in
confire new_project_name

# implement both methods in the processor.rb

# run everything
./run.sh
```

## Files it copies in
1.  config.yml - Used to configure how to parse test cases.  Also log level and input filename to read in.
2.  Gemfile - Run 'bundle install' to get all the nice binding.pry debug gems.
3.  Rakefile - Rakefile with 'rake test' already set up.
4.  main.rb - Main driver, you shouldn't need to touch this
5.  processor.rb - This is where you will put your work.  There are two main methods to overload here, one to process a given test case and one to process each line.  Feel free to add other classes you need and require them here.
6.  spec - Contains a generic tests for the processor.rb.  Expand as you need of course.
7.  input_sample.txt - Dummy sample file that you need to override (or simply point to a new one in the config.yml)
8.  run.sh - Script used to invoke everything (will run the main which will invoke the processor).  Simply call without passing in any args.

## Future
This will get expanded of course as time goes on.  Complete with tests and more functionality.  I hope to hide these classes from you but for now it just vomits into your project directory.

