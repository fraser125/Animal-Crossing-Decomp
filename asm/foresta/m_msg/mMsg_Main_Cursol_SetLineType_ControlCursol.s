lbl_803C477C:
/* 803C477C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4780  7C 08 02 A6 */	mflr r0
/* 803C4784  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C478C  7C 9F 23 78 */	mr r31, r4
/* 803C4790  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4794  4B FF B8 B5 */	bl func_803C0048
/* 803C4798  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C479C  7C 00 1A 14 */	add r0, r0, r3
/* 803C47A0  38 60 00 00 */	li r3, 0
/* 803C47A4  90 1F 00 00 */	stw r0, 0(r31)
/* 803C47A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C47AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C47B0  7C 08 03 A6 */	mtlr r0
/* 803C47B4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C47B8  4E 80 00 20 */	blr 
