lbl_805E2030:
/* 805E2030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E2034  7C 08 02 A6 */	mflr r0
/* 805E2038  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E203C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E2040  80 C4 00 00 */	lwz r6, 0(r4)
/* 805E2044  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805E2048  80 06 02 D4 */	lwz r0, 0x2d4(r6)
/* 805E204C  38 E3 02 24 */	addi r7, r3, 0x224
/* 805E2050  80 63 02 3C */	lwz r3, 0x23c(r3)
/* 805E2054  88 63 00 01 */	lbz r3, 1(r3)
/* 805E2058  54 63 30 32 */	slwi r3, r3, 6
/* 805E205C  7C A3 00 51 */	subf. r5, r3, r0
/* 805E2060  90 A6 02 D4 */	stw r5, 0x2d4(r6)
/* 805E2064  41 82 00 1C */	beq lbl_805E2080
/* 805E2068  7C 83 23 78 */	mr r3, r4
/* 805E206C  7C E4 3B 78 */	mr r4, r7
/* 805E2070  38 C0 00 00 */	li r6, 0
/* 805E2074  38 E0 00 00 */	li r7, 0
/* 805E2078  39 00 00 00 */	li r8, 0
/* 805E207C  4B D8 F6 BD */	bl cKF_Si3_draw_R_SV
lbl_805E2080:
/* 805E2080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E2084  7C 08 03 A6 */	mtlr r0
/* 805E2088  38 21 00 10 */	addi r1, r1, 0x10
/* 805E208C  4E 80 00 20 */	blr 
