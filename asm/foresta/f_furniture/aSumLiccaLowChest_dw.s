lbl_80638D54:
/* 80638D54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80638D58  7C 08 02 A6 */	mflr r0
/* 80638D5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80638D60  39 61 00 20 */	addi r11, r1, 0x20
/* 80638D64  4B A6 21 6D */	bl func_8009AED0
/* 80638D68  7C BD 2B 78 */	mr r29, r5
/* 80638D6C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80638D70  80 A5 00 00 */	lwz r5, 0(r5)
/* 80638D74  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80638D78  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80638D7C  7C 7C 1B 78 */	mr r28, r3
/* 80638D80  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80638D84  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80638D88  38 7F 00 08 */	addi r3, r31, 8
/* 80638D8C  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80638D90  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80638D94  90 1F 00 00 */	stw r0, 0(r31)
/* 80638D98  3B C3 02 10 */	addi r30, r3, 0x210
/* 80638D9C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80638DA0  7F DC F2 14 */	add r30, r28, r30
/* 80638DA4  4B DD 46 31 */	bl _Matrix_to_Mtx_new
/* 80638DA8  90 7F 00 04 */	stw r3, 4(r31)
/* 80638DAC  7F A3 EB 78 */	mr r3, r29
/* 80638DB0  7F C5 F3 78 */	mr r5, r30
/* 80638DB4  38 9C 01 34 */	addi r4, r28, 0x134
/* 80638DB8  38 C0 00 00 */	li r6, 0
/* 80638DBC  38 E0 00 00 */	li r7, 0
/* 80638DC0  39 00 00 00 */	li r8, 0
/* 80638DC4  4B D3 89 75 */	bl cKF_Si3_draw_R_SV
/* 80638DC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80638DCC  4B A6 21 51 */	bl func_8009AF1C
/* 80638DD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80638DD4  7C 08 03 A6 */	mtlr r0
/* 80638DD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80638DDC  4E 80 00 20 */	blr 
