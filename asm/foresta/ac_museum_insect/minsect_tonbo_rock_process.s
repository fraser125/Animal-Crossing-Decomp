lbl_80460250:
/* 80460250  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80460254  7C 08 02 A6 */	mflr r0
/* 80460258  90 01 00 74 */	stw r0, 0x74(r1)
/* 8046025C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80460260  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80460264  39 61 00 60 */	addi r11, r1, 0x60
/* 80460268  4B C3 AC 6D */	bl func_8009AED4
/* 8046026C  7C 9E 23 78 */	mr r30, r4
/* 80460270  7C 7D 1B 78 */	mr r29, r3
/* 80460274  7F C3 F3 78 */	mr r3, r30
/* 80460278  4B F7 93 C9 */	bl get_player_actor_withoutCheck
/* 8046027C  7C 7F 1B 78 */	mr r31, r3
/* 80460280  7F A3 EB 78 */	mr r3, r29
/* 80460284  7F C4 F3 78 */	mr r4, r30
/* 80460288  38 A1 00 28 */	addi r5, r1, 0x28
/* 8046028C  4B FF EA E9 */	bl minsect_tonbo_rock_target_set
/* 80460290  80 81 00 28 */	lwz r4, 0x28(r1)
/* 80460294  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80460298  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8046029C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 804602A0  90 9D 00 44 */	stw r4, 0x44(r29)
/* 804602A4  90 1D 00 48 */	stw r0, 0x48(r29)
/* 804602A8  80 01 00 30 */	lwz r0, 0x30(r1)
/* 804602AC  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 804602B0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804602B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804602B8  41 82 00 18 */	beq lbl_804602D0
/* 804602BC  7F A3 EB 78 */	mr r3, r29
/* 804602C0  7F C4 F3 78 */	mr r4, r30
/* 804602C4  4B FF ED 05 */	bl minsect_tonbo_suprised_rest_player
/* 804602C8  2C 03 00 00 */	cmpwi r3, 0
/* 804602CC  40 82 05 14 */	bne lbl_804607E0
lbl_804602D0:
/* 804602D0  3C 60 80 64 */	lis r3, lit_1460@ha /* 0x80644740@ha */
/* 804602D4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804602D8  C0 03 47 40 */	lfs f0, lit_1460@l(r3)  /* 0x80644740@l */
/* 804602DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804602E0  40 81 00 24 */	ble lbl_80460304
/* 804602E4  A8 1D 00 74 */	lha r0, 0x74(r29)
/* 804602E8  2C 00 00 06 */	cmpwi r0, 6
/* 804602EC  41 80 00 18 */	blt lbl_80460304
/* 804602F0  7F A3 EB 78 */	mr r3, r29
/* 804602F4  7F C4 F3 78 */	mr r4, r30
/* 804602F8  4B FF EC D1 */	bl minsect_tonbo_suprised_rest_player
/* 804602FC  2C 03 00 00 */	cmpwi r3, 0
/* 80460300  40 82 04 E0 */	bne lbl_804607E0
lbl_80460304:
/* 80460304  3C 60 80 64 */	lis r3, lit_1238@ha /* 0x8064472C@ha */
/* 80460308  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8046030C  38 A3 47 2C */	addi r5, r3, lit_1238@l /* 0x8064472C@l */
/* 80460310  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 80460314  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80460318  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8046031C  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 80460320  FC 60 30 34 */	frsqrte f3, f6
/* 80460324  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80460328  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8046032C  C8 85 00 00 */	lfd f4, 0(r5)
/* 80460330  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80460334  C0 44 00 00 */	lfs f2, 0(r4)
/* 80460338  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046033C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80460340  FC 65 00 F2 */	fmul f3, f5, f3
/* 80460344  FC 26 00 72 */	fmul f1, f6, f1
/* 80460348  FC 24 08 28 */	fsub f1, f4, f1
/* 8046034C  FC 63 00 72 */	fmul f3, f3, f1
/* 80460350  FC 23 00 F2 */	fmul f1, f3, f3
/* 80460354  FC 65 00 F2 */	fmul f3, f5, f3
/* 80460358  FC 26 00 72 */	fmul f1, f6, f1
/* 8046035C  FC 24 08 28 */	fsub f1, f4, f1
/* 80460360  FC 63 00 72 */	fmul f3, f3, f1
/* 80460364  FC 23 00 F2 */	fmul f1, f3, f3
/* 80460368  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046036C  FC 26 00 72 */	fmul f1, f6, f1
/* 80460370  FC 24 08 28 */	fsub f1, f4, f1
/* 80460374  FC 23 00 72 */	fmul f1, f3, f1
/* 80460378  FC 26 00 72 */	fmul f1, f6, f1
/* 8046037C  FC 20 08 18 */	frsp f1, f1
/* 80460380  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80460384  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80460388  EC 22 08 28 */	fsubs f1, f2, f1
/* 8046038C  EC 42 08 28 */	fsubs f2, f2, f1
/* 80460390  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80460394  40 81 00 54 */	ble lbl_804603E8
/* 80460398  FC 20 10 34 */	frsqrte f1, f2
/* 8046039C  FC 01 00 72 */	fmul f0, f1, f1
/* 804603A0  FC 25 00 72 */	fmul f1, f5, f1
/* 804603A4  FC 02 00 32 */	fmul f0, f2, f0
/* 804603A8  FC 04 00 28 */	fsub f0, f4, f0
/* 804603AC  FC 21 00 32 */	fmul f1, f1, f0
/* 804603B0  FC 01 00 72 */	fmul f0, f1, f1
/* 804603B4  FC 25 00 72 */	fmul f1, f5, f1
/* 804603B8  FC 02 00 32 */	fmul f0, f2, f0
/* 804603BC  FC 04 00 28 */	fsub f0, f4, f0
/* 804603C0  FC 21 00 32 */	fmul f1, f1, f0
/* 804603C4  FC 01 00 72 */	fmul f0, f1, f1
/* 804603C8  FC 25 00 72 */	fmul f1, f5, f1
/* 804603CC  FC 02 00 32 */	fmul f0, f2, f0
/* 804603D0  FC 04 00 28 */	fsub f0, f4, f0
/* 804603D4  FC 01 00 32 */	fmul f0, f1, f0
/* 804603D8  FC 02 00 32 */	fmul f0, f2, f0
/* 804603DC  FC 00 00 18 */	frsp f0, f0
/* 804603E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804603E4  C0 41 00 14 */	lfs f2, 0x14(r1)
lbl_804603E8:
/* 804603E8  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 804603EC  A8 9D 00 70 */	lha r4, 0x70(r29)
/* 804603F0  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 804603F4  38 7D 00 6A */	addi r3, r29, 0x6a
/* 804603F8  C0 05 00 00 */	lfs f0, 0(r5)
/* 804603FC  38 A0 0A AA */	li r5, 0xaaa
/* 80460400  38 C0 00 04 */	li r6, 4
/* 80460404  EC 20 10 28 */	fsubs f1, f0, f2
/* 80460408  4B F5 AF 09 */	bl add_calc_short_angle2
/* 8046040C  7C 60 07 35 */	extsh. r0, r3
/* 80460410  40 82 03 D0 */	bne lbl_804607E0
/* 80460414  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 80460418  38 7D 00 1C */	addi r3, r29, 0x1c
/* 8046041C  38 9D 00 44 */	addi r4, r29, 0x44
/* 80460420  4B F5 A8 BD */	bl chase_xyz_t
/* 80460424  3C 60 80 64 */	lis r3, lit_583@ha /* 0x80644624@ha */
/* 80460428  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8046042C  38 A3 46 24 */	addi r5, r3, lit_583@l /* 0x80644624@l */
/* 80460430  C9 05 00 00 */	lfd f8, 0(r5)
/* 80460434  38 A4 45 FC */	addi r5, r4, lit_509@l /* 0x806445FC@l */
/* 80460438  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8046043C  C8 E5 00 00 */	lfd f7, 0(r5)
/* 80460440  FC 00 40 34 */	frsqrte f0, f8
/* 80460444  38 C3 46 04 */	addi r6, r3, lit_510@l /* 0x80644604@l */
/* 80460448  3C 80 80 64 */	lis r4, lit_460@ha /* 0x806445C0@ha */
/* 8046044C  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80460450  38 A4 45 C0 */	addi r5, r4, lit_460@l /* 0x806445C0@l */
/* 80460454  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80460458  FC 40 00 32 */	fmul f2, f0, f0
/* 8046045C  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 80460460  C0 25 00 00 */	lfs f1, 0(r5)
/* 80460464  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 80460468  FC A7 00 32 */	fmul f5, f7, f0
/* 8046046C  C0 83 46 10 */	lfs f4, lit_512@l(r3)  /* 0x80644610@l */
/* 80460470  FC 48 00 B2 */	fmul f2, f8, f2
/* 80460474  C0 04 00 00 */	lfs f0, 0(r4)
/* 80460478  38 7D 00 40 */	addi r3, r29, 0x40
/* 8046047C  FC 60 08 90 */	fmr f3, f1
/* 80460480  FC 46 10 28 */	fsub f2, f6, f2
/* 80460484  FC A5 00 B2 */	fmul f5, f5, f2
/* 80460488  FC 45 01 72 */	fmul f2, f5, f5
/* 8046048C  FC A7 01 72 */	fmul f5, f7, f5
/* 80460490  FC 48 00 B2 */	fmul f2, f8, f2
/* 80460494  FC 46 10 28 */	fsub f2, f6, f2
/* 80460498  FC A5 00 B2 */	fmul f5, f5, f2
/* 8046049C  FC 45 01 72 */	fmul f2, f5, f5
/* 804604A0  FC A7 01 72 */	fmul f5, f7, f5
/* 804604A4  FC 48 00 B2 */	fmul f2, f8, f2
/* 804604A8  FC 46 10 28 */	fsub f2, f6, f2
/* 804604AC  FC 45 00 B2 */	fmul f2, f5, f2
/* 804604B0  FC 48 00 B2 */	fmul f2, f8, f2
/* 804604B4  FC 40 10 18 */	frsp f2, f2
/* 804604B8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804604BC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804604C0  EC 40 10 28 */	fsubs f2, f0, f2
/* 804604C4  4B F5 AC ED */	bl add_calc
/* 804604C8  3C 60 80 64 */	lis r3, lit_761@ha /* 0x8064465C@ha */
/* 804604CC  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 804604D0  38 A3 46 5C */	addi r5, r3, lit_761@l /* 0x8064465C@l */
/* 804604D4  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 804604D8  C8 C5 00 00 */	lfd f6, 0(r5)
/* 804604DC  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 804604E0  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 804604E4  FC 60 30 34 */	frsqrte f3, f6
/* 804604E8  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 804604EC  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 804604F0  C8 85 00 00 */	lfd f4, 0(r5)
/* 804604F4  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 804604F8  C0 44 00 00 */	lfs f2, 0(r4)
/* 804604FC  FC 23 00 F2 */	fmul f1, f3, f3
/* 80460500  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80460504  FC 65 00 F2 */	fmul f3, f5, f3
/* 80460508  FC 26 00 72 */	fmul f1, f6, f1
/* 8046050C  FC 24 08 28 */	fsub f1, f4, f1
/* 80460510  FC 63 00 72 */	fmul f3, f3, f1
/* 80460514  FC 23 00 F2 */	fmul f1, f3, f3
/* 80460518  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046051C  FC 26 00 72 */	fmul f1, f6, f1
/* 80460520  FC 24 08 28 */	fsub f1, f4, f1
/* 80460524  FC 63 00 72 */	fmul f3, f3, f1
/* 80460528  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046052C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80460530  FC 26 00 72 */	fmul f1, f6, f1
/* 80460534  FC 24 08 28 */	fsub f1, f4, f1
/* 80460538  FC 23 00 72 */	fmul f1, f3, f1
/* 8046053C  FC 26 00 72 */	fmul f1, f6, f1
/* 80460540  FC 20 08 18 */	frsp f1, f1
/* 80460544  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80460548  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8046054C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80460550  EC 42 08 28 */	fsubs f2, f2, f1
/* 80460554  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80460558  40 81 00 54 */	ble lbl_804605AC
/* 8046055C  FC 20 10 34 */	frsqrte f1, f2
/* 80460560  FC 01 00 72 */	fmul f0, f1, f1
/* 80460564  FC 25 00 72 */	fmul f1, f5, f1
/* 80460568  FC 02 00 32 */	fmul f0, f2, f0
/* 8046056C  FC 04 00 28 */	fsub f0, f4, f0
/* 80460570  FC 21 00 32 */	fmul f1, f1, f0
/* 80460574  FC 01 00 72 */	fmul f0, f1, f1
/* 80460578  FC 25 00 72 */	fmul f1, f5, f1
/* 8046057C  FC 02 00 32 */	fmul f0, f2, f0
/* 80460580  FC 04 00 28 */	fsub f0, f4, f0
/* 80460584  FC 21 00 32 */	fmul f1, f1, f0
/* 80460588  FC 01 00 72 */	fmul f0, f1, f1
/* 8046058C  FC 25 00 72 */	fmul f1, f5, f1
/* 80460590  FC 02 00 32 */	fmul f0, f2, f0
/* 80460594  FC 04 00 28 */	fsub f0, f4, f0
/* 80460598  FC 01 00 32 */	fmul f0, f1, f0
/* 8046059C  FC 02 00 32 */	fmul f0, f2, f0
/* 804605A0  FC 00 00 18 */	frsp f0, f0
/* 804605A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 804605A8  C0 41 00 08 */	lfs f2, 8(r1)
lbl_804605AC:
/* 804605AC  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 804605B0  38 7D 00 76 */	addi r3, r29, 0x76
/* 804605B4  38 A4 46 0C */	addi r5, r4, lit_511@l /* 0x8064460C@l */
/* 804605B8  38 80 00 00 */	li r4, 0
/* 804605BC  C0 05 00 00 */	lfs f0, 0(r5)
/* 804605C0  38 A0 0A AA */	li r5, 0xaaa
/* 804605C4  38 C0 00 04 */	li r6, 4
/* 804605C8  EC 20 10 28 */	fsubs f1, f0, f2
/* 804605CC  4B F5 AD 45 */	bl add_calc_short_angle2
/* 804605D0  A8 1D 00 74 */	lha r0, 0x74(r29)
/* 804605D4  2C 00 00 06 */	cmpwi r0, 6
/* 804605D8  41 80 01 A0 */	blt lbl_80460778
/* 804605DC  3C 80 80 64 */	lis r4, lit_1033@ha /* 0x806446F4@ha */
/* 804605E0  38 7D 00 1C */	addi r3, r29, 0x1c
/* 804605E4  38 A4 46 F4 */	addi r5, r4, lit_1033@l /* 0x806446F4@l */
/* 804605E8  38 9D 00 44 */	addi r4, r29, 0x44
/* 804605EC  C3 E5 00 00 */	lfs f31, 0(r5)
/* 804605F0  4B F5 A9 E5 */	bl search_position_distance
/* 804605F4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804605F8  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804605FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80460600  A8 63 16 B4 */	lha r3, 0x16b4(r3)
/* 80460604  7C 60 07 35 */	extsh. r0, r3
/* 80460608  41 82 00 34 */	beq lbl_8046063C
/* 8046060C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80460610  3C 00 43 30 */	lis r0, 0x4330
/* 80460614  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 80460618  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8046061C  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 80460620  90 01 00 38 */	stw r0, 0x38(r1)
/* 80460624  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 80460628  C8 43 00 00 */	lfd f2, 0(r3)
/* 8046062C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80460630  C0 64 46 54 */	lfs f3, lit_678@l(r4)  /* 0x80644654@l */
/* 80460634  EC 00 10 28 */	fsubs f0, f0, f2
/* 80460638  EF E3 00 32 */	fmuls f31, f3, f0
lbl_8046063C:
/* 8046063C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80460640  40 80 01 A0 */	bge lbl_804607E0
/* 80460644  3C 80 80 64 */	lis r4, lit_1461@ha /* 0x80644744@ha */
/* 80460648  38 7F 10 38 */	addi r3, r31, 0x1038
/* 8046064C  38 A4 47 44 */	addi r5, r4, lit_1461@l /* 0x80644744@l */
/* 80460650  38 9F 10 2C */	addi r4, r31, 0x102c
/* 80460654  C3 E5 00 00 */	lfs f31, 0(r5)
/* 80460658  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8046065C  4B F5 A9 1D */	bl xyz_t_sub
/* 80460660  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80460664  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80460668  80 63 00 00 */	lwz r3, 0(r3)
/* 8046066C  A8 63 16 B8 */	lha r3, 0x16b8(r3)
/* 80460670  7C 60 07 35 */	extsh. r0, r3
/* 80460674  41 82 00 34 */	beq lbl_804606A8
/* 80460678  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8046067C  3C 00 43 30 */	lis r0, 0x4330
/* 80460680  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 80460684  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80460688  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 8046068C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80460690  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 80460694  C8 23 00 00 */	lfd f1, 0(r3)
/* 80460698  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8046069C  C0 44 46 54 */	lfs f2, lit_678@l(r4)  /* 0x80644654@l */
/* 804606A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804606A4  EF E2 00 32 */	fmuls f31, f2, f0
lbl_804606A8:
/* 804606A8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804606AC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 804606B0  4B FA B9 51 */	bl atans_table
/* 804606B4  3C A0 80 64 */	lis r5, lit_505@ha /* 0x806445E4@ha */
/* 804606B8  7C 64 1B 78 */	mr r4, r3
/* 804606BC  C0 05 45 E4 */	lfs f0, lit_505@l(r5)  /* 0x806445E4@l */
/* 804606C0  38 7D 00 7E */	addi r3, r29, 0x7e
/* 804606C4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804606C8  FC 00 00 1E */	fctiwz f0, f0
/* 804606CC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 804606D0  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 804606D4  7F E5 07 34 */	extsh r5, r31
/* 804606D8  4B F5 A5 21 */	bl chase_s
/* 804606DC  2C 03 00 00 */	cmpwi r3, 0
/* 804606E0  41 82 01 00 */	beq lbl_804607E0
/* 804606E4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804606E8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804606EC  FC 40 00 50 */	fneg f2, f0
/* 804606F0  4B FA B9 11 */	bl atans_table
/* 804606F4  7C 64 1B 78 */	mr r4, r3
/* 804606F8  38 7D 00 80 */	addi r3, r29, 0x80
/* 804606FC  7F E5 07 34 */	extsh r5, r31
/* 80460700  4B F5 A4 F9 */	bl chase_s
/* 80460704  2C 03 00 00 */	cmpwi r3, 0
/* 80460708  41 82 00 D8 */	beq lbl_804607E0
/* 8046070C  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80460710  3C 60 80 64 */	lis r3, lit_1462@ha /* 0x80644748@ha */
/* 80460714  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80460718  C0 43 47 48 */	lfs f2, lit_1462@l(r3)  /* 0x80644748@l */
/* 8046071C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80460720  FC 00 02 10 */	fabs f0, f0
/* 80460724  FC 00 00 18 */	frsp f0, f0
/* 80460728  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8046072C  40 80 00 B4 */	bge lbl_804607E0
/* 80460730  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 80460734  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80460738  EC 01 00 28 */	fsubs f0, f1, f0
/* 8046073C  FC 00 02 10 */	fabs f0, f0
/* 80460740  FC 00 00 18 */	frsp f0, f0
/* 80460744  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80460748  40 80 00 98 */	bge lbl_804607E0
/* 8046074C  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 80460750  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80460754  EC 01 00 28 */	fsubs f0, f1, f0
/* 80460758  FC 00 02 10 */	fabs f0, f0
/* 8046075C  FC 00 00 18 */	frsp f0, f0
/* 80460760  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80460764  40 80 00 7C */	bge lbl_804607E0
/* 80460768  7F A3 EB 78 */	mr r3, r29
/* 8046076C  7F C4 F3 78 */	mr r4, r30
/* 80460770  48 00 00 91 */	bl minsect_tonbo_rock_wait_process_init
/* 80460774  48 00 00 6C */	b lbl_804607E0
lbl_80460778:
/* 80460778  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8046077C  3C 60 80 64 */	lis r3, lit_1462@ha /* 0x80644748@ha */
/* 80460780  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80460784  C0 43 47 48 */	lfs f2, lit_1462@l(r3)  /* 0x80644748@l */
/* 80460788  EC 01 00 28 */	fsubs f0, f1, f0
/* 8046078C  FC 00 02 10 */	fabs f0, f0
/* 80460790  FC 00 00 18 */	frsp f0, f0
/* 80460794  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80460798  40 80 00 48 */	bge lbl_804607E0
/* 8046079C  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 804607A0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804607A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804607A8  FC 00 02 10 */	fabs f0, f0
/* 804607AC  FC 00 00 18 */	frsp f0, f0
/* 804607B0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804607B4  40 80 00 2C */	bge lbl_804607E0
/* 804607B8  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 804607BC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804607C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804607C4  FC 00 02 10 */	fabs f0, f0
/* 804607C8  FC 00 00 18 */	frsp f0, f0
/* 804607CC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804607D0  40 80 00 10 */	bge lbl_804607E0
/* 804607D4  7F A3 EB 78 */	mr r3, r29
/* 804607D8  7F C4 F3 78 */	mr r4, r30
/* 804607DC  48 00 00 25 */	bl minsect_tonbo_rock_wait_process_init
lbl_804607E0:
/* 804607E0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804607E4  39 61 00 60 */	addi r11, r1, 0x60
/* 804607E8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804607EC  4B C3 A7 35 */	bl func_8009AF20
/* 804607F0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804607F4  7C 08 03 A6 */	mtlr r0
/* 804607F8  38 21 00 70 */	addi r1, r1, 0x70
/* 804607FC  4E 80 00 20 */	blr 
