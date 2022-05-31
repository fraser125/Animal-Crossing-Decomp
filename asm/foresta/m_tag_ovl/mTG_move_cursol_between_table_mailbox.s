lbl_805FA31C:
/* 805FA31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FA320  7C 08 02 A6 */	mflr r0
/* 805FA324  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FA328  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 805FA32C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FA330  3B E0 00 00 */	li r31, 0
/* 805FA334  93 C1 00 08 */	stw r30, 8(r1)
/* 805FA338  7C 9E 23 78 */	mr r30, r4
/* 805FA33C  41 82 00 34 */	beq lbl_805FA370
/* 805FA340  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FA344  2C 00 00 01 */	cmpwi r0, 1
/* 805FA348  40 82 00 28 */	bne lbl_805FA370
/* 805FA34C  4B FF 52 99 */	bl func_805EF5E4
/* 805FA350  2C 03 00 00 */	cmpwi r3, 0
/* 805FA354  41 82 00 44 */	beq lbl_805FA398
/* 805FA358  38 60 00 05 */	li r3, 5
/* 805FA35C  38 00 00 01 */	li r0, 1
/* 805FA360  90 7E 00 38 */	stw r3, 0x38(r30)
/* 805FA364  3B E0 00 01 */	li r31, 1
/* 805FA368  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805FA36C  48 00 00 2C */	b lbl_805FA398
lbl_805FA370:
/* 805FA370  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 805FA374  41 82 00 24 */	beq lbl_805FA398
/* 805FA378  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FA37C  2C 00 00 05 */	cmpwi r0, 5
/* 805FA380  40 82 00 18 */	bne lbl_805FA398
/* 805FA384  38 60 00 01 */	li r3, 1
/* 805FA388  38 00 00 00 */	li r0, 0
/* 805FA38C  90 7E 00 38 */	stw r3, 0x38(r30)
/* 805FA390  3B E0 00 01 */	li r31, 1
/* 805FA394  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_805FA398:
/* 805FA398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FA39C  7F E3 FB 78 */	mr r3, r31
/* 805FA3A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FA3A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FA3A8  7C 08 03 A6 */	mtlr r0
/* 805FA3AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805FA3B0  4E 80 00 20 */	blr 
