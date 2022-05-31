lbl_804F13CC:
/* 804F13CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F13D0  7C 08 02 A6 */	mflr r0
/* 804F13D4  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804F13D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F13DC  38 00 00 00 */	li r0, 0
/* 804F13E0  C0 05 65 68 */	lfs f0, lit_604@l(r5)  /* 0x80646568@l */
/* 804F13E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F13E8  7C 9F 23 78 */	mr r31, r4
/* 804F13EC  93 C1 00 08 */	stw r30, 8(r1)
/* 804F13F0  7C 7E 1B 78 */	mr r30, r3
/* 804F13F4  38 7E 0D 60 */	addi r3, r30, 0xd60
/* 804F13F8  80 FE 0D 78 */	lwz r7, 0xd78(r30)
/* 804F13FC  38 DE 0D 18 */	addi r6, r30, 0xd18
/* 804F1400  90 FE 0D 3C */	stw r7, 0xd3c(r30)
/* 804F1404  2C 07 00 00 */	cmpwi r7, 0
/* 804F1408  D0 1E 0D 40 */	stfs f0, 0xd40(r30)
/* 804F140C  90 1E 0D 44 */	stw r0, 0xd44(r30)
/* 804F1410  41 82 00 10 */	beq lbl_804F1420
/* 804F1414  7C C4 33 78 */	mr r4, r6
/* 804F1418  4B FF F7 31 */	bl Player_actor_setup_main_Reflect_axe_common
/* 804F141C  48 00 00 0C */	b lbl_804F1428
lbl_804F1420:
/* 804F1420  7C C4 33 78 */	mr r4, r6
/* 804F1424  4B FF E6 65 */	bl Player_actor_setup_main_Swing_axe_common
lbl_804F1428:
/* 804F1428  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F142C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F1430  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F1434  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F1438  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F143C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F1440  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804F1444  7F C3 F3 78 */	mr r3, r30
/* 804F1448  FC 40 08 90 */	fmr f2, f1
/* 804F144C  7F E4 FB 78 */	mr r4, r31
/* 804F1450  38 A0 00 8D */	li r5, 0x8d
/* 804F1454  38 C0 00 8D */	li r6, 0x8d
/* 804F1458  38 E0 00 00 */	li r7, 0
/* 804F145C  39 00 00 00 */	li r8, 0
/* 804F1460  4B FE 53 B1 */	bl Player_actor_InitAnimation_Base2
/* 804F1464  7F C3 F3 78 */	mr r3, r30
/* 804F1468  7F E4 FB 78 */	mr r4, r31
/* 804F146C  4B FE 44 8D */	bl Player_actor_setup_main_Base
/* 804F1470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F1474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F1478  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F147C  7C 08 03 A6 */	mtlr r0
/* 804F1480  38 21 00 10 */	addi r1, r1, 0x10
/* 804F1484  4E 80 00 20 */	blr 
