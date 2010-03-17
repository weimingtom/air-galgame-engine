package gal.evaluator
{
	import mx.collections.ArrayCollection;

	public class CheckEvaluator
	{
		public function CheckEvaluator()
		{
		}
		
		public static function check(exp:String):Boolean{
			var expx:String=exp.toLowerCase();
			var charArray:ArrayCollection=new ArrayCollection();
			charArray.source=expx.split("");
			var parenthesisFlag:int=0;
			for(var i:int=0;i<=charArray.length-1;i++){
				var tmp:String=charArray.getItemAt(i).toString();
				if(!(tmp.charCodeAt()>=48 && tmp.charCodeAt()<=57 || tmp=="(" || tmp==")" || tmp=="+" || tmp=="-" || tmp=="*" || tmp=="/" || tmp==".")){
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