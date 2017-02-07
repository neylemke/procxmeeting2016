strlatex2 = "\\procpaper[switch=45,\[IndentingNewLine]title={`title`}, 
     author={`author`}, 
  index={`indexstr`}]\n{`file`}\n\n";
stringarea = "\\session{`area`}\n\n";

brnames[str_] :=
 Module[{lis}, lis = StringSplit[str, " "];
   "\\index{" <> Last[lis] <> ", " <> 
    StringTake[StringJoin[(# <> " ") & /@ lis[[1 ;; -2]]], 1 ;; -2]] <>
   "}"
CapitalizeNames[str_] := 
 StringReplace[
  StringRiffle[
   Capitalize[
    StringSplit[ToLowerCase[StringReplace[convstr@str, "," -> ", "]], 
     " "]], " "], {" De " -> "de ", " Da " -> " da ", 
   " Do " -> " do "}]
geraPoster[data_] := 
 StringTemplate[strlatex2][<|"title" -> data[[4]], 
   "author" -> 
    CapitalizeNames[data[[5]] ] <> "," <> CapitalizeNames@data[[6]] , 
   "indexstr" -> 
    StringJoin[
     brnames /@ 
      StringSplit[
       CapitalizeNames@data[[5]] <> "," <> CapitalizeNames@data[[6]], 
       ","]], "file" -> (ToString@data[[1]] )|>]
convstr[str_] := 
 URLDecode[URLEncode[str, CharacterEncoding -> "ISO8859-1"]]
liscodsposters = {"ED", "GE", "PE", "PR", "SB", "SW", "TP"};
liscodsfull = {"FP"};


prefix = "/Users/neylemke/Google\ \
Drive/burocracia/ab3c/proceedings-x-meeting2016/";

lisposter = 
  Import[prefix <> "codes_poster_session_20170206_corrigido.csv", 
   "TSV"];
lisposter = Rest[lisposter];
lisareas = Union[lisposter[[All, 3]]];


strfile = 
  StringJoin@
   Table[StringTemplate[stringarea][<|"area" -> area|>] <> 
     StringJoin[
      geraPoster /@ Select[lisposter, #[[3]] == area &]], {area, 
     lisareas}];
Export[prefix <> "posters.tex", strfile, "String"]
