lbl_804F14C8:
/* 804F14C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F14CC  7C 08 02 A6 */	mflr r0
/* 804F14D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F14D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F14D8  7C 7F 1B 78 */	mr r31, r3
/* 804F14DC  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804F14E0  C0 23 01 84 */	lfs f1, 0x184(r3)
/* 804F14E4  2C 00 00 8D */	cmpwi r0, 0x8d
/* 804F14E8  40 82 00 40 */	bne lbl_804F1528
/* 804F14EC  3C 60 80 64 */	lis r3, lit_3046@ha /* 0x80646E54@ha */
/* 804F14F0  C0 03 6E 54 */	lfs f0, lit_3046@l(r3)  /* 0x80646E54@l */
/* 804F14F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F14F8  40 80 00 30 */	bge lbl_804F1528
/* 804F14FC  38 7F 0D 18 */	addi r3, r31, 0xd18
/* 804F1500  80 1F 0D 3C */	lwz r0, 0xd3c(r31)
/* 804F1504  2C 00 00 00 */	cmpwi r0, 0
/* 804F1508  41 82 00 0C */	beq lbl_804F1514
/* 804F150C  7C 64 1B 78 */	mr r4, r3
/* 804F1510  48 00 00 08 */	b lbl_804F1518
lbl_804F1514:
/* 804F1514  7C 64 1B 78 */	mr r4, r3
lbl_804F1518:
/* 804F1518  7F E3 FB 78 */	mr r3, r31
/* 804F151C  38 A0 00 01 */	li r5, 1
/* 804F1520  4B FF F6 FD */	bl Player_actor_Movement_Reflect_axe_common
/* 804F1524  48 00 00 94 */	b lbl_804F15B8
lbl_804F1528:
/* 804F1528  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804F152C  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804F1530  38 A3 69 F4 */	addi r5, r3, lit_1027@l /* 0x806469F4@l */
/* 804F1534  C8 64 69 FC */	lfd f3, lit_1028@l(r4)  /* 0x806469FC@l */
/* 804F1538  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804F153C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F1540  C8 85 00 00 */	lfd f4, 0(r5)
/* 804F1544  38 80 00 00 */	li r4, 0
/* 804F1548  FC 40 28 34 */	frsqrte f2, f5
/* 804F154C  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804F1550  38 7F 00 DE */	addi r3, r31, 0xde
/* 804F1554  38 A0 09 C4 */	li r5, 0x9c4
/* 804F1558  38 C0 00 32 */	li r6, 0x32
/* 804F155C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804F1560  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F1564  FC 25 00 72 */	fmul f1, f5, f1
/* 804F1568  FC 23 08 28 */	fsub f1, f3, f1
/* 804F156C  FC 42 00 72 */	fmul f2, f2, f1
/* 804F1570  FC 22 00 B2 */	fmul f1, f2, f2
/* 804F1574  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F1578  FC 25 00 72 */	fmul f1, f5, f1
/* 804F157C  FC 23 08 28 */	fsub f1, f3, f1
/* 804F1580  FC 42 00 72 */	fmul f2, f2, f1
/* 804F1584  FC 22 00 B2 */	fmul f1, f2, f2
/* 804F1588  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F158C  FC 25 00 72 */	fmul f1, f5, f1
/* 804F1590  FC 23 08 28 */	fsub f1, f3, f1
/* 804F1594  FC 22 00 72 */	fmul f1, f2, f1
/* 804F1598  FC 25 00 72 */	fmul f1, f5, f1
/* 804F159C  FC 20 08 18 */	frsp f1, f1
/* 804F15A0  D0 21 00 08 */	stfs f1, 8(r1)
/* 804F15A4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F15A8  EC 20 08 28 */	fsubs f1, f0, f1
/* 804F15AC  4B EC 9D 65 */	bl add_calc_short_angle2
/* 804F15B0  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804F15B4  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_804F15B8:
/* 804F15B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F15BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F15C0  7C 08 03 A6 */	mtlr r0
/* 804F15C4  38 21 00 20 */	addi r1, r1, 0x20
/* 804F15C8  4E 80 00 20 */	blr 
