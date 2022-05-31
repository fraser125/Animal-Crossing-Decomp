lbl_804D6588:
/* 804D6588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D658C  7C 08 02 A6 */	mflr r0
/* 804D6590  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D6598  7C 7F 1B 78 */	mr r31, r3
/* 804D659C  C0 03 01 84 */	lfs f0, 0x184(r3)
/* 804D65A0  D0 04 00 00 */	stfs f0, 0(r4)
/* 804D65A4  4B FF FF A9 */	bl Player_actor_CulcAnimation_Base
/* 804D65A8  2C 03 00 01 */	cmpwi r3, 1
/* 804D65AC  40 82 00 28 */	bne lbl_804D65D4
/* 804D65B0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D65B4  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 804D65B8  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
/* 804D65BC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D65C0  40 82 00 0C */	bne lbl_804D65CC
/* 804D65C4  38 60 00 01 */	li r3, 1
/* 804D65C8  48 00 00 10 */	b lbl_804D65D8
lbl_804D65CC:
/* 804D65CC  D0 3F 01 80 */	stfs f1, 0x180(r31)
/* 804D65D0  D0 3F 01 F0 */	stfs f1, 0x1f0(r31)
lbl_804D65D4:
/* 804D65D4  38 60 00 00 */	li r3, 0
lbl_804D65D8:
/* 804D65D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D65DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D65E0  7C 08 03 A6 */	mtlr r0
/* 804D65E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D65E8  4E 80 00 20 */	blr 
