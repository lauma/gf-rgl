--# -path=.:abstract:common:prelude

concrete LexiconLav of Lexicon = CatLav ** open
  ParadigmsLav,
  StructuralLav,
  --(E = ExtraLav),
  ResLav,
  Prelude
  in {

flags
  optimize = values ;
  coding = utf8 ;

lin
  airplane_N = mkN "lidmašīna" ;
  answer_V2S = mkV2S (mkV "atbildēt" third_conjugation) dat_Prep that_Subj ; -- toP = 'answer to [Person]' = 'atbildēt [kam?]'
  apartment_N = mkN "dzīvoklis" ;
  apple_N = mkN "ābols" ;
  art_N = mkN "māksla" ;
  ask_V2Q = mkV2Q (mkV "vaicāt" second_conjugation) dat_Prep ;
  baby_N = mkN "bērns" ;
  bad_A = mkA "slikts" ;
  bank_N = mkN "banka" ;
  beautiful_A = mkA "skaists" ;
  become_VA = mkVA (mkV "kļūt" "kļūstu" "kļuvu") ;
  beer_N = mkN "alus" ;
  beg_V2V = mkV2V (mkV "lūgt" "lūdzu" "lūdzu") acc_Prep ;
  big_A = mkA "liels" ;
  bike_N = mkN "divritenis" ;
  bird_N = mkN "putns" ;
  black_A = mkA "melns" ;
  blue_A = mkA "zils" ;
  boat_N = mkN "laiva" ;
  book_N = mkN "grāmata" ;
  boot_N = mkN "zābaks" ;
  boss_N = mkN "boss" ;
  boy_N = mkN "puika" ;
  bread_N = mkN "maize" ;
  break_V2 = mkV2 (mkV "lauzt" "laužu" "lauzu") acc_Prep ;
  broad_A = mkA "plats" ;
  brother_N2 = mkN2 (mkN "brālis") gen_Prep True; -- Ģenitīvs nav kā piederība, bet kā relācija: "Jāņa/tēva brālis", bet ne "mans brālis" (?)
  brown_A = mkA "brūns" ;
  butter_N = mkN "sviests" ;
  buy_V2 = mkV2 (mkV "pirkt" "pērku" "pirku") acc_Prep ;
  camera_N = mkN "fotoaparāts" ;
  cap_N = mkN "cepure" ;
  car_N = mkN "automašīna" ;
  carpet_N = mkN "paklājs" ;
  cat_N = mkN "kaķis" ;
  ceiling_N = mkN "griesti" ;
  chair_N = mkN "krēsls" ;
  cheese_N = mkN "siers" ;
  child_N = mkN "bērns" ;
  church_N = mkN "baznīca" ;
  city_N = mkN "pilsēta" ;
  clean_A = mkA "tīrs" ;
  clever_A = mkA "gudrs" ;
  close_V2 = mkV2 (mkV "aizvērt" "aizveru" "aizvēru") acc_Prep ;
  coat_N = mkN "mētelis" ;
  cold_A = mkA "auksts" ;
  come_V = mkV "nākt" "nāku" "nācu" ;
  computer_N = mkN "dators" ;
  country_N = mkN "valsts" ;
  cousin_N = mkN "brālēns" ;  -- FIXME: brālēns/māsīca angļiem ir vienāds...
  cow_N = mkN "govs" feminine ;
  die_V = mkV "nomirt" "nomirstu" "nomiru";
  dirty_A = mkA "netīrs" ;
  distance_N3 = mkN3 (mkN "attālums") from_Prep to_Prep ; -- no / līdz
  doctor_N = mkN "ārsts" ;
  dog_N = mkN "suns" ;
  door_N = mkN "durvis" feminine ;
  drink_V2 = mkV2 (mkV "dzert" "dzeru" "dzēru") acc_Prep;
  --easy_A2V = mkA2V (regA "easy") forP ; -- FIXME: nav tādas konstrukcijas latviešu val.
  eat_V2 = mkV2 (mkV "ēst" "ēdu" "ēdu") acc_Prep ;
  empty_A = mkA "tukšs" ;
  enemy_N = mkN "ienaidnieks" ;
  factory_N = mkN "rūpnīca" ;
  father_N2 = mkN2 (mkN "tēvs") gen_Prep True ;
  fear_VS = mkVS (mkV "baidīties" third_conjugation) that_Subj ;
  find_V2 = mkV2 (mkV "atrast" "atrodi" "atradu") acc_Prep ;
  fish_N = mkN "zivs" feminine ;
  floor_N = mkN "grīda" ;
  forget_V2 = mkV2 (mkV "aizmirst" "aizmirstu" "aizmirsu") acc_Prep ;
  fridge_N = mkN "ledusskapis" ;
  friend_N = mkN "draugs" ;
  fruit_N = mkN "auglis" ;
  fun_AV = mkAV (mkA "priecīgs") ;
  garden_N = mkN "dārzs" ;
  girl_N = mkN "meitene" ;
  glove_N = mkN "cimds" ;
  gold_N = mkN "zelts" ;
  good_A = mkA "labs" ;
  go_V = mkV "iet" ;
  green_A = mkA "zaļš" ;
  harbour_N = mkN "osta" ;
  hate_V2 = mkV2 (mkV "ienīst" "ienīstu" "ienīdu") acc_Prep ;
  hat_N = mkN "cepure" ;
  hear_V2 = mkV2 (mkV "dzirdēt" third_conjugation) acc_Prep ;
  hill_N = mkN "kalns" ;
  hope_VS = mkVS (mkV "cerēt" third_conjugation) that_Subj ;
  horse_N = mkN "zirgs" ;
  hot_A = mkA "karsts" ;
  house_N = mkN "māja" ;
  important_A = mkA "svarīgs" ;
  industry_N = mkN "industrija" ;
  iron_N = mkN "dzelzs" ;
  king_N = mkN "karalis" ;
  know_V2 = mkV2 (mkV "zināt" third_conjugation) acc_Prep ;
  -- FIXME: šitādas lietas jārisina ar valencēm nevis 2 vienādiem vārdiem
  know_VQ = mkVQ (mkV "zināt" third_conjugation) ;
  know_VS = mkVS (mkV "zināt" third_conjugation) that_Subj ;
  lake_N = mkN "ezers" ;
  lamp_N = mkN "lampa" ;
  learn_V2 = mkV2 (mkV "mācīties" third_conjugation) acc_Prep ;
  leather_N = mkN "āda" ;
  leave_V2 = mkV2 (mkV "atstāt" "atstāju" "atstāju") acc_Prep ;
  like_V2 = mkV2 (mkV "patikt" "patīku" "patiku") nom_Prep Dat ;
  listen_V2 = mkV2 (mkV "klausīties" third_conjugation) acc_Prep ;
  live_V = mkV "dzīvot" second_conjugation ;
  long_A = mkA "garš" ;
  lose_V2 = mkV2 (mkV "pazaudēt" second_conjugation) acc_Prep ;
  love_N = mkN "mīlestība" ;
  love_V2   = mkV2 (mkV "mīlēt" third_conjugation) acc_Prep ;
  man_N = mkN "vīrietis" ;
  married_A2 = mkA2 (mkA (mkV "precēties" third_conjugation) Act) with_Prep ;
  meat_N = mkN "gaļa" ;
  milk_N = mkN "piens" ;
  moon_N = mkN "mēness" ;
  mother_N2 = mkN2 (mkN "māte") gen_Prep True ;
  mountain_N = mkN "kalns" ;
  music_N = mkN "mūzika" ;
  narrow_A = mkA "šaurs" ;
  new_A = mkA "jauns" ;
  newspaper_N = mkN "avīze" ;
  oil_N = mkN "eļļa" ;  -- reku parādās klasiskās problēmas - eļļa vai nafta?
  old_A = mkA "vecs" ;
  open_V2 = mkV2 (mkV "atvērt" "atveru" "atvēru") acc_Prep ;
  paint_V2A = mkV2A (mkV "krāsot" second_conjugation) acc_Prep ;
  paper_N = mkN "papīrs" ;
  paris_PN = mkPN "Parīze" ;
  peace_N = mkN "miers" ;
  pen_N = mkN "pildspalva" ;
  planet_N = mkN "planēta" ;
  plastic_N = mkN "plastmasa" ;
  play_V2 = mkV2 (mkV "spēlēt" second_conjugation) acc_Prep ;
  policeman_N = mkN "policists" ;
  priest_N = mkN "mācītājs" ;
  probable_AS = mkAS (mkA "iespējams") ;
  queen_N = mkN "karaliene" ;
  radio_N = mkN "radio" ;
  rain_V0 = mkV "līt" "līstu" "liju" ;
  read_V2 = mkV2 (mkV "lasīt" third_conjugation) acc_Prep ;
  red_A = mkA "sarkans" ;
  religion_N = mkN "reliģija" ;
  restaurant_N = mkN "restorāns" ;
  river_N = mkN "upe" ;
  rock_N = mkN "akmens" ;
  roof_N = mkN "jumts" ;
  rubber_N = mkN "gumija" ;
  run_V =  mkV "skriet" "skrienu" "skrēju" ;
  say_VS = mkVS (mkV "sacīt" third_conjugation) that_Subj ;
  school_N = mkN "skola" ;
  science_N = mkN "zinātne" ;
  sea_N = mkN "jūra" ;
  seek_V2 = mkV2 (mkV "meklēt" second_conjugation) acc_Prep ;
  see_V2 = mkV2 (mkV "redzēt" third_conjugation) acc_Prep ;
  sell_V3 = mkV3 (mkV "pārdot" "pārdodu" "pārdevu") acc_Prep dat_Prep ;
  send_V3 = mkV3 (mkV "sūtīt" third_conjugation) acc_Prep dat_Prep ;
  sheep_N = mkN "aita" ;
  ship_N = mkN "kuģis" ;
  shirt_N = mkN "krekls" ;
  shoe_N = mkN "kurpe" ;
  shop_N = mkN "veikals" ;
  short_A = mkA "īss" ;
  silver_N = mkN "sudrabs" ;
  sister_N = mkN "māsa" ; -- TODO: kāpēc nav kā brālis ar parametru?
  sleep_V = mkV "gulēt";
  small_A = mkA "mazs" ;
  snake_N = mkN "čūska" ;
  sock_N = mkN "zeķe" ;
  speak_V2 = mkV2 (mkV "sacīt" third_conjugation) acc_Prep ;  -- TODO: citas valences tur tak
  star_N = mkN "zvaigzne" ;
  steel_N = mkN "tērauds" ;
  stone_N = mkN "akmens" ;
  stove_N = mkN "plīts" ;
  student_N = mkN "students" ;
  stupid_A = mkA "dumjš" ;
  sun_N = mkN "saule" ;
  switch8off_V2 = mkV2 (mkV "izslēgt" "izslēdzu" "izslēdzu") acc_Prep ;
  switch8on_V2 = mkV2 (mkV "ieslēgt" "ieslēdzu" "ieslēdzu") acc_Prep ;
  table_N = mkN "galds" ;
  talk_V3 = mkV3 (mkV "runāt" second_conjugation) with_Prep par_Prep ;  -- ar ko, par ko
  teacher_N = mkN "skolotājs" ;
  teach_V2 = mkV2 (mkV "mācīt" third_conjugation) acc_Prep ;
  television_N = mkN "televīzija" ;
  thick_A = mkA "biezs" ;
  thin_A = mkA "plāns" ;
  train_N = mkN "vilciens" ;
  travel_V = mkV "ceļot" second_conjugation ;
  tree_N = mkN "koks" ;
  --trousers_N = mkN "bikses" ;
  ugly_A = mkA "neglīts" ;
  understand_V2 = mkV2 (mkV "saprast" "saprotu" "sapratu") acc_Prep ;
  university_N = mkN "universitāte" ;
  village_N = mkN "village" ;
  wait_V2 = mkV2 (mkV "gaidīt" third_conjugation) acc_Prep ;
  walk_V = mkV "staigāt" second_conjugation ;
  warm_A = mkA "silts" ;
  war_N = mkN "karš" ;
  watch_V2 = mkV2 (mkV "skatīties" third_conjugation) acc_Prep ;
  water_N = mkN "ūdens" ;
  white_A = mkA "balts" ;
  window_N = mkN "logs" ;
  wine_N = mkN "vīns" ;
  win_V2 = mkV2 (mkV "uzvarēt" third_conjugation) acc_Prep ;
  woman_N = mkN "sieviete" ;
  wonder_VQ = mkVQ (mkV "brīnīties" third_conjugation) ;
  wood_N = mkN "koks" ;
  write_V2 = mkV2 (mkV "rakstīt" third_conjugation) acc_Prep ;
  yellow_A = mkA "dzeltens" ;
  young_A = mkA "jauns" ;
  do_V2 = mkV2 (mkV "darīt" third_conjugation) acc_Prep ;
  now_Adv = mkAdv "tagad" ;
  already_Adv = mkAdv "jau" ;
  song_N = mkN "dziesma" ;
  add_V3 = mkV3 (mkV "pielikt" "pielieku" "pieliku") acc_Prep dat_Prep ;
  number_N = mkN "skaitlis" ;
  put_V2 = mkV2 (mkV "likt" "lieku" "liku") acc_Prep ;
  stop_V = mkV "apstāties" "apstājos" "apstājos";
  jump_V = mkV "lēkt" "lecu" "lēcu" ;

  --left_Ord = mkOrd "left" ;
  --right_Ord = mkOrd "right" ;
  far_Adv = mkAdv "tālu" ;
  correct_A = mkA "pareizs" ;
  dry_A = mkA "sauss" ;
  dull_A = mkA "neass" ;  -- garlaicīgs?
  full_A = mkA "pilns" ;
  heavy_A = mkA "smags" ;
  near_A = mkA "tuvs" ;
  rotten_A = mkA "sapuvis" ;
  round_A = mkA "apaļš" ;
  sharp_A = mkA "ass" ;
  smooth_A = mkA "gluds" ;
  straight_A = mkA "taisns" ;
  wet_A = mkA "slapjš" ;
  wide_A = mkA "plats" ;
  animal_N = mkN "dzīvnieks" ;
  ashes_N = mkN "pelni" ; -- FIXME: plural only? kā to norāda?
  back_N = mkN "mugura" ;
  bark_N = mkN "miza" ;
  belly_N = mkN "vēders" ;
  blood_N = mkN "asinis" feminine ;
  bone_N = mkN "kauls" ;
  breast_N = mkN "krūts" feminine ;
  cloud_N = mkN "mākonis" ;
  day_N = mkN "diena" ;
  dust_N = mkN "putekļi" ;
  ear_N = mkN "auss" feminine ;
  earth_N = mkN "zeme" ;
  egg_N = mkN "ola" ;
  eye_N = mkN "acs" feminine ;
  fat_N = mkN "tauki" ;
  feather_N = mkN "spalva" ;
  fingernail_N = mkN "nags" ;
  fire_N = mkN "uguns" feminine ;
  flower_N = mkN "puķe" ;
  fog_N = mkN "migla" ;
  foot_N = mkN "pēda" ;
  forest_N = mkN "mežs" ;
  grass_N = mkN "zāle" ;
  guts_N = mkN "zarnas" ;
  hair_N = mkN "mati" ;
  hand_N = mkN "roka" ;
  head_N = mkN "galva" ;
  heart_N = mkN "sirds" feminine ;
  horn_N = mkN "rags" ;
  husband_N = mkN "vīrs" ;  --TODO: kāpēc nav parametrs tāpat kā tēvam?
  ice_N = mkN "ledus" ;
  knee_N = mkN "ceļgals" ;
  leaf_N = mkN "lapa" ;
  leg_N = mkN "kāja" ;
  liver_N = mkN "aknas" ;
  louse_N = mkN "uts" feminine ;
  mouth_N = mkN "mute" ;
  name_N = mkN "vārds" ;
  neck_N = mkN "kakls" ;
  night_N = mkN "nakts" feminine ;
  nose_N = mkN "deguns" ;
  person_N = mkN "persona" ;
  rain_N = mkN "lietus" ;
  road_N = mkN "ceļš" ;
  root_N = mkN "sakne" ;
  rope_N = mkN "virve" ;
  salt_N = mkN "sāls" ;
  sand_N = mkN "smiltis" ;
  seed_N = mkN "sēkla" ;
  skin_N = mkN "āda" ;
  sky_N = mkN "debesis" ;
  smoke_N = mkN "dūmi" ;
  snow_N = mkN "sniegs" ;
  stick_N = mkN "nūja" ;
  tail_N = mkN "aste" ;
  tongue_N = mkN "mēle" ;
  tooth_N = mkN "zobs";
  wife_N = mkN "sieva" ;
  wind_N = mkN "vējš" ;
  wing_N = mkN "spārns" ;
  worm_N = mkN "tārps" ;
  year_N = mkN "gads" ;

  blow_V = mkV "pūst" "pūšu" "pūtu" ;
  breathe_V = mkV "elpot" second_conjugation ;
  burn_V = mkV "degt" "degu" "degu" ;
  dig_V = mkV "rakt" "roku" "raku" ;
  fall_V = mkV "krist" "krītu" "kritu" ;
  float_V = mkV "peldēt" third_conjugation ;
  flow_V = mkV "plūst" "plūstu" "plūdu" ;
  fly_V = mkV "lidot" second_conjugation ;
  freeze_V = mkV "sasalt" "sasalstu" "sasalu" ;
  give_V3 = mkV3 (mkV "dot" "dodu" "devu") acc_Prep dat_Prep ;  -- dot ko? kam?
  laugh_V = mkV "smieties" "smejos" "smējos" ;
  lie_V = mkV "gulties" "guļos" "gūlos" ;
  play_V = mkV "spēlēt" second_conjugation ;
  sew_V = mkV "šūt" "šuju" "šuvu" ;
  sing_V = mkV "dziedāt" third_conjugation ;
  sit_V = mkV "sēdēt" third_conjugation ;
  smell_V = mkV "smirdēt" third_conjugation ;
  spit_V = mkV "spļaut" "spļauju" "spļāvu" ;
  stand_V = mkV "stāvēt" third_conjugation ;
  swell_V = mkV "piebriest" "piebriestu" "piebriedu" ;
  swim_V = mkV "peldēt" third_conjugation ;
  think_V = mkV "domāt" second_conjugation ;
  turn_V = mkV "griezties" "griežos" "griezos" ;
  vomit_V = mkV "vemt" "vemju" "vēmu" ;

  bite_V2 = mkV2 (mkV "kost" "kožu" "kodu") dat_Prep ;
  count_V2 = mkV2 (mkV "skaitīt" third_conjugation) acc_Prep ;
  cut_V2 = mkV2 (mkV "griezt" "griežu" "griezu") acc_Prep ;
  fear_V2 = mkV2 (mkV "baidīties" third_conjugation) from_Prep ;
  fight_V2 = mkV2 (mkV "cīnīties" third_conjugation) with_Prep ;
  hit_V2 = mkV2 (mkV "sist" "situ" "situ") dat_Prep ;
  -- TODO: atkal valences, var arī akuzatīvu ar bik citu nozīmi
  hold_V2 = mkV2 (mkV "turēt" third_conjugation) acc_Prep ;
  hunt_V2 = mkV2 (mkV "medīt" second_conjugation) acc_Prep ;
  kill_V2 = mkV2 (mkV "nogalināt" third_conjugation) acc_Prep ;
  pull_V2 = mkV2 (mkV "vilkt" "velku" "vilku") acc_Prep ;
  push_V2 = mkV2 (mkV "stumt" "stumju" "stūmu") acc_Prep ;
  rub_V2 = mkV2 (mkV "berzt" "beržu" "berzu") acc_Prep ;
  scratch_V2 = mkV2 (mkV "kasīt" third_conjugation) acc_Prep ;
  split_V2 = mkV2 (mkV "sadalīt" third_conjugation) acc_Prep ;
  squeeze_V2 = mkV2 (mkV "saspiest" "saspiežu" "saspiedu") acc_Prep ;
  stab_V2 = mkV2 (mkV "sadurt" "saduru" "sadūru") acc_Prep ;
  suck_V2 = mkV2 (mkV "sūkt" "sūcu" "sūcu") acc_Prep ;
  throw_V2 = mkV2 (mkV "mest" "metu" "metu") acc_Prep ;
  tie_V2 = mkV2 (mkV "piesiet" "piesienu" "piesēju") acc_Prep ;
  wash_V2 = mkV2 (mkV "mazgāt" second_conjugation) acc_Prep ;
  wipe_V2 = mkV2 (mkV "slaucīt" third_conjugation) acc_Prep ;

  --other_A = regA "other" ;

  grammar_N = mkN "gramatika" ;
  language_N = mkN "valoda" ;
  rule_N = mkN "likums" ;

  john_PN = mkPN "Jānis" ;

  question_N = mkN "jautājums" ;
  ready_A = mkA "gatavs" ;
  reason_N = mkN "iemesls" ;
  today_Adv = mkAdv "šodien" ;
  uncertain_A = mkA "nepārliecināts" ;

  -- TODO: kāpēc neizdodas ar ExtraLav?
  -- Eng arī dara šitā:
  oper par_Prep = mkPrep "par" Acc Dat ;

}
