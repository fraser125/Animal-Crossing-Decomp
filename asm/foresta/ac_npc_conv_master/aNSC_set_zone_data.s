lbl_805466E8:
/* 805466E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805466EC  7C 08 02 A6 */	mflr r0
/* 805466F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805466F4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805466F8  7C 9F 23 78 */	mr r31, r4
/* 805466FC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80546700  7C 7E 1B 78 */	mr r30, r3
/* 80546704  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80546708  38 61 00 14 */	addi r3, r1, 0x14
/* 8054670C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80546710  90 81 00 14 */	stw r4, 0x14(r1)
/* 80546714  90 01 00 18 */	stw r0, 0x18(r1)
/* 80546718  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8054671C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80546720  4B FF F0 71 */	bl aNCM_get_zone
/* 80546724  28 1F 00 00 */	cmplwi r31, 0
/* 80546728  98 7E 09 A2 */	stb r3, 0x9a2(r30)
/* 8054672C  41 82 00 28 */	beq lbl_80546754
/* 80546730  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80546734  38 61 00 08 */	addi r3, r1, 8
/* 80546738  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8054673C  90 81 00 08 */	stw r4, 8(r1)
/* 80546740  90 01 00 0C */	stw r0, 0xc(r1)
/* 80546744  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80546748  90 01 00 10 */	stw r0, 0x10(r1)
/* 8054674C  4B FF F0 45 */	bl aNCM_get_zone
/* 80546750  98 7E 09 A4 */	stb r3, 0x9a4(r30)
lbl_80546754:
/* 80546754  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80546758  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8054675C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80546760  7C 08 03 A6 */	mtlr r0
/* 80546764  38 21 00 30 */	addi r1, r1, 0x30
/* 80546768  4E 80 00 20 */	blr 