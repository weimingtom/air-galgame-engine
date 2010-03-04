package gal.evaluator
{
	public class ExpressionEvaluator
	{
		private var OPTR:Array = new Array();//运算符栈
		private var OPND:Array = new Array();//运算数栈
		static var L = 1;//小于
		static var G = 2;//大于
		static var S = 3;//等于
		static var E = 4;//错误
		private var optrPriority:Array = new Array();//运算符优先关系表
		public function ExpressionEvaluator ()
		{//优先关系表初始化
			optrPriority["+"]={"+":G,"-":G,"*":L,"/":L,"%":L,"(":L,")":G};
			optrPriority["-"]={"+":G,"-":G,"*":L,"/":L,"%":L,"(":L,")":G};
			optrPriority["*"]={"+":G,"-":G,"*":G,"/":G,"%":G,"(":L,")":G};
			optrPriority["/"]={"+":G,"-":G,"*":G,"/":G,"%":G,"(":L,")":G};
			optrPriority["%"]={"+":G,"-":G,"*":G,"/":G,"%":G,"(":L,")":G};
			optrPriority["("]={"+":L,"-":L,"*":L,"/":L,"%":L,"(":L,")":S};
			optrPriority[")"]={"+":G,"-":G,"*":G,"/":G,"%":G,"(":E,")":G};
		}
		//塞入操作符/操作数
		//输入：操作符/操作数 ， 输入类型（num/optr）
		public function input (op,type)
		{
			var theta:String;
			var numA:Number;
			var numB:Number;
			if (type == "num")
			{
				OPND.unshift (Number(op));
			}
			else
			{
				//trace (op);
				while (op != ";" || OPTR.length != 0)
				{
					switch (compareOptr(OPTR[0],op))
					{
						case L :
							OPTR.unshift (op);
							return;
						case S :
							OPTR.shift ();
							return;
						case G :
							theta=OPTR.shift();
							numB=OPND.shift();
							numA=OPND.shift();
							OPND.unshift (operate(numA,theta,numB));
							break;
						default :
							trace ("Error:Operator");
							trace(OPTR);
							trace(op);
							return;
					}
				}
			}
		}
		//取出最终结果并清空栈
		public function outputAndClean ()
		{
			var re:Number = OPND[0];
			clean ();
			return re;
		}
		//清空栈
		public function clean ()
		{
			OPTR = new Array();
			OPND = new Array();
		}
		//比较老的和新的操作符的优先级
		private function compareOptr (theOld,theNew)
		{
			if (OPTR.length == 0)
			{
				return L;
			}
			if (optrPriority[theOld][theNew] != undefined)
			{
				return optrPriority[theOld][theNew];
			}
			if (theNew == ";")
			{
				return G;
			}
			trace ("Error: Bad Operator.");
			return "Error: Bad Operator.";
		}
		//执行运算
		private function operate (numA,theta,numB)
		{
			var re:Number=0;
			switch (theta)
			{
				case "+" :
					re=numA + numB;
					break;
				case "-" :
					re=numA - numB;
					break;
				case "*" :
					re=numA * numB;
					break;
				case "/" :
					re=numA / numB;
					break;
				case "%" :
					re=numA % numB;
					break;
				default :
					break;
			}
			return re;
		}
	}

}