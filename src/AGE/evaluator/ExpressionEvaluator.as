package AGE.evaluator
{
	public class ExpressionEvaluator
	{
		public static function eval(exp:String):Number{
			var a:String = exp;
			a = "(" + a.replace(/[^\d.+-*\/()]+/g,"") + ")";
			while (/\([^()]*\)/.test(a)){
				a = a.replace(/\(([^()]*)\)/g,function(s, b){
					while (/[*\/]/.test(b)){
						b = b.replace(/([\d.]+)([*\/])([\d.]+)/g,function(c, m, l, n){
							var i:Number = parseFloat(m);
							var j:Number = parseFloat(n);
							return l=="*" ? i*j : i/j;
						})
					}
					while (/[+-]/.test(b)){
						b = b.replace(/([\d.]+)([+-])([\d.]+)/g,function(c, m, l, n){
							var i:Number = parseFloat(m);
							var j:Number = parseFloat(n);
							return l=="+" ? i+j : i-j;
						})
					}
					return b;
				})
			}
			
			return Number(a);
		}
	}
	


}