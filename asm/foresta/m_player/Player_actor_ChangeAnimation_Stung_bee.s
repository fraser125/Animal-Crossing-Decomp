lbl_80502BB0:
/* 80502BB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80502BB4  7C 08 02 A6 */	mflr r0
/* 80502BB8  2C 05 00 00 */	cmpwi r5, 0
/* 80502BBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80502BC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80502BC4  7C 9F 23 78 */	mr r31, r4
/* 80502BC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80502BCC  7C 7E 1B 78 */	mr r30, r3
/* 80502BD0  41 82 00 64 */	beq lbl_80502C34
/* 80502BD4  80 1E 0D B4 */	lwz r0, 0xdb4(r30)
/* 80502BD8  2C 00 00 77 */	cmpwi r0, 0x77
/* 80502BDC  40 82 00 58 */	bne lbl_80502C34
/* 80502BE0  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 80502BE4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80502BE8  C0 24 83 54 */	lfs f1, lit_7381@l(r4)  /* 0x80648354@l */
/* 80502BEC  38 C1 00 08 */	addi r6, r1, 8
/* 80502BF0  38 80 00 78 */	li r4, 0x78
/* 80502BF4  4B FD 73 6D */	bl Player_actor_SetupItem_Base1
/* 80502BF8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80502BFC  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80502C00  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80502C04  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80502C08  C0 25 00 00 */	lfs f1, 0(r5)
/* 80502C0C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80502C10  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80502C14  7F C3 F3 78 */	mr r3, r30
/* 80502C18  FC 40 08 90 */	fmr f2, f1
/* 80502C1C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80502C20  81 01 00 08 */	lwz r8, 8(r1)
/* 80502C24  7F E4 FB 78 */	mr r4, r31
/* 80502C28  38 A0 00 78 */	li r5, 0x78
/* 80502C2C  38 E0 00 00 */	li r7, 0
/* 80502C30  4B FD 3B E1 */	bl Player_actor_InitAnimation_Base2
lbl_80502C34:
/* 80502C34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80502C38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80502C3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80502C40  7C 08 03 A6 */	mtlr r0
/* 80502C44  38 21 00 20 */	addi r1, r1, 0x20
/* 80502C48  4E 80 00 20 */	blr 
