fForm[x_, n_Integer : 16] :=
  Module[{neff, res},
   neff = If[x < 0, n, n + 1];
   If[Abs[x] < 10^-1,
    res = ScientificForm[SetPrecision[N[x], neff], neff, 
        NumberFormat -> (Row[{#1, "E", 
             If[#3 == "", "0", ToString[ToExpression[#3]]]}] &)] // 
       ToString,
    res = ToString@SetPrecision[N[x, 20], 20];
    res = StringReplace[res, "-0." -> "-."];
    res = StringTake[res, Min[n + 2, StringLength[res]]]
   ];
   res
  ];
