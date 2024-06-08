string1="data"
string2="science"
result=paste(string1,string2)
print(result)
result=(toupper(string1)==toupper(string2))
print(result)
text="data science"
reversed_text=rev(strstripe(text,"")[1])
reversed_text=paste("reversed_text",collapse="")
cat=("reversed string",reversed_text,"\n")

text2="madam"
reversed_string=rev(strstripe(text2,"")[1])
reversed_string=paste("reversed_string",collapse="")
if(text2==reversed_string){
cat("the string is palindrome.\n)
}else{
cat("the string not is palindrome.\n)
}
