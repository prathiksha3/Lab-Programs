string = "Hello My Name Is TechVidvan"
nchar(string)
strvec = c(string,"HI", "hey", "haHa")
nchar(strvec)
# toupper function
toupper(string)
toupper(strvec)
# tolower function
tolower(string)
tolower(strvec)
# substr function
substr(string, 5, 20)
# grep function
grep("Tech", string)
# paste function
paste("hello", "techvidvan", string, sep = "-")
# strsplit function
strsplit(string,'e')
# sprintf function
count = 5L
name = "Bob"
place = "pocket"
sprintf("There are %d dollars in %s's %s", count, name, place)
# cat function
cat("hello","this","is","Techvidvan",sep = "-")
# sub function
sub("My Name Is", "I Am", string)
