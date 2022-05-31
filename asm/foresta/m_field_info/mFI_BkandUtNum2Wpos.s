lbl_803A5C64:
/* 803A5C64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A5C68  7C 08 02 A6 */	mflr r0
/* 803A5C6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A5C70  39 61 00 30 */	addi r11, r1, 0x30
/* 803A5C74  4B CF 52 61 */	bl func_8009AED4
/* 803A5C78  7C A0 2B 78 */	mr r0, r5
/* 803A5C7C  7C 7D 1B 78 */	mr r29, r3
/* 803A5C80  7C DE 33 78 */	mr r30, r6
/* 803A5C84  7C 85 23 78 */	mr r5, r4
/* 803A5C88  7C FF 3B 78 */	mr r31, r7
/* 803A5C8C  7C 06 03 78 */	mr r6, r0
/* 803A5C90  38 61 00 14 */	addi r3, r1, 0x14
/* 803A5C94  38 81 00 10 */	addi r4, r1, 0x10
/* 803A5C98  4B FF FE E1 */	bl mFI_BkNum2WposXZ
/* 803A5C9C  7F C5 F3 78 */	mr r5, r30
/* 803A5CA0  7F E6 FB 78 */	mr r6, r31
/* 803A5CA4  38 61 00 0C */	addi r3, r1, 0xc
/* 803A5CA8  38 81 00 08 */	addi r4, r1, 8
/* 803A5CAC  4B FF FF 69 */	bl mFI_UtNum2PosXZInBk
/* 803A5CB0  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 803A5CB4  3C 60 80 64 */	lis r3, lit_637@ha /* 0x80641F44@ha */
/* 803A5CB8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803A5CBC  39 61 00 30 */	addi r11, r1, 0x30
/* 803A5CC0  C0 03 1F 44 */	lfs f0, lit_637@l(r3)  /* 0x80641F44@l */
/* 803A5CC4  EC 22 08 2A */	fadds f1, f2, f1
/* 803A5CC8  D0 3D 00 00 */	stfs f1, 0(r29)
/* 803A5CCC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 803A5CD0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 803A5CD4  C0 01 00 08 */	lfs f0, 8(r1)
/* 803A5CD8  EC 01 00 2A */	fadds f0, f1, f0
/* 803A5CDC  D0 1D 00 08 */	stfs f0, 8(r29)
/* 803A5CE0  4B CF 52 41 */	bl func_8009AF20
/* 803A5CE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A5CE8  7C 08 03 A6 */	mtlr r0
/* 803A5CEC  38 21 00 30 */	addi r1, r1, 0x30
/* 803A5CF0  4E 80 00 20 */	blr 
