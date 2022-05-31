lbl_80634A5C:
/* 80634A5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80634A60  7C 08 02 A6 */	mflr r0
/* 80634A64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80634A68  39 61 00 20 */	addi r11, r1, 0x20
/* 80634A6C  4B A6 64 65 */	bl func_8009AED0
/* 80634A70  7C BD 2B 78 */	mr r29, r5
/* 80634A74  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80634A78  80 A5 00 00 */	lwz r5, 0(r5)
/* 80634A7C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80634A80  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80634A84  7C 7C 1B 78 */	mr r28, r3
/* 80634A88  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80634A8C  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80634A90  38 7F 00 08 */	addi r3, r31, 8
/* 80634A94  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80634A98  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80634A9C  90 1F 00 00 */	stw r0, 0(r31)
/* 80634AA0  3B C3 02 10 */	addi r30, r3, 0x210
/* 80634AA4  80 7D 00 00 */	lwz r3, 0(r29)
/* 80634AA8  7F DC F2 14 */	add r30, r28, r30
/* 80634AAC  4B DD 89 29 */	bl _Matrix_to_Mtx_new
/* 80634AB0  90 7F 00 04 */	stw r3, 4(r31)
/* 80634AB4  7F A3 EB 78 */	mr r3, r29
/* 80634AB8  7F C5 F3 78 */	mr r5, r30
/* 80634ABC  38 9C 01 34 */	addi r4, r28, 0x134
/* 80634AC0  38 C0 00 00 */	li r6, 0
/* 80634AC4  38 E0 00 00 */	li r7, 0
/* 80634AC8  39 00 00 00 */	li r8, 0
/* 80634ACC  4B D3 CC 6D */	bl cKF_Si3_draw_R_SV
/* 80634AD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80634AD4  4B A6 64 49 */	bl func_8009AF1C
/* 80634AD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80634ADC  7C 08 03 A6 */	mtlr r0
/* 80634AE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80634AE4  4E 80 00 20 */	blr 
