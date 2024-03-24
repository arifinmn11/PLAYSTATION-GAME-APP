String capitalizedString(String text){
  if(text.trim().isEmpty) return "";
  return "${text[0].toUpperCase()}${text.substring(1)}";
}