lbl_805E3584:
/* 805E3584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E3588  7C 08 02 A6 */	mflr r0
/* 805E358C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E3590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E3594  7C 9F 23 78 */	mr r31, r4
/* 805E3598  93 C1 00 08 */	stw r30, 8(r1)
/* 805E359C  7C 7E 1B 78 */	mr r30, r3
/* 805E35A0  38 60 00 05 */	li r3, 5
/* 805E35A4  4B D9 91 ED */	bl mBGMPsComp_pause
/* 805E35A8  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E35AC  7F C3 F3 78 */	mr r3, r30
/* 805E35B0  7F E4 FB 78 */	mr r4, r31
/* 805E35B4  81 85 09 48 */	lwz r12, 0x948(r5)
/* 805E35B8  7D 89 03 A6 */	mtctr r12
/* 805E35BC  4E 80 04 21 */	bctrl 
/* 805E35C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E35C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E35C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E35CC  7C 08 03 A6 */	mtlr r0
/* 805E35D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805E35D4  4E 80 00 20 */	blr 
