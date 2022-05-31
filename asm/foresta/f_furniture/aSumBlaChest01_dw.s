lbl_80635A6C:
/* 80635A6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80635A70  7C 08 02 A6 */	mflr r0
/* 80635A74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80635A78  39 61 00 20 */	addi r11, r1, 0x20
/* 80635A7C  4B A6 54 55 */	bl func_8009AED0
/* 80635A80  7C BD 2B 78 */	mr r29, r5
/* 80635A84  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80635A88  80 A5 00 00 */	lwz r5, 0(r5)
/* 80635A8C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80635A90  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80635A94  7C 7C 1B 78 */	mr r28, r3
/* 80635A98  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80635A9C  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80635AA0  38 7F 00 08 */	addi r3, r31, 8
/* 80635AA4  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80635AA8  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80635AAC  90 1F 00 00 */	stw r0, 0(r31)
/* 80635AB0  3B C3 02 10 */	addi r30, r3, 0x210
/* 80635AB4  80 7D 00 00 */	lwz r3, 0(r29)
/* 80635AB8  7F DC F2 14 */	add r30, r28, r30
/* 80635ABC  4B DD 79 19 */	bl _Matrix_to_Mtx_new
/* 80635AC0  90 7F 00 04 */	stw r3, 4(r31)
/* 80635AC4  7F A3 EB 78 */	mr r3, r29
/* 80635AC8  7F C5 F3 78 */	mr r5, r30
/* 80635ACC  38 9C 01 34 */	addi r4, r28, 0x134
/* 80635AD0  38 C0 00 00 */	li r6, 0
/* 80635AD4  38 E0 00 00 */	li r7, 0
/* 80635AD8  39 00 00 00 */	li r8, 0
/* 80635ADC  4B D3 BC 5D */	bl cKF_Si3_draw_R_SV
/* 80635AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80635AE4  4B A6 54 39 */	bl func_8009AF1C
/* 80635AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80635AEC  7C 08 03 A6 */	mtlr r0
/* 80635AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80635AF4  4E 80 00 20 */	blr 
