lbl_805BDFF4:
/* 805BDFF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BDFF8  7C 08 02 A6 */	mflr r0
/* 805BDFFC  38 80 00 00 */	li r4, 0
/* 805BE000  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BE004  48 00 00 15 */	bl aTnt_ChangeFg
/* 805BE008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BE00C  7C 08 03 A6 */	mtlr r0
/* 805BE010  38 21 00 10 */	addi r1, r1, 0x10
/* 805BE014  4E 80 00 20 */	blr 
