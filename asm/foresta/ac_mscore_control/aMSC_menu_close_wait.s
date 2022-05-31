lbl_80515C98:
/* 80515C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80515C9C  7C 08 02 A6 */	mflr r0
/* 80515CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515CA4  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 80515CA8  28 00 00 00 */	cmplwi r0, 0
/* 80515CAC  40 82 00 1C */	bne lbl_80515CC8
/* 80515CB0  88 04 1F 4F */	lbz r0, 0x1f4f(r4)
/* 80515CB4  38 80 00 00 */	li r4, 0
/* 80515CB8  28 00 00 0C */	cmplwi r0, 0xc
/* 80515CBC  40 82 00 08 */	bne lbl_80515CC4
/* 80515CC0  38 80 00 02 */	li r4, 2
lbl_80515CC4:
/* 80515CC4  48 00 06 25 */	bl aMSC_setupAction
lbl_80515CC8:
/* 80515CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80515CCC  7C 08 03 A6 */	mtlr r0
/* 80515CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80515CD4  4E 80 00 20 */	blr 
