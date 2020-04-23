resource ParamHun = ParamX ** open Prelude in {

--------------------------------------------------------------------------------
-- Generic

oper
  if_then_Pol : Polarity -> Str -> Str -> Str = \p,t,f ->
    case p of {Pos => t ; Neg => f } ;

--------------------------------------------------------------------------------
-- Phonology

--------------------------------------------------------------------------------
-- Morphophonology

--------------------------------------------------------------------------------
-- Quant

param
  QuantType = Possessive | Article ;

oper
  -- standard trick to prevent "a one car"
  isIndefArt : {qt : QuantType ; objdef : ObjDef} -> Bool = \quant ->
    case <quant.qt,quant.objdef> of {
      <Article,Indef> => True ;
      _               => False
    } ;

--------------------------------------------------------------------------------
-- Nouns

param

  NumCaseStem =
    SgNom | SgAccStem | SgSup -- These may use 2-3 different stems
  | PlAcc  -- May have irregular vowel in suffix
  | SgInsStem -- Instrumental and translative: -v after vowels
  | SgStem  -- Rest of the cases in Sg
  | PlStem  -- Rest of the cases in Pl
  | PossdSg_PossrP3 -- Possessed item is Sg, possessor is Sg or Pl P3
  | PossdSg_PossrPl1 -- Possessed item is Sg, possessor is Pl P1
  | PossdPl -- Possessed item in plural, any possessor.
  ;         -- Rest of poss forms use SgAccStem


  Case =
    Nom | Acc | Dat
  | Ill | Ine | Ela | All | Ade | Abl | Sub | Sup | Del -- Locatives
  | Cau  -- Causal-final 'for the purpose of, for the reason that'
  | Ins  -- Instrumental
  | Tra  -- Translative
  -- | Ess | Ter | For
  -- | Tem -- Temporal, e.g. hatkor ‘six o’clock’ (from hat ‘6’)
  ;

  SubjCase = SCNom | SCDat ; -- Limited set of subject cases

  Possessor = NoPoss | Poss Number Person ;

oper

  caseTable : (x1,_,_,_,_,_,_,_,_,_,_,_,_,_,x15 : Str) -> Case=>Str =
   \n,a,d,il,ine,el,al,ad,ab,sub,sup,del,ca,ins,tra -> table {
      Nom => n ;
      Acc => a ;
      Dat => d ;
      Ins => ins ;
      Tra => tra ;
      Sup => sup ;
      Sub => sub ;
      Del => del ;
      Ill => il ;
      Ine => ine ;
      Ela => el ;
      All => al ;
      Ade => ad ;
      Abl => ab ;
      Cau => ca } ;

  sc2case : SubjCase -> Case = \sc ->
    case sc of {
      SCNom => Nom ;
      SCDat => Dat
    } ;

--------------------------------------------------------------------------------
-- Numerals

param
  DForm = Unit  | Ten  ;
  Place = Indep | Attrib ;

  CardOrd = NOrd | NCard ; -- Not used yet

  NumType = NoNum | IsDig | IsNum ;

oper
  isNum : {numtype : NumType} -> Bool = \nt -> case nt.numtype of {
    NoNum => False ;
    _     => True
    } ;
--------------------------------------------------------------------------------
-- Adjectives


--------------------------------------------------------------------------------
-- Conjunctions



--------------------------------------------------------------------------------
-- Verbs
param

  -- For object agreement in V2
  ObjDef =
      Def
    | Indef ;

  VForm =
      VInf
    | VPres Person Number ;

oper

  agr2vf : Person*Number -> VForm = \pn ->
    case <pn.p1,pn.p2> of {
      <p,n> => VPres p n
    } ;

--------------------------------------------------------------------------------
-- Clauses

-- param

  -- ClType =
  --     Statement
  --   | PolarQuestion
  --   | WhQuestion
  --   | Subord ;

}
