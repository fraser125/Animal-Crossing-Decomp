lbl_805A7324:
/* 805A7324  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A7328  7C 08 02 A6 */	mflr r0
/* 805A732C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A7330  38 A1 00 10 */	addi r5, r1, 0x10
/* 805A7334  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805A7338  3B E0 00 00 */	li r31, 0
/* 805A733C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805A7340  7C 9E 23 78 */	mr r30, r4
/* 805A7344  38 81 00 08 */	addi r4, r1, 8
/* 805A7348  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 805A734C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 805A7350  90 C1 00 10 */	stw r6, 0x10(r1)
/* 805A7354  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7358  80 03 00 30 */	lwz r0, 0x30(r3)
/* 805A735C  38 61 00 0C */	addi r3, r1, 0xc
/* 805A7360  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A7364  4B DF E3 FD */	bl mFI_Wpos2BlockNum
/* 805A7368  2C 03 00 01 */	cmpwi r3, 1
/* 805A736C  40 82 00 30 */	bne lbl_805A739C
/* 805A7370  88 7E 00 E4 */	lbz r3, 0xe4(r30)
/* 805A7374  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A7378  7C 63 07 74 */	extsb r3, r3
/* 805A737C  7C 03 00 00 */	cmpw r3, r0
/* 805A7380  40 82 00 1C */	bne lbl_805A739C
/* 805A7384  88 7E 00 E5 */	lbz r3, 0xe5(r30)
/* 805A7388  80 01 00 08 */	lwz r0, 8(r1)
/* 805A738C  7C 63 07 74 */	extsb r3, r3
/* 805A7390  7C 03 00 00 */	cmpw r3, r0
/* 805A7394  40 82 00 08 */	bne lbl_805A739C
/* 805A7398  3B E0 00 01 */	li r31, 1
lbl_805A739C:
/* 805A739C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A73A0  7F E3 FB 78 */	mr r3, r31
/* 805A73A4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A73A8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805A73AC  7C 08 03 A6 */	mtlr r0
/* 805A73B0  38 21 00 30 */	addi r1, r1, 0x30
/* 805A73B4  4E 80 00 20 */	blr 
