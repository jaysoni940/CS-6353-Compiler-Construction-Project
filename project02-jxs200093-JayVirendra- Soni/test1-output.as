class testClass {
	int testInt;
	bool testBool;
	char testChar;
	float testFloat;
	void testNestedIfs()
	{
		if (true)
		{
			if ((~ true))
			{
				if (false)
				{
					read(x);
				}
				else
				{
					if ((yes == false))
					{
						print(2.0);
					}
					else
					{
						x = 23;
					}
				}
			}
			else
			{
				y = 37;
			}
		}
		return;
	}

	void testNestedIfsInWhiles(int x[], int y)
	{
		int newTestVal;
		bool thisWorks = true;
		final char theMan = '\'';
		float testDec = 3.14;
		newTestVal = 4;
		testInt = 5;
		if (thisWorks)
		{
			while (true)
			{
				while (false)
				{
					if ((newTestVal > 3))
					{
						if ((y > 3))
						{
							if ((x < 2))
							{
								read(x);
							}
							else
							{
								read(thisName);
							}
						}
						else
						{
							if ((34 == 2))
							{
								read(x2);
							}
							else
							{
								read(x3);
							}
						}
					}
					else
					{
						print(x);
					}
				}
			}
		}
		print(theMan);
		{
		};
		return;
	};

	float testWhileInNestedElse(char salmon)
	{
		if (true)
		{
			while (theMan)
			{
				if ((superSalmon == upstream))
				{
					read(x);
				}
				else
				{
					while (theWoman)
					{
						if ((streetFighter2 == good))
						{
							virtuaFighter = bad;
						}
						else
						{
							read(salmon);
						}
					}
				}
			}
		}
		return 3.14159;
	}

	char testMatchedIfInUnmatchedIfWhile(bool confusingName)
	{
		if (true)
		{
			while (false)
			{
				if (superMan)
				{
					while (batMan)
					{
						if ((spiderMan + 3))
						{
							read(x);
						}
						else
						{
							print(thisShouldBeTotallyNested);
						}
					}
				}
			}
		}
		if (true)
		{
			if (false)
			{
				while (theman)
				{
					if (theman2)
					{
						read(x);
					}
					else
					{
						print(x);
					}
				}
			}
		}
		if (true)
		{
			while (themanPart2)
			{
				if (bacon)
				{
					print(enjoyTheSmell);
				}
				else
				{
					print(KevinBacon);
				}
			}
		}
		else
		{
			wellhowabout = that;
		}
	}

	void letsTestPrecedences()
	{
		a = (((a + 5) < 6) ? (a + 2) : (a - 2));
		a = ((a || b) ? (c || d) : (a || b));
		a = ((b || (c && d)) || e);
		a = ((b && (c == d)) && e);
		a = ((b && (c <> d)) && e);
		a = ((((b <> c) == d) <> e) == f);
		a = (((((b < c) == (d > e)) == (f <= g)) == (h >= i)) && ((((b < c) <> (d > e)) <> (f <= g)) <> (h >= i)));
		a = ((((((((b > c) < d) >= e) <= f) < g) <= h) > i) >= j);
		a = ((((((b + c) > (d + e)) < (f + g)) >= (h + i)) <= (j + k)) == (((((b - c) > (d - e)) < (f - g)) >= (h - i)) <= (j - k)));
		a = ((((a + b) - c) + d) - e);
		a = ((((b + c) * (d + e)) / (f + g)) >= (((b - c) * (d - e)) / (f - g)));
		a = ((((b * c) / d) * e) / f);
		a = (((((((+ b) * (+ c)) / ((+ d) + (- b))) * (- c)) / ((- d) + (~ b))) * (~ c)) / (~ d));
		a = (+ (- (~ (- (+ (~ (- (- (+ (~ c))))))))));
		a = (float)(b || (char)c);
		a = ((5 * ((6 + 2))) / 7);
		a++;
		a--;
		a = (a[((~ b) * 6)] || (true && false));
		a = ((("testing\"thisString" + '\'') + '\n') + "and these chars \n");
	}

}
