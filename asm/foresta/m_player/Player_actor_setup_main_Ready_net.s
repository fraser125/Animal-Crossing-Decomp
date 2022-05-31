lbl_804F1F88:
/* 804F1F88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F1F8C  7C 08 02 A6 */	mflr r0
/* 804F1F90  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804F1F94  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F1F98  38 C1 00 08 */	addi r6, r1, 8
/* 804F1F9C  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804F1FA0  38 A1 00 0C */	addi r5, r1, 0xc
/* 804F1FA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F1FA8  7C 9F 23 78 */	mr r31, r4
/* 804F1FAC  38 80 00 18 */	li r4, 0x18
/* 804F1FB0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F1FB4  7C 7E 1B 78 */	mr r30, r3
/* 804F1FB8  4B FE 7F A9 */	bl Player_actor_SetupItem_Base1
/* 804F1FBC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F1FC0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F1FC4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F1FC8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F1FCC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F1FD0  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F1FD4  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804F1FD8  7F C3 F3 78 */	mr r3, r30
/* 804F1FDC  FC 40 08 90 */	fmr f2, f1
/* 804F1FE0  7F E4 FB 78 */	mr r4, r31
/* 804F1FE4  38 A0 00 18 */	li r5, 0x18
/* 804F1FE8  38 C0 00 18 */	li r6, 0x18
/* 804F1FEC  38 E0 00 00 */	li r7, 0
/* 804F1FF0  4B FE 47 09 */	bl Player_actor_InitAnimation_Base1
/* 804F1FF4  7F C3 F3 78 */	mr r3, r30
/* 804F1FF8  7F E4 FB 78 */	mr r4, r31
/* 804F1FFC  4B FE 38 FD */	bl Player_actor_setup_main_Base
/* 804F2000  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F2004  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F2008  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F200C  7C 08 03 A6 */	mtlr r0
/* 804F2010  38 21 00 20 */	addi r1, r1, 0x20
/* 804F2014  4E 80 00 20 */	blr 
