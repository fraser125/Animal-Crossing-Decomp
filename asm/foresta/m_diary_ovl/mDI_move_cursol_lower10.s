lbl_805CF55C:
/* 805CF55C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CF560  7C 08 02 A6 */	mflr r0
/* 805CF564  38 80 00 00 */	li r4, 0
/* 805CF568  38 C0 00 00 */	li r6, 0
/* 805CF56C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CF570  38 A1 00 08 */	addi r5, r1, 8
/* 805CF574  38 E0 00 00 */	li r7, 0
/* 805CF578  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805CF57C  7C 7F 1B 78 */	mr r31, r3
/* 805CF580  A9 03 00 06 */	lha r8, 6(r3)
/* 805CF584  4B FF FD ED */	bl func_805CF370
/* 805CF588  A8 61 00 08 */	lha r3, 8(r1)
/* 805CF58C  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 805CF590  38 63 FF FA */	addi r3, r3, -6
/* 805CF594  7C 04 18 00 */	cmpw r4, r3
/* 805CF598  40 80 00 24 */	bge lbl_805CF5BC
/* 805CF59C  38 04 00 0A */	addi r0, r4, 0xa
/* 805CF5A0  7C 00 18 00 */	cmpw r0, r3
/* 805CF5A4  40 80 00 0C */	bge lbl_805CF5B0
/* 805CF5A8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805CF5AC  48 00 00 08 */	b lbl_805CF5B4
lbl_805CF5B0:
/* 805CF5B0  90 7F 00 18 */	stw r3, 0x18(r31)
lbl_805CF5B4:
/* 805CF5B4  38 00 00 01 */	li r0, 1
/* 805CF5B8  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_805CF5BC:
/* 805CF5BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CF5C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805CF5C4  7C 08 03 A6 */	mtlr r0
/* 805CF5C8  38 21 00 20 */	addi r1, r1, 0x20
/* 805CF5CC  4E 80 00 20 */	blr 
