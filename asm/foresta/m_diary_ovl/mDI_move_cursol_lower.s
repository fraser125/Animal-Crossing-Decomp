lbl_805CF4C4:
/* 805CF4C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CF4C8  7C 08 02 A6 */	mflr r0
/* 805CF4CC  38 80 00 00 */	li r4, 0
/* 805CF4D0  38 C0 00 00 */	li r6, 0
/* 805CF4D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CF4D8  38 A1 00 08 */	addi r5, r1, 8
/* 805CF4DC  38 E0 00 00 */	li r7, 0
/* 805CF4E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805CF4E4  7C 7F 1B 78 */	mr r31, r3
/* 805CF4E8  A9 03 00 06 */	lha r8, 6(r3)
/* 805CF4EC  4B FF FE 85 */	bl func_805CF370
/* 805CF4F0  A8 61 00 08 */	lha r3, 8(r1)
/* 805CF4F4  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 805CF4F8  38 03 FF FA */	addi r0, r3, -6
/* 805CF4FC  7C 04 00 00 */	cmpw r4, r0
/* 805CF500  40 80 00 14 */	bge lbl_805CF514
/* 805CF504  38 64 00 01 */	addi r3, r4, 1
/* 805CF508  38 00 00 01 */	li r0, 1
/* 805CF50C  90 7F 00 18 */	stw r3, 0x18(r31)
/* 805CF510  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_805CF514:
/* 805CF514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CF518  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805CF51C  7C 08 03 A6 */	mtlr r0
/* 805CF520  38 21 00 20 */	addi r1, r1, 0x20
/* 805CF524  4E 80 00 20 */	blr 
