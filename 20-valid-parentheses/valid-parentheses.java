class Solution {
    public boolean isValid(String s) {
        int n=s.length();
        Stack<Character> s1=new Stack<>();
        for(int i=0;i<n;i++){
            char ch=s.charAt(i);
            if(ch=='(' ||ch== '{' ||ch=='['){
            s1.push(ch);
            }else{
                if (s1.isEmpty()) return false;
                char ch2=s1.peek();
                if(ch==')' && ch2=='('){
                    s1.pop();
                    continue;
                }else if(ch=='}' && ch2=='{'){
                    s1.pop();
                    continue;
                }else if(ch==']' && ch2=='['){
                    s1.pop();
                    continue;
                }else{
                    return false;
                }
            }
        }
        if(!s1.isEmpty()){
            return false;
        }
        return true;
    }
}