10 clr:print"{clr}"
20 poke59468,14
120 printspc(15)"{rvon}QUEST{rvof}"
130 print"{down}   One day I was walking through"
140 print"the woods, and I found a cave entrance"
150 print"covered with brush."
160 print"{down}{rght}{rght}People say that a pirate hid his      treasure in these woods"
170 print"but no one has ever found it."
180 print"it may still be there for all I know."
200 forer=1to2000:next
400 readm9,t1,t2
500 dimw(65),m(8,42)
510 fori=1tom9
520 readn
530 ifi=nthen550
540 print"data problem"i,n:stop
550 forj=1to6
560 readm(j,i)
570 next
580 next
900 gosub7500
1000 n=5:m0=0:m6=0:t=t1:p=0:p1=0
1010 forj=1tom9:w(j)=0:next
1020 print
1030 gosub8000
1400 m0=m0+1
1410 gosub6000
1420 gosub2000
1430 gosub4000
1500 ift>0then1400
1510 ifn<>5then1400
1700 gosub3000
1710 print"{clr}{down}{down}{down}{down}{rght}{rght}{rght}{rght}{rght}{rvon}you won!!!!"
1720 print"{down}{down}{rght}{rght}{rght}you got the treasure out in";m0;"moves,"
1730 print"{down}{rght}{rght}{rght}{rght}and got";s;"points."
1740 goto9999
2000 ift<>nthenreturn
2010 ift<0thenreturn
2020 ifm6+5>m0thenreturn
2200 print"{down}do you want to take it with you";:a$="yn":a2=2:gosub5000
2210 ona1goto2300,2400
2220 print"{rght}well...":qw=500:gosub50000
2230 goto2200
2300 t=-1
2310 print"{down}ok, lets leave.":return
2400 print"{down}let's go explore some more":m6=m0:return
3000 s=0
3010 ift=-1thens=s+5
3020 ifp=1thens=s+10
3030 forj=2tom9:s=s+w(j):next
3040 return
4000 ifn=t2thenreturn
4010 ifp=1thenreturn
4030 ift1=t2thenreturn
4040 ift<>-1 thenreturn
4050 ifn=16thenp=160
4060 ifp1>0thenp1=p1+1
4070 ifn=3thenp1=p1+1
4080 ifp1<15thenreturn
4100 print"{down}{down}then as you are walking along.."
4110 qw=600:gosub50000
4120 print"{rvon}the pirate leaps out at you.{rvof}"
4130 print"he takes his treasure back and runs"
4140 print"off into the shadows..cackling"
4150 p=1:t=t2:return
5000 inputq$
5010 fora1=1toa2:ifleft$(q$,1)=mid$(a$,a1,1)thenreturn
5020 next
5030 a1=a2+1:return
6000 n9=n:n8=0:gosub7000
6010 ifn=1then6030
6020 n0=n:a0=a1
6030 print:i=m(a1,n)
6035 ifi=-2theni=n9
6040 ifi<500then6080
6050 i=i-500
6060 forj=1to5000:next
6070 goto6035
6080 oni/100goto6100,6120
6090 n=i:goto6200
6100 n=i-100
6110 ift=-1thenn=n+1
6115 goto6200
6120 n=i-200
6130 ift=-1thenn=n+p
6200 ifn<>1then6230
6210 forj=1to6:m(j,n)=2:next
6220 m(7-a0,n)=n0
6230 ifn8<>2thengosub8000
6240 w(n)=1:n8=n
6250 ifm(1,n)<>-2thenreturn
6260 i=m(6,n)
6270 ifm(4,n)>(int(rnd(5)*100))theni=m(5,n)
6280 ifm(2,n)>(int(rnd(5)*100))theni=m(3,n)
6281 ifd<>0thenprint"          debug bounce to";i
6285 goto6035
6290 return
7000 print"{down}           which way";:a$="neudwsp":a2=7:gosub5000
7010 ifa1<8then7100
7020 print"which way do you want to go?":gosub7500
7030 gosub8000
7040 goto7000
7100 ifa1<7thenreturn
7110 gosub3000
7120 print"{down}you have "s" points!":goto7000
7340 return
7500 print"{down}{down}a voice says:"
7510 print"{down}try north south east west up down score"
7540 return
8000 i=int(n/5):j=n-5*i+1
8100 oni+1goto8200,8210,8220,8230,8240,8250,8260,8270,8280,8290
8200 onjgoto9000,9010,9020,9030,9040
8210 onjgoto9050,9060,9070,9080,9090
8220 onjgoto9100,9110,9120,9130,9140
8230 onjgoto9150,9160,9170,9180,9190
8240 onjgoto9200,9210,9220,9230,9240
8250 onjgoto9250,9260,9270,9280,9290
8260 onjgoto9300,9310,9320,9330,9340
8270 onjgoto9350,9360,9370,9380,9390
8280 onjgoto9400,9410,9420,8300,8300
8300 ift<>nthen8350
8310 print"the treasure is here!!!!!"
8350 ift<>t2thenreturn
8360 ift1=t2thenreturn
8370 ift1<>nthenreturn
8400 print"there is a note on the wall.."
8410 print"{down}{rvon}pirates never leave their treasure in   the same place":return
9000 data42,23,12
9010 data1,0,0,0,0,0,0
9012 print"{down}It's a dead end.":goto8300
9020 data2,-2,101,-2,0,0,0
9021 print"{down}I can't go that way."
9022 goto8300
9030 data3,33,2,1,10,106,4
9031 print"{down}A tunnel goes north-south."
9032 print"There is an opening to the west
9039 goto8300
9040 data4,3,30,2,11,2,1
9041 print"{down}I am at the edge of a pit!"
9042 goto8300
9050 data5,8,8,15,10,8,16
9051 print"{down}I am outside of a cave."
9052 print"go south to enter."
9059 goto8300
9060 data6,16,3,2,10,2,2
9061 print"{down}I am in the Gnome King's house!
9062 print"fortunatly he is not in right now."
9069 goto8300
9070 data7,-2,101,-2,0,0,0
9071 print"{down}The Gnome King is in get out {rvon}fast{rvof}!!!"
9079 goto8300
9080 data8,18,18,15,10,18,9
9081 print"{down}I am lost in the woods."
9089 goto8300
9090 data9,-2,33,5,1,0,-2
9099 goto8300
9100 data10,-2,101,-2,0,0,0
9101 print"{down}I can't dig through rock."
9109 goto8300
9110 data11,1,13,4,2,1,2
9111 print"{down}I am at the bottom of a pit."
9112 print"There is a little stream flowing over   the rocks"
9119 goto8300
9120 data12,36,2,1,2,1,2
9121 print"{down}I am at a dead end."
9129 goto8300
9130 data13,2,37,2,1,11,14
9131 print"{down}It's wide here, there's a patch of soot where a torch has been."
9132 print"jagged rocks hang above you."
9139 goto8300
9140 data14,13,1,19,2,31,31
9141 print"{down}I am in a canyon, up on the wall is the message."
9142 print"{rvon} BILBO{$a0}WAS{$a0}HERE! "
9149 goto8300
9150 data15,-2,101,-2,0,0,0
9151 print"{down}People can't fly."
9159 goto8300
9160 data16,5,33,2,10,1,106
9161 print"{down}the ceiling is low,there is a tight     tunnel to the east."
9162 print"you can go south or west there is light to   the north."
9169 goto8300
9170 data17,-2,101,-2,0,0,0
9171 print"{down}The tunnel is too small."
9172 print"I can't get through with the treasure."
9179 goto8300
9180 data18,-2,101,8,0,0,0
9181 print"{down}I haven't found the cave yet."
9189 goto8300
9190 data19,224,2,2,14,1,42
9191 print"{down}I am at the top of a canyon.            Below is the message."
9192 print"{rvon} BILBO{$a0}WAS{$a0}HERE! "
9199 goto8300
9200 data20,226,1,2,2,25,2
9201 print"{down}I am at the north side of a deep chasm  I can't see the bottom."
9209 goto8300
9210 data21,1,226,2,2,38,25
9211 print"{down}I am in Xandu. Below me runs            the Sacred River Alph.
9212 print"through caverns unmeasurable by man to asunless Sea.
9219 goto8300
9220 data22,-2,33,13,50,29,30
9229 goto8300
9230 data23,2,1,2,31,2,2
9231 print"{down}I am above the Gillotine room, on the ledge."
9239 goto8300
9240 data24,-2,101,19,0,0,0
9241 print"{down}I hear the {rvon}giant{rvof}!! go back"
9249 goto8300
9250 data25,21,20,2,2,1,19
9251 print"{down}I am in the giant's room. leave before  gets back!"
9259 goto8300
9260 data26,-2,65,-2,50,11,14
9261 print"{down}I am in the Quest Research & Developement area {rvon}no visitors{rvof}"
9269 goto8300
9270 data27,2,40,2,2,20,21
9271 print"{down}I am in the crystal palace."
9272 print"The walls resonate with awsome music."
9279 goto8300
9280 data28,-2,60,221,50,14,19
9289 goto8300
9290 data29,2,42,2,13,1,1
9291 print"{down}I am at the top of a giant stalagmite"
9292 print"I could slide down,"
9293 print"but I couldn't climb back up."
9299 goto8300
9300 data30,34,34,2,1,4,2
9301 print"{down}I am in a Grotto"
9302 print"there is a book on the floor"
9303 print"it is titled'Jane's Fighting Ships'"
9304 print"it is dated 1763."
9309 goto8300
9310 data31,14,14,23,2,1,2
9311 print"{down}I am in the guillotine room"
9312 print"a sharp rock teeters on the ledge above."
9319 goto8300
9320 data32,-2,101,516,0,0,0
9321 print"{down}I am in a chute!"
9322 print"scrambling down the rocks"
9323 print"no way to stop! {rvon}HANG{$a0}ON!!!{rvof}"
9329 goto8300
9330 data33,2,1,2,1,116,3
9331 print"{down}The tight tunnel turns the corner."
9339 goto8300
9340 data34,1,35,2,1,30,30
9341 print"{down}I am in a little twisty maze."
9349 goto8300
9350 data35,2,1,2,37,34,36
9351 print"{down}I am in a little twisting maze."
9359 goto8300
9360 data36,35,2,1,37,34,12
9361 print"{down}I am in a twisting little maze."
9369 goto8300
9370 data37,2,1,35,2,13,2
9371 print"{down}I am in a twisty little maze."
9379 goto8300
9380 data38,2,21,2,116,1,2
9381 print"{down}I am in a pre-historic dwelling."
9382 print"On the wall are drawings of Bison."
9383 print"On the floor are bones of some ancient  ritual."
9384 print"A small tunnel goes through the floor."
9389 goto8300
9390 data39,2,40,2,32,21,26
9391 print"{down}I am in a black hole."
9392 print"The gravity is overwhelming!!!"
9399 goto8300
9400 data40,40,40,2,2,40,41
9401 print"{down}I am in the labrynthe."
9409 goto8300
9410 data41,40,40,40,2,40,39
9411 print"{down}I am in the labrynthe."
9412 print"It's dark in here!"
9419 goto8300
9420 data42,28,28,28,28,28,28
9421 print"{down}I am in the Ashram."
9422 print"The incense is heavy,"
9423 print"all directions seem the same."
9429 goto8300
9999 poke59468,12
49000 goto60000
50000 forws=1toqw*2:next:return
60000 rem*********************
60010 rem********quest********
60020 rem*******9/29/80*******
60025 rem*********************
60030 rem******written by*****
60040 rem****roger chaffee****
60045 rem*********************
60050 rem**brought to you by**
60060 rem*****ethan dicks*****
60070 rem*********************

