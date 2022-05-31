lbl_804FCE00:
/* 804FCE00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FCE04  7C 08 02 A6 */	mflr r0
/* 804FCE08  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FCE0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FCE10  7C 9F 23 78 */	mr r31, r4
/* 804FCE14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FCE18  7C 7E 1B 78 */	mr r30, r3
/* 804FCE1C  80 03 0D 60 */	lwz r0, 0xd60(r3)
/* 804FCE20  2C 00 00 00 */	cmpwi r0, 0
/* 804FCE24  41 82 00 0C */	beq lbl_804FCE30
/* 804FCE28  38 00 00 01 */	li r0, 1
/* 804FCE2C  98 1E 0E 6C */	stb r0, 0xe6c(r30)
lbl_804FCE30:
/* 804FCE30  38 00 00 00 */	li r0, 0
/* 804FCE34  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FCE38  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 804FCE3C  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FCE40  C0 23 83 54 */	lfs f1, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FCE44  7F C3 F3 78 */	mr r3, r30
/* 804FCE48  80 1E 0D 64 */	lwz r0, 0xd64(r30)
/* 804FCE4C  38 C1 00 08 */	addi r6, r1, 8
/* 804FCE50  38 80 00 00 */	li r4, 0
/* 804FCE54  90 1E 0D 1C */	stw r0, 0xd1c(r30)
/* 804FCE58  4B FD D1 09 */	bl Player_actor_SetupItem_Base1
/* 804FCE5C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FCE60  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FCE64  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FCE68  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FCE6C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FCE70  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FCE74  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FCE78  7F C3 F3 78 */	mr r3, r30
/* 804FCE7C  FC 40 08 90 */	fmr f2, f1
/* 804FCE80  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FCE84  80 E1 00 08 */	lwz r7, 8(r1)
/* 804FCE88  7F E4 FB 78 */	mr r4, r31
/* 804FCE8C  38 A0 00 00 */	li r5, 0
/* 804FCE90  4B FD 98 69 */	bl Player_actor_InitAnimation_Base1
/* 804FCE94  7F C3 F3 78 */	mr r3, r30
/* 804FCE98  7F E4 FB 78 */	mr r4, r31
/* 804FCE9C  4B FD 8A 5D */	bl Player_actor_setup_main_Base
/* 804FCEA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FCEA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FCEA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FCEAC  7C 08 03 A6 */	mtlr r0
/* 804FCEB0  38 21 00 20 */	addi r1, r1, 0x20
/* 804FCEB4  4E 80 00 20 */	blr 
