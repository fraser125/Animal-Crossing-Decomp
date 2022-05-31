lbl_8042D664:
/* 8042D664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D668  7C 08 02 A6 */	mflr r0
/* 8042D66C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042D674  7C 9F 23 78 */	mr r31, r4
/* 8042D678  93 C1 00 08 */	stw r30, 8(r1)
/* 8042D67C  7C 7E 1B 78 */	mr r30, r3
/* 8042D680  38 7F 02 48 */	addi r3, r31, 0x248
/* 8042D684  4B F4 2E 05 */	bl cKF_FrameControl_passCheck_now
/* 8042D688  2C 03 00 01 */	cmpwi r3, 1
/* 8042D68C  40 82 00 10 */	bne lbl_8042D69C
/* 8042D690  7F C3 F3 78 */	mr r3, r30
/* 8042D694  38 9F 00 28 */	addi r4, r31, 0x28
/* 8042D698  48 20 09 11 */	bl sAdo_OngenTrgStart
lbl_8042D69C:
/* 8042D69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D6A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042D6A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042D6A8  7C 08 03 A6 */	mtlr r0
/* 8042D6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D6B0  4E 80 00 20 */	blr 
