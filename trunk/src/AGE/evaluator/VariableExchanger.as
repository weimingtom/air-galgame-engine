package AGE.evaluator
{
	import mx.collections.ArrayCollection;

	/**
	* ��������
	* @author ����
	*/
	public class VariableExchanger
	{
		/**
		* ��������
		*/
		public static var variableTable:ArrayCollection=new ArrayCollection();
		
		public function VariableExchanger()
		{
		}
		
		/**
		* �ڱ��ʽ�д��������
		* @param exp ��Ҫ����������߼����ʽ�����磺"(_a>2)&&false"��
		* @return �������ֵ֮��ı��ʽ��
		*/
		public static function exchange(exp:String):String{
			for(var i:int=0;i<=variableTable.length-1;i++){
				exp=exp.replace(variableTable.getItemAt(i).key,variableTable.getItemAt(i).value);
			}
			return exp;
		}
	}
}