lbl_803C4B98:
/* 803C4B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4B9C  7C 08 02 A6 */	mflr r0
/* 803C4BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4BA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4BA8  7C 9F 23 78 */	mr r31, r4
/* 803C4BAC  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4BB0  4B FF B4 99 */	bl func_803C0048
/* 803C4BB4  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4BB8  7C 00 1A 14 */	add r0, r0, r3
/* 803C4BBC  90 1F 00 00 */	stw r0, 0(r31)
/* 803C4BC0  4B FB E9 81 */	bl func_80383540
/* 803C4BC4  4B FB F9 19 */	bl mChoice_no_b_set
/* 803C4BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4BCC  38 60 00 00 */	li r3, 0
/* 803C4BD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C4BD4  7C 08 03 A6 */	mtlr r0
/* 803C4BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4BDC  4E 80 00 20 */	blr 
