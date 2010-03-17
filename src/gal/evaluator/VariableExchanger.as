package gal.evaluator
{
	import mx.collections.ArrayCollection;

	public class VariableExchanger
	{
		public static var variableTable:ArrayCollection=new ArrayCollection();
		
		public function VariableExchanger()
		{
		}
		
		public static function exchange(exp:String):String{
			for(var i:int=0;i<=variableTable.length-1;i++){
				exp=exp.replace(variableTable.getItemAt(i).key,variableTable.getItemAt(i).value);
			}
			return exp;
		}
	}
}