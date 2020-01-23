public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  String x = onlyLetters(word);
  String y = noCapitals(x);
  String s = reverse(y);
  if(onlyLetters(y).equals(s))
  return true;
  else
  
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int p = str.length()-1;
    for(int x = p; x >= 0; x--)
    sNew = sNew + str.substring(x,x+1);
  
    return sNew;
}

public String onlyLetters(String str){
  String Letter = new String();
  for(int i = 0; i < str.length(); i++)
  if(Character.isLetter(str.charAt(i)))
  Letter = Letter + str.substring(i,i+1);
  
  return Letter;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public int numLetters(String sString){
  int x = 0;
  for(int i = 0; i < sString.length(); i++)
  if(Character.isLetter(sString.charAt(i)))
  x++;
  
  return x;
}
