package AGE.evaluator
{
	import mx.collections.ArrayCollection;

	/**
	* 变量带入
	* @author 银鸑鷟(SliverPhoenix)
	*/
	public class VariableExchanger
	{
		/**
		* 变量集合
		*/
		public static var variableTable:ArrayCollection=new ArrayCollection();
		
		public function VariableExchanger()
		{
		}
		
		/**
		* 在表达式中带入变量。
		* @param exp 需要带入变量的逻辑表达式，例如："(_a>2)&&false"。
		* @return 带入变量值之后的表达式。
		*/
		public static function exchange(exp:String):String{
			for(var i:int=0;i<=variableTable.length-1;i++){
				exp=exp.replace(variableTable.getItemAt(i).key,variableTable.getItemAt(i).value);
			}
			return exp;
		}
	}
}