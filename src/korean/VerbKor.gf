concrete VerbKor of Verb = CatKor ** open ResKor, AdverbKor, Prelude in {


lin

-----
-- VP
  -- : V -> VP
  UseV = ResKor.useV ;

  --  : V2 -> VP ; -- be loved
  -- PassV2 = ResKor.passV2 ;

  -- : VPSlash -> VP ;
  -- ReflVP = ResKor.insertRefl ;

  -- : VV  -> VP -> VP ;
  -- ComplVV vv vp = let vc = vp.vComp in case vv.vvtype of {
  --
  --   } ;

  -- : VS  -> S  -> VP ;
  -- ComplVS vs s =
  --   let vps = useV vs ;
  --       subord = SubjS {s=""} s ;
  --    in vps ** {} ;

{-
  -- : VQ -> QS -> VP ;
  ComplVQ vq qs = ;

  -- : VA -> AP -> VP ;  -- they become red
  ComplVA va ap = ResKor.insertComp (CompAP ap).s (useV va) ;

-}
--------
-- Slash
{-
  -- : V2 -> VPSlash
  SlashV2a = useVc ;

  -- : V3 -> NP -> VPSlash ; -- give it (to her)
  -- : V3 -> NP -> VPSlash ; -- give (it) to her
  Slash2V3,
  Slash3V3 = \v3 -> insertComp (useVc3 v3) ;

  -- : V2S -> S  -> VPSlash ;  -- answer (to him) that it is good
  SlashV2S v2s s =
    let vps = useVc v2s ;
        subord = SubjS {s=""} s ;
     in vps ** {obj = } ;


  -- : V2V -> VP -> VPSlash ;  -- beg (her) to go
  SlashV2V v2v vp = ;

  -- : V2Q -> QS -> VPSlash ;  -- ask (him) who came
  SlashV2Q v2q qs = ;

  -- : V2A -> AP -> VPSlash ;  -- paint (it) red
   -- TODO: is "red" plural in "paint them red"?
  SlashV2A v2a ap = useVc v2a ** {
    aComp = \\_ => (CompAP ap).aComp ! Sg3 Masc
  } ;

  -- : VPSlash -> NP -> VP
  ComplSlash = insertComp ;
-}
{-
  -- : VV  -> VPSlash -> VPSlash ;
                  -- Just like ComplVV except missing subject!
  SlashVV vv vps = ComplVV vv vps ** { missing = vps.missing ;
                                       post = vps.post } ;

  -- : V2V -> NP -> VPSlash -> VPSlash ; -- beg me to buy
  SlashV2VNP v2v np vps =
    ComplVV v2v vps **
      { missing = vps.missing ;
        post = vps.post ;
        iobj = np ** { s = np.s ! Dat } } ;

-}

  -- : Comp -> VP ;
  UseComp comp = UseCopula ** comp ;
{-
  -- : VP -> Adv -> VP ;  -- sleep here
  AdvVP = insertAdv ;

  -- : VPSlash -> Adv -> VPSlash ;  -- use (it) here
  AdvVPSlash = insertAdv ;

  -- : VP -> Adv -> VP ;  -- sleep , even though ...
  ExtAdvVP vp adv =  ;

  -- : AdV -> VP -> VP ;  -- always sleep
  AdVVP adv vp = vp ** {adv = adv} ;


  -- : AdV -> VPSlash -> VPSlash ;  -- always use (it)
  AdVVPSlash adv vps = vps ** { adv = adv.s ++ vps.adv } ;
-}
  -- : VP -> Prep -> VPSlash ;  -- live in (it)
  -- VPSlashPrep vp prep =
  --   let adv = prepNP prep emptyNP
  --    in insertAdv vp adv ;




--2 Complements to copula

-- Adjectival phrases, noun phrases, and adverbs can be used.

  -- : AP  -> Comp ;
  CompAP ap = emptyComp ** {
    aComp = ap.s ;
    } ;

  -- : CN  -> Comp ;
  CompCN cn = emptyComp ** {
    aComp = cn.s ! Bare ; -- TODO: num. I am [a house that sleeps here] vs.  we are [houses that sleep here]
    } ;

  --  NP  -> Comp ;
  CompNP np = emptyComp ** {
    nComp = np.s ! Bare ;
    } ;

  -- : Adv  -> Comp ;
  CompAdv adv = emptyComp ** {
    aComp = adv.s ;
    } ;

  -- : VP -- Copula alone;
  UseCopula = useV copula ;

}
