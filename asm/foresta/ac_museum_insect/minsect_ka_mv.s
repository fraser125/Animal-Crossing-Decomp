lbl_8046E6E8:
/* 8046E6E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8046E6EC  7C 08 02 A6 */	mflr r0
/* 8046E6F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8046E6F4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8046E6F8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8046E6FC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8046E700  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8046E704  7C 7F 1B 78 */	mr r31, r3
/* 8046E708  7C 83 23 78 */	mr r3, r4
/* 8046E70C  4B F6 AF 35 */	bl get_player_actor_withoutCheck
/* 8046E710  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 8046E714  38 81 00 10 */	addi r4, r1, 0x10
/* 8046E718  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8046E71C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8046E720  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046E724  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8046E728  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8046E72C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8046E730  4B F4 C9 5D */	bl search_position_distanceXZ
/* 8046E734  3C 60 80 64 */	lis r3, lit_508@ha /* 0x806445F4@ha */
/* 8046E738  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8046E73C  38 A3 45 F4 */	addi r5, r3, lit_508@l /* 0x806445F4@l */
/* 8046E740  A8 DF 00 6E */	lha r6, 0x6e(r31)
/* 8046E744  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8046E748  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8046E74C  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 8046E750  38 06 FF FF */	addi r0, r6, -1
/* 8046E754  FC 00 38 34 */	frsqrte f0, f7
/* 8046E758  C8 C4 45 FC */	lfd f6, lit_509@l(r4)  /* 0x806445FC@l */
/* 8046E75C  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046E760  C8 85 00 00 */	lfd f4, 0(r5)
/* 8046E764  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8046E768  FF E0 08 90 */	fmr f31, f1
/* 8046E76C  FC 60 00 32 */	fmul f3, f0, f0
/* 8046E770  C0 44 00 00 */	lfs f2, 0(r4)
/* 8046E774  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046E778  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046E77C  FC A6 00 32 */	fmul f5, f6, f0
/* 8046E780  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046E784  FC 67 00 F2 */	fmul f3, f7, f3
/* 8046E788  FC 24 18 28 */	fsub f1, f4, f3
/* 8046E78C  FC 65 00 72 */	fmul f3, f5, f1
/* 8046E790  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046E794  FC 66 00 F2 */	fmul f3, f6, f3
/* 8046E798  FC 27 00 72 */	fmul f1, f7, f1
/* 8046E79C  FC 24 08 28 */	fsub f1, f4, f1
/* 8046E7A0  FC 63 00 72 */	fmul f3, f3, f1
/* 8046E7A4  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046E7A8  FC 66 00 F2 */	fmul f3, f6, f3
/* 8046E7AC  FC 27 00 72 */	fmul f1, f7, f1
/* 8046E7B0  FC 24 08 28 */	fsub f1, f4, f1
/* 8046E7B4  FC 23 00 72 */	fmul f1, f3, f1
/* 8046E7B8  FC 27 00 72 */	fmul f1, f7, f1
/* 8046E7BC  FC 20 08 18 */	frsp f1, f1
/* 8046E7C0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8046E7C4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8046E7C8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8046E7CC  EC 42 08 28 */	fsubs f2, f2, f1
/* 8046E7D0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8046E7D4  40 81 00 54 */	ble lbl_8046E828
/* 8046E7D8  FC 20 10 34 */	frsqrte f1, f2
/* 8046E7DC  FC 01 00 72 */	fmul f0, f1, f1
/* 8046E7E0  FC 26 00 72 */	fmul f1, f6, f1
/* 8046E7E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8046E7E8  FC 04 00 28 */	fsub f0, f4, f0
/* 8046E7EC  FC 21 00 32 */	fmul f1, f1, f0
/* 8046E7F0  FC 01 00 72 */	fmul f0, f1, f1
/* 8046E7F4  FC 26 00 72 */	fmul f1, f6, f1
/* 8046E7F8  FC 02 00 32 */	fmul f0, f2, f0
/* 8046E7FC  FC 04 00 28 */	fsub f0, f4, f0
/* 8046E800  FC 21 00 32 */	fmul f1, f1, f0
/* 8046E804  FC 01 00 72 */	fmul f0, f1, f1
/* 8046E808  FC 26 00 72 */	fmul f1, f6, f1
/* 8046E80C  FC 02 00 32 */	fmul f0, f2, f0
/* 8046E810  FC 04 00 28 */	fsub f0, f4, f0
/* 8046E814  FC 01 00 32 */	fmul f0, f1, f0
/* 8046E818  FC 02 00 32 */	fmul f0, f2, f0
/* 8046E81C  FC 00 00 18 */	frsp f0, f0
/* 8046E820  D0 01 00 08 */	stfs f0, 8(r1)
/* 8046E824  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8046E828:
/* 8046E828  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046E82C  A8 9F 00 70 */	lha r4, 0x70(r31)
/* 8046E830  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 8046E834  38 7F 00 6A */	addi r3, r31, 0x6a
/* 8046E838  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046E83C  38 A0 00 5B */	li r5, 0x5b
/* 8046E840  38 C0 00 2D */	li r6, 0x2d
/* 8046E844  EC 20 10 28 */	fsubs f1, f0, f2
/* 8046E848  4B F4 CA C9 */	bl add_calc_short_angle2
/* 8046E84C  3C 60 80 64 */	lis r3, lit_676@ha /* 0x8064464C@ha */
/* 8046E850  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8046E854  C0 03 46 4C */	lfs f0, lit_676@l(r3)  /* 0x8064464C@l */
/* 8046E858  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8046E85C  40 81 00 18 */	ble lbl_8046E874
/* 8046E860  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8046E864  38 81 00 10 */	addi r4, r1, 0x10
/* 8046E868  4B F4 C8 C9 */	bl search_position_angleY
/* 8046E86C  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8046E870  48 00 00 68 */	b lbl_8046E8D8
lbl_8046E874:
/* 8046E874  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 8046E878  C0 23 46 48 */	lfs f1, lit_675@l(r3)  /* 0x80644648@l */
/* 8046E87C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8046E880  40 80 00 18 */	bge lbl_8046E898
/* 8046E884  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8046E888  38 81 00 10 */	addi r4, r1, 0x10
/* 8046E88C  4B F4 C8 A5 */	bl search_position_angleY
/* 8046E890  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8046E894  48 00 00 44 */	b lbl_8046E8D8
lbl_8046E898:
/* 8046E898  3C 60 80 64 */	lis r3, lit_5020@ha /* 0x80644940@ha */
/* 8046E89C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8046E8A0  C0 03 49 40 */	lfs f0, lit_5020@l(r3)  /* 0x80644940@l */
/* 8046E8A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8046E8A8  40 81 00 18 */	ble lbl_8046E8C0
/* 8046E8AC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8046E8B0  38 81 00 10 */	addi r4, r1, 0x10
/* 8046E8B4  4B F4 C8 7D */	bl search_position_angleY
/* 8046E8B8  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8046E8BC  48 00 00 1C */	b lbl_8046E8D8
lbl_8046E8C0:
/* 8046E8C0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8046E8C4  40 80 00 14 */	bge lbl_8046E8D8
/* 8046E8C8  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8046E8CC  38 81 00 10 */	addi r4, r1, 0x10
/* 8046E8D0  4B F4 C8 61 */	bl search_position_angleY
/* 8046E8D4  B0 7F 00 70 */	sth r3, 0x70(r31)
lbl_8046E8D8:
/* 8046E8D8  A8 7F 00 74 */	lha r3, 0x74(r31)
/* 8046E8DC  7C 60 07 35 */	extsh. r0, r3
/* 8046E8E0  40 82 00 90 */	bne lbl_8046E970
/* 8046E8E4  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 8046E8E8  2C 00 00 00 */	cmpwi r0, 0
/* 8046E8EC  40 80 01 D8 */	bge lbl_8046EAC4
/* 8046E8F0  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 8046E8F4  C0 03 46 48 */	lfs f0, lit_675@l(r3)  /* 0x80644648@l */
/* 8046E8F8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046E8FC  40 80 00 44 */	bge lbl_8046E940
/* 8046E900  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8046E904  38 81 00 10 */	addi r4, r1, 0x10
/* 8046E908  4B F4 C8 29 */	bl search_position_angleY
/* 8046E90C  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8046E910  4B BE E3 E5 */	bl fqrand
/* 8046E914  3C 60 80 64 */	lis r3, lit_4943@ha /* 0x8064493C@ha */
/* 8046E918  38 00 00 01 */	li r0, 1
/* 8046E91C  C0 03 49 3C */	lfs f0, lit_4943@l(r3)  /* 0x8064493C@l */
/* 8046E920  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046E924  FC 00 00 1E */	fctiwz f0, f0
/* 8046E928  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046E92C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8046E930  38 63 02 58 */	addi r3, r3, 0x258
/* 8046E934  B0 7F 00 6E */	sth r3, 0x6e(r31)
/* 8046E938  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 8046E93C  48 00 01 88 */	b lbl_8046EAC4
lbl_8046E940:
/* 8046E940  4B BE E3 8D */	bl func_8005CCCC
/* 8046E944  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8046E948  4B BE E3 AD */	bl fqrand
/* 8046E94C  3C 60 80 64 */	lis r3, lit_4943@ha /* 0x8064493C@ha */
/* 8046E950  C0 03 49 3C */	lfs f0, lit_4943@l(r3)  /* 0x8064493C@l */
/* 8046E954  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046E958  FC 00 00 1E */	fctiwz f0, f0
/* 8046E95C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046E960  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8046E964  38 03 02 58 */	addi r0, r3, 0x258
/* 8046E968  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046E96C  48 00 01 58 */	b lbl_8046EAC4
lbl_8046E970:
/* 8046E970  2C 03 00 01 */	cmpwi r3, 1
/* 8046E974  40 82 01 10 */	bne lbl_8046EA84
/* 8046E978  3C 80 81 1D */	lis r4, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8046E97C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8046E980  38 A4 DF D0 */	addi r5, r4, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8046E984  38 81 00 10 */	addi r4, r1, 0x10
/* 8046E988  83 C5 00 00 */	lwz r30, 0(r5)
/* 8046E98C  4B F4 C7 A5 */	bl search_position_angleY
/* 8046E990  3C 80 80 64 */	lis r4, lit_503@ha /* 0x806445DC@ha */
/* 8046E994  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8046E998  C0 04 45 DC */	lfs f0, lit_503@l(r4)  /* 0x806445DC@l */
/* 8046E99C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046E9A0  40 80 00 5C */	bge lbl_8046E9FC
/* 8046E9A4  3C 60 81 1D */	lis r3, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8046E9A8  38 63 DF D0 */	addi r3, r3, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8046E9AC  80 63 00 00 */	lwz r3, 0(r3)
/* 8046E9B0  4B F6 FC BD */	bl mPlib_Check_stung_mosquito
/* 8046E9B4  2C 03 00 00 */	cmpwi r3, 0
/* 8046E9B8  41 82 00 10 */	beq lbl_8046E9C8
/* 8046E9BC  38 00 00 02 */	li r0, 2
/* 8046E9C0  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 8046E9C4  48 00 00 8C */	b lbl_8046EA50
lbl_8046E9C8:
/* 8046E9C8  7F C4 F3 78 */	mr r4, r30
/* 8046E9CC  38 60 00 08 */	li r3, 8
/* 8046E9D0  4B F2 B8 95 */	bl mDemo_Check
/* 8046E9D4  2C 03 00 00 */	cmpwi r3, 0
/* 8046E9D8  40 82 00 78 */	bne lbl_8046EA50
/* 8046E9DC  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8046E9E0  38 60 00 6A */	li r3, 0x6a
/* 8046E9E4  48 1B F5 C5 */	bl sAdo_OngenTrgStart
/* 8046E9E8  3C 60 81 1D */	lis r3, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8046E9EC  38 63 DF D0 */	addi r3, r3, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8046E9F0  80 63 00 00 */	lwz r3, 0(r3)
/* 8046E9F4  4B F6 C0 4D */	bl mPlib_request_main_stung_mosquito_type1
/* 8046E9F8  48 00 00 58 */	b lbl_8046EA50
lbl_8046E9FC:
/* 8046E9FC  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 8046EA00  2C 00 00 00 */	cmpwi r0, 0
/* 8046EA04  40 80 00 4C */	bge lbl_8046EA50
/* 8046EA08  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 8046EA0C  C0 03 46 48 */	lfs f0, lit_675@l(r3)  /* 0x80644648@l */
/* 8046EA10  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046EA14  40 81 00 2C */	ble lbl_8046EA40
/* 8046EA18  4B BE E2 DD */	bl fqrand
/* 8046EA1C  3C 60 80 64 */	lis r3, lit_4943@ha /* 0x8064493C@ha */
/* 8046EA20  C0 03 49 3C */	lfs f0, lit_4943@l(r3)  /* 0x8064493C@l */
/* 8046EA24  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046EA28  FC 00 00 1E */	fctiwz f0, f0
/* 8046EA2C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046EA30  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8046EA34  38 03 02 58 */	addi r0, r3, 0x258
/* 8046EA38  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046EA3C  48 00 00 14 */	b lbl_8046EA50
lbl_8046EA40:
/* 8046EA40  4B BE E2 8D */	bl func_8005CCCC
/* 8046EA44  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8046EA48  38 00 00 00 */	li r0, 0
/* 8046EA4C  B0 1F 00 74 */	sth r0, 0x74(r31)
lbl_8046EA50:
/* 8046EA50  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 8046EA54  2C 00 00 00 */	cmpwi r0, 0
/* 8046EA58  40 80 00 6C */	bge lbl_8046EAC4
/* 8046EA5C  4B BE E2 99 */	bl fqrand
/* 8046EA60  3C 60 80 64 */	lis r3, lit_4943@ha /* 0x8064493C@ha */
/* 8046EA64  C0 03 49 3C */	lfs f0, lit_4943@l(r3)  /* 0x8064493C@l */
/* 8046EA68  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046EA6C  FC 00 00 1E */	fctiwz f0, f0
/* 8046EA70  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046EA74  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8046EA78  38 03 02 58 */	addi r0, r3, 0x258
/* 8046EA7C  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046EA80  48 00 00 44 */	b lbl_8046EAC4
lbl_8046EA84:
/* 8046EA84  2C 03 00 02 */	cmpwi r3, 2
/* 8046EA88  40 82 00 3C */	bne lbl_8046EAC4
/* 8046EA8C  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 8046EA90  2C 00 00 00 */	cmpwi r0, 0
/* 8046EA94  40 80 00 30 */	bge lbl_8046EAC4
/* 8046EA98  4B BE E2 35 */	bl func_8005CCCC
/* 8046EA9C  B0 7F 00 70 */	sth r3, 0x70(r31)
/* 8046EAA0  4B BE E2 55 */	bl fqrand
/* 8046EAA4  3C 60 80 64 */	lis r3, lit_4943@ha /* 0x8064493C@ha */
/* 8046EAA8  C0 03 49 3C */	lfs f0, lit_4943@l(r3)  /* 0x8064493C@l */
/* 8046EAAC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046EAB0  FC 00 00 1E */	fctiwz f0, f0
/* 8046EAB4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046EAB8  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8046EABC  38 03 02 58 */	addi r0, r3, 0x258
/* 8046EAC0  B0 1F 00 6E */	sth r0, 0x6e(r31)
lbl_8046EAC4:
/* 8046EAC4  3C 60 80 64 */	lis r3, lit_1719@ha /* 0x80644794@ha */
/* 8046EAC8  C0 03 47 94 */	lfs f0, lit_1719@l(r3)  /* 0x80644794@l */
/* 8046EACC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046EAD0  40 80 00 14 */	bge lbl_8046EAE4
/* 8046EAD4  7F E3 FB 78 */	mr r3, r31
/* 8046EAD8  38 BF 00 1C */	addi r5, r31, 0x1c
/* 8046EADC  38 80 00 CF */	li r4, 0xcf
/* 8046EAE0  48 1B F4 65 */	bl sAdo_OngenPos
lbl_8046EAE4:
/* 8046EAE4  7F E3 FB 78 */	mr r3, r31
/* 8046EAE8  4B FE C0 FD */	bl func_8045ABE4
/* 8046EAEC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8046EAF0  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 8046EAF4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8046EAF8  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 8046EAFC  EC 01 00 2A */	fadds f0, f1, f0
/* 8046EB00  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8046EB04  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8046EB08  80 1F 00 00 */	lwz r0, 0(r31)
/* 8046EB0C  FC 00 00 1E */	fctiwz f0, f0
/* 8046EB10  54 00 10 3A */	slwi r0, r0, 2
/* 8046EB14  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046EB18  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046EB1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046EB20  54 00 10 3A */	slwi r0, r0, 2
/* 8046EB24  7C 03 00 2E */	lwzx r0, r3, r0
/* 8046EB28  28 00 00 00 */	cmplwi r0, 0
/* 8046EB2C  40 82 00 10 */	bne lbl_8046EB3C
/* 8046EB30  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046EB34  C0 03 46 0C */	lfs f0, lit_511@l(r3)  /* 0x8064460C@l */
/* 8046EB38  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8046EB3C:
/* 8046EB3C  A8 7F 00 72 */	lha r3, 0x72(r31)
/* 8046EB40  38 03 01 C7 */	addi r0, r3, 0x1c7
/* 8046EB44  B0 1F 00 72 */	sth r0, 0x72(r31)
/* 8046EB48  A8 7F 00 72 */	lha r3, 0x72(r31)
/* 8046EB4C  4B F4 BF A5 */	bl sin_s
/* 8046EB50  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 8046EB54  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8046EB58  38 83 46 34 */	addi r4, r3, lit_586@l /* 0x80644634@l */
/* 8046EB5C  7F E3 FB 78 */	mr r3, r31
/* 8046EB60  C0 44 00 00 */	lfs f2, 0(r4)
/* 8046EB64  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046EB68  EC 00 08 2A */	fadds f0, f0, f1
/* 8046EB6C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8046EB70  4B FE D5 E5 */	bl minsect_tree_ObjCheck
/* 8046EB74  3C 60 80 64 */	lis r3, lit_1585@ha /* 0x80644760@ha */
/* 8046EB78  3C 80 80 64 */	lis r4, lit_502@ha /* 0x806445D8@ha */
/* 8046EB7C  38 A3 47 60 */	addi r5, r3, lit_1585@l /* 0x80644760@l */
/* 8046EB80  C0 44 45 D8 */	lfs f2, lit_502@l(r4)  /* 0x806445D8@l */
/* 8046EB84  C0 25 00 00 */	lfs f1, 0(r5)
/* 8046EB88  7F E3 FB 78 */	mr r3, r31
/* 8046EB8C  4B FE D0 0D */	bl minsect_fly_BGCheck
/* 8046EB90  A8 7F 00 8C */	lha r3, 0x8c(r31)
/* 8046EB94  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8046EB98  41 82 00 14 */	beq lbl_8046EBAC
/* 8046EB9C  3C 60 80 64 */	lis r3, lit_1585@ha /* 0x80644760@ha */
/* 8046EBA0  C0 03 47 60 */	lfs f0, lit_1585@l(r3)  /* 0x80644760@l */
/* 8046EBA4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8046EBA8  48 00 00 38 */	b lbl_8046EBE0
lbl_8046EBAC:
/* 8046EBAC  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8046EBB0  41 82 00 30 */	beq lbl_8046EBE0
/* 8046EBB4  4B BE E1 79 */	bl fqrand2
/* 8046EBB8  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 8046EBBC  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046EBC0  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8046EBC4  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8046EBC8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046EBCC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046EBD0  FC 00 00 1E */	fctiwz f0, f0
/* 8046EBD4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046EBD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046EBDC  B0 1F 00 70 */	sth r0, 0x70(r31)
lbl_8046EBE0:
/* 8046EBE0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8046EBE4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8046EBE8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8046EBEC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8046EBF0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8046EBF4  7C 08 03 A6 */	mtlr r0
/* 8046EBF8  38 21 00 40 */	addi r1, r1, 0x40
/* 8046EBFC  4E 80 00 20 */	blr 
