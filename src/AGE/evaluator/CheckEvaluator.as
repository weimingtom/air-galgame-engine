package AGE.evaluator
{
	import mx.collections.ArrayCollection;

	/**
	* 检查表达式是否合法。
	* @author 刘峰
	*/
	public class CheckEvaluator
	{
		public function CheckEvaluator()
		{
		}
		
		/**
		* 检查表达式是否合法。
		* @param exp 逻辑表达式，例如："(_a>2)&&false"。
		* @return 如果表达式合法返回True，否则返回False。
		*/
		public static function check(exp:String):Boolean{
			var expx:String=exp.toLowerCase();
			var charArray:ArrayCollection=new ArrayCollection();
			charArray.source=expx.split("");
			var parenthesisFlag:int=0;
			for(var i:int=0;i<=charArray.length-1;i++){
				var tmp:String=charArray.getItemAt(i).toString();
				if(!(tmp.charCodeAt()>=48 && tmp.charCodeAt()<=57 || tmp=="(" || tmp==")" || tmp=="+" || tmp=="-" || tmp=="*" || tmp=="/" || tmp=="." || tmp==">" || tmp=="<" || tmp=="=" || tmp=="|" || tmp=="&" || tmp=="!" )){
					return false;
				}
				if(tmp=="("){
					parenthesisFlag++;
				}
				if(tmp==")"){
					parenthesisFlag--;
				}
				if(tmp=="+" || tmp=="-" || tmp=="*" || tmp=="/"){
					if(i==0){
						return false;
					}
					if(i==charArray.length-1){
						return false;
					} else {
						if(charArray.getItemAt(i+1)=="+" || charArray.getItemAt(i+1)=="-" || charArray.getItemAt(i+1)=="*" || charArray.getItemAt(i+1)=="/" || charArray.getItemAt(i+1)=="."){
							return false;
						}
					}

				}
				
			}
			if(parenthesisFlag!=0){
				return false;
			}
			return true;
		}
	}
}