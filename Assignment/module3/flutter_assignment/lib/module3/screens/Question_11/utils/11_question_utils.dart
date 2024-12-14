class Utils{
  static String _nameRegEx = r'^[A-Za-z\s]+$';
  static String _emailRegEx = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

  static String? validateName(String str){
    if(str.isEmpty){
      return 'Please Enter Name';
    }else if(!RegExp(_nameRegEx).hasMatch(str)){
      return 'Invalid name';
    }else{
      return null;
    }
  }

  static String? validateEmail(String str){
    if(str.isEmpty){
      return 'Please Enter Email';
    }else if(!RegExp(_emailRegEx).hasMatch(str)){
      return 'Invalid Email';
    }else{
      return null;
    }
  }

  static String? validateContact(String str){
    if(str.isEmpty){
      return 'please enter contact number';
    }else if(str.length != 10){
      return 'please enter 10 digit';
    }else{
      return null;
    }
  }

  static String? validatePassword(String str){
    if(str.isEmpty){
      return 'Please enter password';
    }else{
      return null;
    }
  }

  static String? validateConfirmPassword(String str1,String str2){
    if(str2.isEmpty){
      return 'Please enter confirm password';
    }else if(str1 != str2){
      return 'Password mismatch';
    }else{
      return null;
    }
  }
}

