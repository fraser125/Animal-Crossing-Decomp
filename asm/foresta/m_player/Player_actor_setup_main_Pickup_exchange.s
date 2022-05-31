lbl_804EEA80:
/* 804EEA80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EEA84  7C 08 02 A6 */	mflr r0
/* 804EEA88  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804EEA8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EEA90  38 00 00 00 */	li r0, 0
/* 804EEA94  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804EEA98  38 A1 00 0C */	addi r5, r1, 0xc
/* 804EEA9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804EEAA0  7C 9F 23 78 */	mr r31, r4
/* 804EEAA4  38 80 00 7F */	li r4, 0x7f
/* 804EEAA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804EEAAC  7C 7E 1B 78 */	mr r30, r3
/* 804EEAB0  80 C3 0D 60 */	lwz r6, 0xd60(r3)
/* 804EEAB4  80 E3 0D 64 */	lwz r7, 0xd64(r3)
/* 804EEAB8  90 C3 0D 18 */	stw r6, 0xd18(r3)
/* 804EEABC  38 C1 00 08 */	addi r6, r1, 8
/* 804EEAC0  90 E3 0D 1C */	stw r7, 0xd1c(r3)
/* 804EEAC4  80 E3 0D 68 */	lwz r7, 0xd68(r3)
/* 804EEAC8  90 E3 0D 20 */	stw r7, 0xd20(r3)
/* 804EEACC  A0 E3 0D 6C */	lhz r7, 0xd6c(r3)
/* 804EEAD0  B0 E3 0D 24 */	sth r7, 0xd24(r3)
/* 804EEAD4  90 03 0D 28 */	stw r0, 0xd28(r3)
/* 804EEAD8  90 03 0D 2C */	stw r0, 0xd2c(r3)
/* 804EEADC  4B FE B4 85 */	bl Player_actor_SetupItem_Base1
/* 804EEAE0  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804EEAE4  2C 06 00 7F */	cmpwi r6, 0x7f
/* 804EEAE8  41 82 00 0C */	beq lbl_804EEAF4
/* 804EEAEC  38 00 00 03 */	li r0, 3
/* 804EEAF0  90 01 00 08 */	stw r0, 8(r1)
lbl_804EEAF4:
/* 804EEAF4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EEAF8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EEAFC  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EEB00  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EEB04  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EEB08  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EEB0C  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804EEB10  7F C3 F3 78 */	mr r3, r30
/* 804EEB14  FC 40 08 90 */	fmr f2, f1
/* 804EEB18  80 E1 00 08 */	lwz r7, 8(r1)
/* 804EEB1C  7F E4 FB 78 */	mr r4, r31
/* 804EEB20  38 A0 00 7F */	li r5, 0x7f
/* 804EEB24  4B FE 7B D5 */	bl Player_actor_InitAnimation_Base1
/* 804EEB28  7F C3 F3 78 */	mr r3, r30
/* 804EEB2C  7F E4 FB 78 */	mr r4, r31
/* 804EEB30  4B FE 6D C9 */	bl Player_actor_setup_main_Base
/* 804EEB34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EEB38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804EEB3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804EEB40  7C 08 03 A6 */	mtlr r0
/* 804EEB44  38 21 00 20 */	addi r1, r1, 0x20
/* 804EEB48  4E 80 00 20 */	blr 
