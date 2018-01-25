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
  //noCapitals
  String r = new String();
  for(int i = 0; i < word.length(); i++)
  {
    if(word.equalsIgnoreCase(word))
      r = word.toLowerCase();
  }
  //noSpaces
  String u = new String();
  for(int i = 0; i < r.length(); i++)
  {
    if(!r.substring(i+1).equals(" "))
      u = u + r.substring(i, i+1);
  }
  //onlyLeters
  String v = new String();
  for(int i = 0; i < u.length(); i++)
  {
    if(Character.isLetter(u.charAt(i)) == true)
      v = v + u.substring(i, i+1);
  } 
  //reverse
  String t = new String();
  int nLast = v.length()-1;
  while(nLast >= 0)
  {
    t = t + v.substring(nLast, nLast+1);
    nLast--;
  }
  if(t.equals(v))
    return true;
  else
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int nLast = str.length()-1;
    for(int i = nLast; i >= 0; i--)
    {
      sNew = sNew + str.substring(i, i+1);
    }
    return sNew;
}



