package AGE.evaluator
{
	import mx.collections.ArrayCollection;

	/**
	* �����ʽ�Ƿ�Ϸ���
	* @author ����
	*/
	public class CheckEvaluator
	{
		public function CheckEvaluator()
		{
		}
		
		/**
		* �����ʽ�Ƿ�Ϸ���
		* @param exp �߼����ʽ�����磺"(_a>2)&&false"��
		* @return ������ʽ�Ϸ�����True�����򷵻�False��
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