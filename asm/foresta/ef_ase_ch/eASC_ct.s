lbl_806052A4:
/* 806052A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806052A8  7C 08 02 A6 */	mflr r0
/* 806052AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806052B0  38 00 00 14 */	li r0, 0x14
/* 806052B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806052B8  7C 7F 1B 78 */	mr r31, r3
/* 806052BC  B0 03 00 00 */	sth r0, 0(r3)
/* 806052C0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 806052C4  4B FF FE FD */	bl func_806051C0
/* 806052C8  38 7F 00 28 */	addi r3, r31, 0x28
/* 806052CC  4B FF FF 45 */	bl eASC_SetAseGravity
/* 806052D0  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064BBCC@ha */
/* 806052D4  C0 03 BB CC */	lfs f0, lit_394@l(r3)  /* 0x8064BBCC@l */
/* 806052D8  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 806052DC  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 806052E0  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 806052E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806052E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806052EC  7C 08 03 A6 */	mtlr r0
/* 806052F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806052F4  4E 80 00 20 */	blr 
