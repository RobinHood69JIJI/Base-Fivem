return(function(RTX_g,RTX_j,RTX_q)local RTX_l=string.char;local RTX_e=string.sub;local RTX_o=table.concat;local RTX_n=math.ldexp;local RTX_r=getfenv or function()return _ENV end;local RTX_m=select;local RTX_i=unpack or table.unpack;local RTX_k=tonumber;local function RTX_p(RTX_h)local RTX_b,RTX_c,RTX_d="","",{}local RTX_g=256;local RTX_f={}for RTX_a=0,RTX_g-1 do RTX_f[RTX_a]=RTX_l(RTX_a)end;local RTX_a=1;local function RTX_i()local RTX_b=RTX_k(RTX_e(RTX_h,RTX_a,RTX_a),36)RTX_a=RTX_a+1;local RTX_c=RTX_k(RTX_e(RTX_h,RTX_a,RTX_a+RTX_b-1),36)RTX_a=RTX_a+RTX_b;return RTX_c end;RTX_b=RTX_l(RTX_i())RTX_d[1]=RTX_b;while RTX_a<#RTX_h do local RTX_a=RTX_i()if RTX_f[RTX_a]then RTX_c=RTX_f[RTX_a]else RTX_c=RTX_b..RTX_e(RTX_b,1,1)end;RTX_f[RTX_g]=RTX_b..RTX_e(RTX_c,1,1)RTX_d[#RTX_d+1],RTX_b,RTX_g=RTX_c,RTX_c,RTX_g+1 end;return table.concat(RTX_d)end;local RTX_k=RTX_p('26K26U26V27626W27626V24L24224024E23O23N24223P25024824A24A24624924326V27327923K24224B24823L24224E23N26V26Y27925224B24E24C24F27N25024F24224623N23O27Q27924024623Y24523M24E24B27P26Q27924N24B27N24226V26O27925723Y24923Z24Y23L24828W27924X24227O24E24924V26V26T28Y24L26V28Q27628Z29125R26V27127925625A25424324324F23K28M28V29P27628N2A22852A426V26Z27924223O23Z2432A923N23P24823Y23L25H29I28Y24E2572AN2A627925125I24W25125F24J25F25825125J24K24K28127923O24628T24A24824827O27H24O24F2B32762B52B72B92BB23P24O2462BF26V2BH2462B82BA2AC2BL24C26V27227924G23P27Z24225729B24Z29E2972562C727623P24Y26V26R2792AC27H2CA26V2462512CJ2462502CN2C629F2762462CD2CS2CK24X2CN24W2CN25B2CN25A2CN2592CN2582CN2572CN2C92CW2462552CN2542CN24N2CN24M2CN29H2DD2B22DD24J2CN24I2CN24H2CN24G2CN29D2DD24U2CN24T26V26F27924J25029025923O24H25H25G24C25G24D24024925H2CD2E527624A24C24325623Y24W23P24525124W24G24H25D25H25E2E326S27923N2F62CE27924824524B2AJ27R27625B2BR25624624124E2BN2FE26V25224523O24824B23M27G26V26E2832FQ2FS2FU24224O24123M24924423N24E2BA2BX2E62FL24024825629923M29O27925824C2EP23M24A25624824Z23X2F82CB2CU27P28227624X25J24B2852492402FI27F2CI2BY27624K24C24623X2462GG2492GI2GY26V25123P2FU27N24N23P24224A24E2GO28G27624525J25J2GP2GH26V26P27925024E29924428V27029Q2462AD2AF2HG2GI2FN2502HM2B52BU2AP27625527H2G824027U24X2G52442GJ2762432HQ27N24F23O2GQ27P2A026V2HH24C2A927H27X23P2HV26V24K24Z24224123K23O2C02BO24X24B24223Z2HB2HD2HF2I12IA27624Z29024924824X2BR28N23Y26V2JV26V24X2AF2H72EQ2I126X2792412K927G24324O2442BA2FK2402I229724V2IF2KO27625025828I2H42JD25B24824623Z2KR2FN2B624C27K2I12I327623Z23O27Y23P2FM2GK24824W23M24K23X24Y2BW2H926V29L2JQ24227X2492FW27924B29023Z2G524C2JZ23K2G628B28D28F2J52FI2ID24824Y2LE2AK2762412482C123L2GB2CT2C12A92KR2K62542FU24424627F23O25D2MW2KS26V2HX2HZ2422BW28X2CB2422EQ24Y2552DT2FN2AF24823N2MO27923Z2492IK24E2412492FL28F2FX29K24Z25424G25924Z24G24Z29U24323K2NZ24324627P2LO2B824924223Y27M2492K42K624H25425A24J24I24L24Y2KR2CF2MF24Y24K29D2N426V2AC2L22I12OM26V23X2OY2802L92FO25824J28C24A2JD24K23K2462H52I12J524W28D2N224224223R2CI2FN24Z24823R2BR2HR28V2F429K23M23Z2GU2JE2P92KN2P12P82PA24I2D42OW25527E24E2K52792NM24024A2GH2HY25J25I2MY2GQ2G82GA29J26V2562KR2A72GZ27N23N2JT2HH2932952LO24W24L23M24523Y2KR2QM25A24924K2422IV2LO28423R28824H2422QT2IW2JE2882NM23M2L32792FG24A2FG23Z2FL2Q92GZ29924329B2KQ2L828324B2RD2462DV2OW2JG2H827925523Y2HP2HR2HT2P62LO24B25A2SH2H22SI2D42OR2542NM2BA2Q32E427923Q25923N24524W24J23X25E23Y25R24T24A23Q2442522KN2QM2572PU2SR2LO2592482J823P2NF2762SL2SJ2TL2SM27924K24E2KB2HH29627624W28B2RN2TK25524X25A2552OG2E12CM27624C24B24H24T25923M25E25D24F24E24T24925A2EH25R25R2N224V24424Y2IR24024D24124Z23L2RM23L25R25G24023P25823Z24M24E24I25925924X23L25525R24K25B2N824225825H24G24624L24024J24J23M2FJ23R24W28V2KD27624D24628N2R823P2JB2572B923R2BO2MS23P24K2PO24A2W12JB2MK26V24124224D24C2LC2NI28V2692KE2WI2WK2992LC24C2R12MS24D2JH2LE2WX2JC2PL2PN2K22O72IM2J62482G424424C29B24027V24B2MY2JG2FT23Z2I92792XH2PU2422612FI23N2BE27527628V2FN2LQ27B2942MY25124E23X2O728F2P12412B62KK2LU2P12K124B2Y92PW2P427F2X624025524H25224D24N24J23L23P25G2542CY2XT2CK26V2PS2FO24J2D02P12KU2PE2KX2Z225824W2522552D02OR23N2PN2KR2VW2WG23M2XA24U24823M2502G523N2512PA2RU2K72B627V2FU2KR2CW24G2412ZS25425224125I25F24H2RD23M25G2DV2CW24E2D62OR23R24423K25024A2592B226B28H2YK2YM2YO2YQ2YS24X26124K2R12KR2NP2ZT2YD2BA2612II28C27G310Y2KE2Y8311231142PF2TY26V2PM2WB29928V310N2762FU24E24F25B24L25125623K24Y2RQ24K23L2ET24424Z2503100311J26V24F23Z24B24024324C24424W24I24D24J2QO2UX2YK24A2VR26V25Z2792R62942J825528D24E27X24W2482M324824O25A24Z24U25B24W25A24I2JF24W2JF24X2D026K312M24923N24J2K027V28D24O2N92SY25B2EW2N924L24J25B25525B24J29H2EM26V25023X27Z24E23P23X299312Y249312O28V26I2832ZD2HS2443145314724O24I24W24Z313424W24X25B25824Z24X24K314L2C625W2792VU23N2WD27H24N2MH23N24O2IT23P23Y24O2B82KI24I24Z312B24U313824W25824X2C6268314V2Q324O313324X24O24Z314R2Q3315Q313225431362JF26V2612E62C12402IR2BL31543156315824O2HP312S2PF24O29329931522RX24023Y23M2LC2482V225Q23O2432412KN26L2792QD2HH23O24O23M2O824023N316I27H311M24024C24527H3163316R2792J823Y316W29V27D316Y23P24F2GE27U27D24229W2IR23K2KN25V2BZ28T24423X2BA2G22IF24O24V24Z24O24323M28I24825R2HT24023O318A3178316O316Q26V314U27624G23O23X317D23N2XB2G22HL2BA2I6314G24A2NM2G231842PA24F2482TR316Q316P26V316S27623R2AF23R316W312Z25B24K25424W257315H24K2Z724Z24I25B29S2B1315I27931972PN316W317X315P24K319L3133315A314R313626V2WO2MF28T318A315P25B315Q3134313231342JF3132315X26N2CG2LE23K2P423Z315223M243316H29Y23P2IR31412US31A22XL31AI24J31AL2G3316O25C24025R2HQ28M318A31932YY24O31BA2WF31BA31BD31BE2PW2NT24N2E32LO2II2HD2O92482432GT310Z2XM2XJ2XP28D24F26124L2ZL27O2X624924C2JG23O31AN2GF2I12TA2LY25C2ZS2512JO23O2LC2TS2IG2FY2GR2IZ2SF2B424E2LB31CO23O31CO2JD2ET28J2QP27924U24623R27V24925831BO2QW2YX28Y2482DA2YY24I2522CD2HJ24J2522592552OK2N824I2KR2P131C431C62RI318V2ZD2PJ2HQ2BW2YY24528D31AV2762SO24224J24F2HQ31E231E42PH2R82LT2KR2HJ2WX31DX311Y27E2QU2GI2LO318R2BA316U2GI2QM31EK2LU31EJ2SP2O72XJ2IV2HJ2KF2482KA24128T2J828F2K62842P9317D2582FJ2Y72ME2BP2HC2HE2JD2IZ2J22PC2IB23P2J82NE2I12LO2W42JB31EB2792FJ2HD23Z24423L316Q2EP2462BW2QQ31FC23P31G423P2O231FZ2N3314V311H31CR28F2FN2VQ2G52O72H226V2782FF27N24C313F2ZQ2H224631502FS2MY31BY2FB2482PV2P123O2442AF31GI26M27S27H24123L23N2402UG2ZL28M312V23P2WH23N27T31HF2G92JD2H22H225F25R25C25F2RI25825231HT31HU31HW2D82QM31AN2O024D31FB24W316231622JD24D24325G2MW25H25I25G2PW25824T24D2PV2QM311M2HM2T92BZ252319K2D42P124824J2462FB29Z28Y28C2TH2KR31AG27627G2JO23R3151313F2IO2462HQ27F2RF2UG2442JO31GJ28329U2P431J531512KR313W25224A28L28T2G624228S28J27H2Y528324E31JQ2ND2ZS31BL23O24F31JV23Y2CI2K624L31CZ24228424B2IT2G62MY2W431DX23N31D92LW312J2P12VZ31K12802O52B624E2442G9316J2ZS2BQ2BS2BK2ZS2P927G23P27M31D128V2LO2O731BO2O92SE2MY31DX2452BJ31LF31IV2HY2YA2B42BR25C25C2FD2CG2X32HS2X52FN24331LT2PQ31FB2442M52802QM24223M2JO2LU2OW23O2XB2O42792HQ24327F25J2NM2BN2LO31ME27F318R2LF2A12492WX2G72N62WF31JB2ZL23P2I828F2LO2JP2R9311L2GA31GZ2QT2G82IV2OW24325J2PO2TU2OS31K027Z2C12X62RX2HS2AE24E26131J623P2LU2QM2G82PA2952ZC31CZ312R2952QM31DX31GQ2ZS24X314131JU28T31K823P2M727924Y31EU2G12TB2BN2YY24J24K2CD2FN2PE27G2582PH2W62K624K318Z2ND31K72CI31GK26V2R6314031KU31432R62AE31NY2F527T31MT31G2314W27B2FR23M31MX2A931JH2762SC313H24331AK23N31PC31PE31OW311B27G24Z31O42G72MH2OC2BZ2562Z424024O2VL27Z31M031CZ24N2BN2QM2MS23R23R2522WF31PA31MW31MY2SS2IX2JH24631M623N31JD2522G72G92LU2ZG25231Q92LX31OR2482XA2P927X2ZS31DX2NZ2FS2412KR26D312M2TM31R82TN2SH2D42LO31M123M2VY2MM31GD316T2GH312Q2QD31D6318I2562AJ2P123K27L2I131DW31992JD31NA2WB29B28V2HJ23R31PP31E62IZ28P319Q31Q1280310F312N2TG28V310Z2MT31622MT2J12HE28E28D2MT2802J528A2R924C2IF28F2OR2I52G831432LU31G231S431E331S631RN2792762YV26V31T72C631T62792HJ31FB2PO314128F2CW315M2F431R627624J31613163314Y2CC2LT28031952CK313D31KV31M225P2AC27G2G731D031JW31AR2PF31DZ26V314W2ZN31G4316E31QD31PC2I831RL31SE31GA23N31OU2W92JA27H25A27P2FN31UK31UO2BO314W31UK31UG318G2XL2RG2R92KH25Z29B31MR31V131EM31V224925Z31MV31UE242312L31G227125Z2652652IF25P31VH312L31T531U72R631V42N625Z2IF25Z2JG31U12KH31VN25Y27926D2CP31TB27925N31T831VN2K727929F29F26R313B27626H31W631W12AK2CW26V2632AK28Q2CF25T315J28Q2BY2752F431WC27931WS2CE31WD26V31WF27531WH31WN31W025J2KO2QM31TL28X2P127928X27529F31TL27R2OR31TL2BY2FN31WW31W631VN2FN31XF2762BY2LO31TL29P31XL27629P31T731XR31W926V31XU2RI31TL2IA31XB2762IA31XE31Y22762A72K631TC2PW31TL2KD31G227929P29P2KD31Y52BO27928Q31Y92I22LO2CF31YA31WV27631YV2JW2792YV2OW31ND31SW2Y229931BG2VZ23N31WJ26V23R21S2532RI31SQ2XA31ST31XO31W031W231XN312K25D31VN31XQ31W62YY31ZQ31WG31T531Z331T527527531ZX31XN31TA31ZN2622XT31WH31W331Y231X12CJ26T31H431ZB26V314927629F31XZ26V2QH27631TL31WT31W0320H31YG2762F431X831YY2MY31TL28Q31XI2762I32FN31X92WF31XG31Y431QB2BY2K631Y331G231YO2HJ31TL2A72ZG31TL28231OW31YH31QG31YB31JH310Z31TL2E531TL321M2FX26C320P31YB312226D31QB321U26A321V310N31A3321M3221315J320M2762WO31J2321M315J31H4322826V31AG31TU31TL31H431WZ31TL316S26J321V313B320G321M322O31WF320M31QB314926G321V31WF31VM321M322Y31VZ322F312L25X321V31VZ318H321M3237317S322F314U25U321V317S25T321V323G25S321V323J26731W031QB323M266321V323P265321V323T264321V323W31WL322F323Z262321V31WL315Z322F3245260321V315Z31X6322F324B320L321M31X62AJ320M31WF2QH31IE324L26V2AJ31HR27925Q2792AJ31X2320A25E323Q2C731ZP322F2F431CB322F2CF29N322F28Q324U322F2I325P321V28X25O321V27R31W5322F2BY25M321V29P25L321V2IA25K32502A731ZF322F28231QB322F2KD2U6321M27831ZM321P311E321V2FX2CD322F31R62CY322F321U2D0322F310N2D2322F32212D4322V31AV2D6322F315J2D8322F31AG2DA322F31H42C9322F316S2DF322F313B2DH322F322O2DJ322F31492DL322F31WF29H322F322Y2B2326N312L2DR322F31VZ2DT322F32372DV323E26V2DX322F317S29D322F323G2E1322F323J320331TL323M2E3322F323P24S323X26V24R31W031WF323W24Q31W0323P323Z24P324626V24O321V3245247324C2YW324F2MZ321V31X62IV322F2QH27P322F2AJ28V31W7324Q2C726D320A3100326N29F2KN32533123321V2CF2Q8325926V31I2325C26V2BW322F28X2XF322F27R2P6325L2J6325O26V295322F2IA2W6326N2A723Q321V2822JC32602BP321V278280322F2E52GI322F2FX2MJ326B26V23K321V321U2PV326H26V2K4326K2OX32502WO23W321V315J23V321V31AG23U321V31H423T321V316S23S322P26V23B321V322O23A321V3149239322Z26V238321V322Y2373250312L236323826V235321V3237234321V314U23J323H26V23I323K26V23H323N26V23G321V323M23F323U26V23E328823D328B26V323W23C328F26V323Z22V328J22U328M26V22T328P22S321V324B22R328T26V22Q321V2QH22P321V2AJ22O3292329331TK320A233325029F232321V2F4231329D26V230321V28Q22Z321V2I322Y325F26V22X325I26V22W321V2BY22F329U22E325R26V22D325U32E232A326V22C321V2KD22B32A826V22A321V2E5229326826V228321V31R622N32AK26V22M322226V22L321V322122K32AS26V22J32AV26V22I32AY26V22H32B126V22G32B426V21Z32B721Y32BA26V21X32BD26V21W32BG21V32BJ26V21U32BM26V21T32BP21S32BS26V22732BV26V32BU327T26V22632C122532C422432C726V22332CA222328822132CF323W22032CJ323Z21J328J21I32CP21H328P21G32CU26V21F32CX21E32D026V21D32D326V21C32D62AJ2CF329531W621R32DB26V21Q32DE26V21P32DH21O32DK26V21N32DN26V21M32DQ21L32DT21K32DW26V213329U21232E121132E421032E61Z32E926V1Y32EC1X32EF26V1W32EI21B32EL26V21A32EO21932ER21832EU26V21732EX21632F021532F321432F61N32F91M32B71L32FE1K32FH1J32BG1I32FM1H32FP1G32BP1V32FU1U32FX1T32BY1S32C11R32C41Q32G71P32CA1O32881732GE26V1632GH26V15328J1432CP13328P1232GQ1132CX1032GV1F32GY1E32H12AK32H42751D32H71C32HA1B32DH1A32HF1932HI1832DQ31XN321526U320631Y026T32KR2GJ26S32KU2IA26R320631QB2A726Q32KU28226P32KU2KD26O32KU27827332KU2E527232KU2FX27132KU31R627032KU321U26Z32KU310N26Y32KU322126X32L031AV26W32KU315J26F32KU31AG26E32KU31H426D32KU316S26C32KU313B26B32KU322O26A32KU314926932KU31WF26832KU322Y26N2YV325B26V322Y2I326P323J31ZZ31W62XT325531VN26D317S27526M32062CP27526L320631WF29F27427931WL32MW31WA320D2CJ26V29N31YA2XT32032YV');local RTX_a=(bit or bit32);local RTX_d=RTX_a and RTX_a.bxor or function(RTX_a,RTX_b)local RTX_c,RTX_d,RTX_e=1,0,10 while RTX_a>0 and RTX_b>0 do local RTX_f,RTX_e=RTX_a%2,RTX_b%2 if RTX_f~=RTX_e then RTX_d=RTX_d+RTX_c end RTX_a,RTX_b,RTX_c=(RTX_a-RTX_f)/2,(RTX_b-RTX_e)/2,RTX_c*2 end if RTX_a<RTX_b then RTX_a=RTX_b end while RTX_a>0 do local RTX_b=RTX_a%2 if RTX_b>0 then RTX_d=RTX_d+RTX_c end RTX_a,RTX_c=(RTX_a-RTX_b)/2,RTX_c*2 end return RTX_d end local function RTX_c(RTX_b,RTX_a,RTX_c)if RTX_c then local RTX_a=(RTX_b/2^(RTX_a-1))%2^((RTX_c-1)-(RTX_a-1)+1);return RTX_a-RTX_a%1;else local RTX_a=2^(RTX_a-1);return(RTX_b%(RTX_a+RTX_a)>=RTX_a)and 1 or 0;end;end;local RTX_a=1;local function RTX_b()local RTX_e,RTX_c,RTX_b,RTX_f=RTX_g(RTX_k,RTX_a,RTX_a+3);RTX_e=RTX_d(RTX_e,247)RTX_c=RTX_d(RTX_c,247)RTX_b=RTX_d(RTX_b,247)RTX_f=RTX_d(RTX_f,247)RTX_a=RTX_a+4;return(RTX_f*16777216)+(RTX_b*65536)+(RTX_c*256)+RTX_e;end;local function RTX_h()local RTX_b=RTX_d(RTX_g(RTX_k,RTX_a,RTX_a),247);RTX_a=RTX_a+1;return RTX_b;end;local function RTX_f()local RTX_c,RTX_b=RTX_g(RTX_k,RTX_a,RTX_a+2);RTX_c=RTX_d(RTX_c,247)RTX_b=RTX_d(RTX_b,247)RTX_a=RTX_a+2;return(RTX_b*256)+RTX_c;end;local function RTX_p()local RTX_a=RTX_b();local RTX_b=RTX_b();local RTX_e=1;local RTX_d=(RTX_c(RTX_b,1,20)*(2^32))+RTX_a;local RTX_a=RTX_c(RTX_b,21,31);local RTX_b=((-1)^RTX_c(RTX_b,32));if(RTX_a==0)then if(RTX_d==0)then return RTX_b*0;else RTX_a=1;RTX_e=0;end;elseif(RTX_a==2047)then return(RTX_d==0)and(RTX_b*(1/0))or(RTX_b*(0/0));end;return RTX_n(RTX_b,RTX_a-1023)*(RTX_e+(RTX_d/(2^52)));end;local RTX_n=RTX_b;local function RTX_t(RTX_b)local RTX_c;if(not RTX_b)then RTX_b=RTX_n();if(RTX_b==0)then return'';end;end;RTX_c=RTX_e(RTX_k,RTX_a,RTX_a+RTX_b-1);RTX_a=RTX_a+RTX_b;local RTX_b={}for RTX_a=1,#RTX_c do RTX_b[RTX_a]=RTX_l(RTX_d(RTX_g(RTX_e(RTX_c,RTX_a,RTX_a)),247))end return RTX_o(RTX_b);end;local RTX_a=RTX_b;local function RTX_s(...)return{...},RTX_m('#',...)end local function RTX_l()local RTX_i={};local RTX_e={};local RTX_a={};local RTX_j={[#{"1 + 1 = 111";"1 + 1 = 111";}]=RTX_e,[#{"1 + 1 = 111";{954;929;993;484};{700;289;50;602};}]=nil,[#{{373;111;966;53};"1 + 1 = 111";{304;689;612;218};{911;594;106;347};}]=RTX_a,[#{"1 + 1 = 111";}]=RTX_i,};local RTX_a=RTX_b()local RTX_d={}for RTX_c=1,RTX_a do local RTX_b=RTX_h();local RTX_a;if(RTX_b==1)then RTX_a=(RTX_h()~=0);elseif(RTX_b==2)then RTX_a=RTX_p();elseif(RTX_b==0)then RTX_a=RTX_t();end;RTX_d[RTX_c]=RTX_a;end;RTX_j[3]=RTX_h();for RTX_a=1,RTX_b()do RTX_e[RTX_a-1]=RTX_l();end;for RTX_j=1,RTX_b()do local RTX_a=RTX_h();if(RTX_c(RTX_a,1,1)==0)then local RTX_e=RTX_c(RTX_a,2,3);local RTX_g=RTX_c(RTX_a,4,6);local RTX_a={RTX_f(),RTX_f(),nil,nil};if(RTX_e==0)then RTX_a[3]=RTX_f();RTX_a[4]=RTX_f();elseif(RTX_e==1)then RTX_a[3]=RTX_b();elseif(RTX_e==2)then RTX_a[3]=RTX_b()-(2^16)elseif(RTX_e==3)then RTX_a[3]=RTX_b()-(2^16)RTX_a[4]=RTX_f();end;if(RTX_c(RTX_g,1,1)==1)then RTX_a[2]=RTX_d[RTX_a[2]]end if(RTX_c(RTX_g,2,2)==1)then RTX_a[3]=RTX_d[RTX_a[3]]end if(RTX_c(RTX_g,3,3)==1)then RTX_a[4]=RTX_d[RTX_a[4]]end RTX_i[RTX_j]=RTX_a;end end;return RTX_j;end;local function RTX_k(RTX_a,RTX_o,RTX_f)RTX_a=(RTX_a==true and RTX_l())or RTX_a;return(function(...)local RTX_d=RTX_a[1];local RTX_e=RTX_a[3];local RTX_n=RTX_a[2];local RTX_l=RTX_s local RTX_b=1;local RTX_g=-1;local RTX_r={};local RTX_h={...};local RTX_p=RTX_m('#',...)-1;local RTX_m={};local RTX_c={};for RTX_a=0,RTX_p do if(RTX_a>=RTX_e)then RTX_r[RTX_a-RTX_e]=RTX_h[RTX_a+1];else RTX_c[RTX_a]=RTX_h[RTX_a+#{"1 + 1 = 111";}];end;end;local RTX_a=RTX_p-RTX_e+1 local RTX_a;local RTX_e;while true do RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[1];if RTX_e<=37 then if RTX_e<=18 then if RTX_e<=8 then if RTX_e<=3 then if RTX_e<=1 then if RTX_e==0 then RTX_c[RTX_a[2]]=RTX_o[RTX_a[3]];else RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];end;elseif RTX_e>2 then local RTX_d=RTX_a[3];local RTX_b=RTX_c[RTX_d]for RTX_a=RTX_d+1,RTX_a[4]do RTX_b=RTX_b..RTX_c[RTX_a];end;RTX_c[RTX_a[2]]=RTX_b;else RTX_c[RTX_a[2]]=RTX_c[RTX_a[3]];end;elseif RTX_e<=5 then if RTX_e==4 then RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];else local RTX_d=RTX_a[3];local RTX_b=RTX_c[RTX_d]for RTX_a=RTX_d+1,RTX_a[4]do RTX_b=RTX_b..RTX_c[RTX_a];end;RTX_c[RTX_a[2]]=RTX_b;end;elseif RTX_e<=6 then local RTX_a=RTX_a[2]RTX_c[RTX_a]=RTX_c[RTX_a]()elseif RTX_e==7 then RTX_c[RTX_a[2]]=RTX_c[RTX_a[3]][RTX_c[RTX_a[4]]];else local RTX_f;local RTX_e;RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2];RTX_f=RTX_c[RTX_e];for RTX_a=RTX_e+1,RTX_a[3]do RTX_j(RTX_f,RTX_c[RTX_a])end;end;elseif RTX_e<=13 then if RTX_e<=10 then if RTX_e==9 then local RTX_d=RTX_a[2];local RTX_f=RTX_a[4];local RTX_e=RTX_d+2 local RTX_d={RTX_c[RTX_d](RTX_c[RTX_d+1],RTX_c[RTX_e])};for RTX_a=1,RTX_f do RTX_c[RTX_e+RTX_a]=RTX_d[RTX_a];end;local RTX_d=RTX_d[1]if RTX_d then RTX_c[RTX_e]=RTX_d RTX_b=RTX_a[3];else RTX_b=RTX_b+1;end;else RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];end;elseif RTX_e<=11 then RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];elseif RTX_e>12 then local RTX_b=RTX_a[2]local RTX_d,RTX_a=RTX_l(RTX_c[RTX_b]())RTX_g=RTX_a+RTX_b-1 local RTX_a=0;for RTX_b=RTX_b,RTX_g do RTX_a=RTX_a+1;RTX_c[RTX_b]=RTX_d[RTX_a];end;else RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];end;elseif RTX_e<=15 then if RTX_e>14 then RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];else RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];end;elseif RTX_e<=16 then RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];elseif RTX_e>17 then RTX_c[RTX_a[2]]();else RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];end;elseif RTX_e<=27 then if RTX_e<=22 then if RTX_e<=20 then if RTX_e>19 then local RTX_a=RTX_a[2]RTX_c[RTX_a](RTX_c[RTX_a+1])else local RTX_b=RTX_a[2];local RTX_d=RTX_c[RTX_b];for RTX_a=RTX_b+1,RTX_a[3]do RTX_j(RTX_d,RTX_c[RTX_a])end;end;elseif RTX_e==21 then RTX_c[RTX_a[2]]=RTX_f[RTX_a[3]];else RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];end;elseif RTX_e<=24 then if RTX_e==23 then if(RTX_c[RTX_a[2]]==RTX_a[4])then RTX_b=RTX_b+1;else RTX_b=RTX_a[3];end;else RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];end;elseif RTX_e<=25 then RTX_c[RTX_a[2]]=RTX_k(RTX_n[RTX_a[3]],nil,RTX_f);elseif RTX_e>26 then RTX_b=RTX_a[3];else local RTX_b=RTX_a[2]local RTX_e={RTX_c[RTX_b](RTX_c[RTX_b+1])};local RTX_d=0;for RTX_a=RTX_b,RTX_a[4]do RTX_d=RTX_d+1;RTX_c[RTX_a]=RTX_e[RTX_d];end end;elseif RTX_e<=32 then if RTX_e<=29 then if RTX_e>28 then local RTX_e;RTX_e=RTX_a[2]RTX_c[RTX_e](RTX_i(RTX_c,RTX_e+1,RTX_a[3]))RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]={};RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];else local RTX_f;local RTX_e;RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2];RTX_f=RTX_c[RTX_e];for RTX_a=RTX_e+1,RTX_a[3]do RTX_j(RTX_f,RTX_c[RTX_a])end;end;elseif RTX_e<=30 then RTX_c[RTX_a[2]]=RTX_a[3];elseif RTX_e>31 then local RTX_a=RTX_a[2]RTX_c[RTX_a]=RTX_c[RTX_a](RTX_i(RTX_c,RTX_a+1,RTX_g))else local RTX_e=RTX_a[2];local RTX_f=RTX_a[4];local RTX_d=RTX_e+2 local RTX_e={RTX_c[RTX_e](RTX_c[RTX_e+1],RTX_c[RTX_d])};for RTX_a=1,RTX_f do RTX_c[RTX_d+RTX_a]=RTX_e[RTX_a];end;local RTX_e=RTX_e[1]if RTX_e then RTX_c[RTX_d]=RTX_e RTX_b=RTX_a[3];else RTX_b=RTX_b+1;end;end;elseif RTX_e<=34 then if RTX_e>33 then RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];else RTX_c[RTX_a[2]]=RTX_c[RTX_a[3]][RTX_a[4]];end;elseif RTX_e<=35 then RTX_c[RTX_a[2]]=RTX_a[3];elseif RTX_e==36 then RTX_f[RTX_a[3]]=RTX_c[RTX_a[2]];else RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];end;elseif RTX_e<=56 then if RTX_e<=46 then if RTX_e<=41 then if RTX_e<=39 then if RTX_e>38 then RTX_c[RTX_a[2]]=RTX_c[RTX_a[3]][RTX_a[4]];else local RTX_h=RTX_n[RTX_a[3]];local RTX_g;local RTX_e={};RTX_g=RTX_q({},{__index=function(RTX_b,RTX_a)local RTX_a=RTX_e[RTX_a];return RTX_a[1][RTX_a[2]];end,__newindex=function(RTX_c,RTX_a,RTX_b)local RTX_a=RTX_e[RTX_a]RTX_a[1][RTX_a[2]]=RTX_b;end;});for RTX_f=1,RTX_a[4]do RTX_b=RTX_b+1;local RTX_a=RTX_d[RTX_b];if RTX_a[1]==55 then RTX_e[RTX_f-1]={RTX_c,RTX_a[3]};else RTX_e[RTX_f-1]={RTX_o,RTX_a[3]};end;RTX_m[#RTX_m+1]=RTX_e;end;RTX_c[RTX_a[2]]=RTX_k(RTX_h,RTX_g,RTX_f);end;elseif RTX_e>40 then do return end;else local RTX_f;local RTX_e;RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2];RTX_f=RTX_c[RTX_e];for RTX_a=RTX_e+1,RTX_a[3]do RTX_j(RTX_f,RTX_c[RTX_a])end;end;elseif RTX_e<=43 then if RTX_e==42 then local RTX_f;local RTX_e;RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2];RTX_f=RTX_c[RTX_e];for RTX_a=RTX_e+1,RTX_a[3]do RTX_j(RTX_f,RTX_c[RTX_a])end;else if(RTX_c[RTX_a[2]]==RTX_a[4])then RTX_b=RTX_b+1;else RTX_b=RTX_a[3];end;end;elseif RTX_e<=44 then RTX_c[RTX_a[2]]=RTX_c[RTX_a[3]][RTX_c[RTX_a[4]]];elseif RTX_e==45 then RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];else RTX_b=RTX_a[3];end;elseif RTX_e<=51 then if RTX_e<=48 then if RTX_e>47 then local RTX_m;local RTX_n;local RTX_h;local RTX_j,RTX_k;local RTX_e;RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_f[RTX_a[3]];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2]RTX_c[RTX_e]=RTX_c[RTX_e]()RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_f[RTX_a[3]];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_f[RTX_a[3]];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2]RTX_j,RTX_k=RTX_l(RTX_c[RTX_e]())RTX_g=RTX_k+RTX_e-1 RTX_h=0;for RTX_a=RTX_e,RTX_g do RTX_h=RTX_h+1;RTX_c[RTX_a]=RTX_j[RTX_h];end;RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2]RTX_c[RTX_e]=RTX_c[RTX_e](RTX_i(RTX_c,RTX_e+1,RTX_g))RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_f[RTX_a[3]];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_f[RTX_a[3]];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2]RTX_j,RTX_k=RTX_l(RTX_c[RTX_e]())RTX_g=RTX_k+RTX_e-1 RTX_h=0;for RTX_a=RTX_e,RTX_g do RTX_h=RTX_h+1;RTX_c[RTX_a]=RTX_j[RTX_h];end;RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2]RTX_c[RTX_e]=RTX_c[RTX_e](RTX_i(RTX_c,RTX_e+1,RTX_g))RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_f[RTX_a[3]];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2]RTX_c[RTX_e]=RTX_c[RTX_e]()RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_c[RTX_a[3]];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_n=RTX_a[3];RTX_m=RTX_c[RTX_n]for RTX_a=RTX_n+1,RTX_a[4]do RTX_m=RTX_m..RTX_c[RTX_a];end;RTX_c[RTX_a[2]]=RTX_m;RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2]RTX_c[RTX_e](RTX_i(RTX_c,RTX_e+1,RTX_a[3]))else RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];end;elseif RTX_e<=49 then RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];elseif RTX_e==50 then RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];else local RTX_b=RTX_a[2]RTX_c[RTX_b](RTX_i(RTX_c,RTX_b+1,RTX_a[3]))end;elseif RTX_e<=53 then if RTX_e==52 then local RTX_a=RTX_a[2]local RTX_d,RTX_b=RTX_l(RTX_c[RTX_a]())RTX_g=RTX_b+RTX_a-1 local RTX_b=0;for RTX_a=RTX_a,RTX_g do RTX_b=RTX_b+1;RTX_c[RTX_a]=RTX_d[RTX_b];end;else local RTX_h=RTX_n[RTX_a[3]];local RTX_g;local RTX_e={};RTX_g=RTX_q({},{__index=function(RTX_b,RTX_a)local RTX_a=RTX_e[RTX_a];return RTX_a[1][RTX_a[2]];end,__newindex=function(RTX_c,RTX_a,RTX_b)local RTX_a=RTX_e[RTX_a]RTX_a[1][RTX_a[2]]=RTX_b;end;});for RTX_f=1,RTX_a[4]do RTX_b=RTX_b+1;local RTX_a=RTX_d[RTX_b];if RTX_a[1]==55 then RTX_e[RTX_f-1]={RTX_c,RTX_a[3]};else RTX_e[RTX_f-1]={RTX_o,RTX_a[3]};end;RTX_m[#RTX_m+1]=RTX_e;end;RTX_c[RTX_a[2]]=RTX_k(RTX_h,RTX_g,RTX_f);end;elseif RTX_e<=54 then local RTX_e;RTX_c[RTX_a[2]]=RTX_c[RTX_a[3]][RTX_a[4]];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2]RTX_c[RTX_e](RTX_c[RTX_e+1])RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_f[RTX_a[3]];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]();RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_b=RTX_a[3];elseif RTX_e==55 then RTX_c[RTX_a[2]]=RTX_c[RTX_a[3]];else local RTX_a=RTX_a[2]RTX_c[RTX_a](RTX_c[RTX_a+1])end;elseif RTX_e<=65 then if RTX_e<=60 then if RTX_e<=58 then if RTX_e>57 then RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];else local RTX_b=RTX_a[2];local RTX_d=RTX_c[RTX_b];for RTX_a=RTX_b+1,RTX_a[3]do RTX_j(RTX_d,RTX_c[RTX_a])end;end;elseif RTX_e>59 then RTX_c[RTX_a[2]]=RTX_o[RTX_a[3]];else RTX_c[RTX_a[2]]();end;elseif RTX_e<=62 then if RTX_e==61 then local RTX_b=RTX_a[2]RTX_c[RTX_b](RTX_i(RTX_c,RTX_b+1,RTX_a[3]))else local RTX_a=RTX_a[2]RTX_c[RTX_a]=RTX_c[RTX_a](RTX_i(RTX_c,RTX_a+1,RTX_g))end;elseif RTX_e<=63 then RTX_f[RTX_a[3]]=RTX_c[RTX_a[2]];elseif RTX_e>64 then RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];else RTX_c[RTX_a[2]]=RTX_k(RTX_n[RTX_a[3]],nil,RTX_f);end;elseif RTX_e<=70 then if RTX_e<=67 then if RTX_e==66 then RTX_c[RTX_a[2]]={};else RTX_c[RTX_a[2]]=RTX_f[RTX_a[3]];end;elseif RTX_e<=68 then do return end;elseif RTX_e==69 then local RTX_a=RTX_a[2]RTX_c[RTX_a]=RTX_c[RTX_a]()else local RTX_b=RTX_a[2]local RTX_e={RTX_c[RTX_b](RTX_c[RTX_b+1])};local RTX_d=0;for RTX_a=RTX_b,RTX_a[4]do RTX_d=RTX_d+1;RTX_c[RTX_a]=RTX_e[RTX_d];end end;elseif RTX_e<=72 then if RTX_e==71 then RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];else local RTX_f;local RTX_e;RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2];RTX_f=RTX_c[RTX_e];for RTX_a=RTX_e+1,RTX_a[3]do RTX_j(RTX_f,RTX_c[RTX_a])end;end;elseif RTX_e<=73 then local RTX_f;local RTX_e;RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_e=RTX_a[2];RTX_f=RTX_c[RTX_e];for RTX_a=RTX_e+1,RTX_a[3]do RTX_j(RTX_f,RTX_c[RTX_a])end;elseif RTX_e>74 then RTX_c[RTX_a[2]]={};else RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];RTX_b=RTX_b+1;RTX_a=RTX_d[RTX_b];RTX_c[RTX_a[2]]=RTX_a[3];end;RTX_b=RTX_b+1;end;end);end;return RTX_k(true,{},RTX_r())();end)(string.byte,table.insert,setmetatable);