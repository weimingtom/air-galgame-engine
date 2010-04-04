package AGE.evaluator
{
	import AGE.evaluator.ExpressionEvaluator;
	
	import mx.collections.ArrayCollection;
	public class LogicEvaluator
	{
		public static var optrDict:ArrayCollection=new ArrayCollection(
			[
				{key:"==",value:"＝"},
				{key:"!=",value:"≠"},
				{key:">=",value:"≥"},
				{key:"<=",value:"≤"},
				{key:">",value:"＞"},
				{key:"<",value:"＜"}
			]
		)
		
		public function LogicEvaluator()
		{
		}
		
		public static function eval(exp:String):Boolean{
			//此方法暂时只支持二元逻辑运算
			//将逻辑符号统一规范
			var exchangeExp:String="";
			var optr:String="";//操作符
			for(var i:int=0;i<=optrDict.length-1;i++){
				if(exp.indexOf(optrDict.getItemAt(i).key)!=-1){
					exchangeExp=exp.replace(optrDict.getItemAt(i).key,optrDict.getItemAt(i).value);
					optr=optrDict.getItemAt(i).value;
					break;
				}
			}	
			var exps:ArrayCollection=new ArrayCollection(exchangeExp.split(optr));
			if(CheckEvaluator.check(exps.getItemAt(0).toString())){
				var exp1:Number=ExpressionEvaluator.eval(exps.getItemAt(0).toString());
			} else {
				return false;
			}
			if(CheckEvaluator.check(exps.getItemAt(1).toString())){
				var exp2:Number=ExpressionEvaluator.eval(exps.getItemAt(1).toString());
			} else {
				return false;
			}
			switch(optr){
				case "＝":
					return (exp1==exp2);
				case "≠":
					return (exp1!=exp2);
				case "≥":
					return (exp1>=exp2);
				case "≤":
					return (exp1<=exp2);
				case "＞":
					return (exp1>exp2);
				case "＜":
					return (exp1<exp2);
			}
			return false;
		}
	}
}