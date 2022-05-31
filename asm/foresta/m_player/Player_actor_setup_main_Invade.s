lbl_804E9CD4:
/* 804E9CD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E9CD8  7C 08 02 A6 */	mflr r0
/* 804E9CDC  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804E9CE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E9CE4  38 C1 00 08 */	addi r6, r1, 8
/* 804E9CE8  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804E9CEC  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E9CF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E9CF4  7C 9F 23 78 */	mr r31, r4
/* 804E9CF8  38 80 00 00 */	li r4, 0
/* 804E9CFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E9D00  7C 7E 1B 78 */	mr r30, r3
/* 804E9D04  4B FF 02 5D */	bl Player_actor_SetupItem_Base1
/* 804E9D08  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E9D0C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E9D10  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804E9D14  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E9D18  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E9D1C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E9D20  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804E9D24  7F C3 F3 78 */	mr r3, r30
/* 804E9D28  FC 40 08 90 */	fmr f2, f1
/* 804E9D2C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804E9D30  80 E1 00 08 */	lwz r7, 8(r1)
/* 804E9D34  7F E4 FB 78 */	mr r4, r31
/* 804E9D38  38 A0 00 00 */	li r5, 0
/* 804E9D3C  4B FE C9 BD */	bl Player_actor_InitAnimation_Base1
/* 804E9D40  7F C3 F3 78 */	mr r3, r30
/* 804E9D44  7F E4 FB 78 */	mr r4, r31
/* 804E9D48  4B FE BB B1 */	bl Player_actor_setup_main_Base
/* 804E9D4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E9D50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E9D54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E9D58  7C 08 03 A6 */	mtlr r0
/* 804E9D5C  38 21 00 20 */	addi r1, r1, 0x20
/* 804E9D60  4E 80 00 20 */	blr 
