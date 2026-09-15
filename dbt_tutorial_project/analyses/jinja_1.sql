{%- set my_variable = "Hello, World!" -%} 

{{ my_variable }}

{# Notes - This is a simple example of using Jinja variables in dbt

-- whenever we want to develop anything using for loops or conditional logic or set variables,
we use single curly braces with a percent sign and

-- whenever we want to use a variable, we use double curly braces

--  (-), we use hypen to remove the whitespace from the output like in this example, 
we have used (-) to remove the whitespace from the output line, so that the output displays from the line 1
instead of line 3, if we remove the (-) then the output will be displayed from line 3 instead of line 1


-- to test this code, we can run the command dbt run-operation jinja_1 in the terminal and
 it will display the output as Hello, World! Or

-- with the help of our extension 'Power user of dbt', we can also see the compilation result of this code 
by clicking on the "Compile" button in the top right corner of the dbt project window, 
and it will display the output as Hello, World!

#}
