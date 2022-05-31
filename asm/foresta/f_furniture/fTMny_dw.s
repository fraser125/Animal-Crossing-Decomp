lbl_8063D284:
/* 8063D284  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063D288  7C 08 02 A6 */	mflr r0
/* 8063D28C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063D290  39 61 00 20 */	addi r11, r1, 0x20
/* 8063D294  4B A5 DC 3D */	bl func_8009AED0
/* 8063D298  7C BD 2B 78 */	mr r29, r5
/* 8063D29C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063D2A0  80 A5 00 00 */	lwz r5, 0(r5)
/* 8063D2A4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063D2A8  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8063D2AC  7C 7C 1B 78 */	mr r28, r3
/* 8063D2B0  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8063D2B4  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8063D2B8  38 7F 00 08 */	addi r3, r31, 8
/* 8063D2BC  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 8063D2C0  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063D2C4  90 1F 00 00 */	stw r0, 0(r31)
/* 8063D2C8  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063D2CC  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063D2D0  7F DC F2 14 */	add r30, r28, r30
/* 8063D2D4  4B DD 01 01 */	bl _Matrix_to_Mtx_new
/* 8063D2D8  90 7F 00 04 */	stw r3, 4(r31)
/* 8063D2DC  7F A3 EB 78 */	mr r3, r29
/* 8063D2E0  7F C5 F3 78 */	mr r5, r30
/* 8063D2E4  38 9C 01 34 */	addi r4, r28, 0x134
/* 8063D2E8  38 C0 00 00 */	li r6, 0
/* 8063D2EC  38 E0 00 00 */	li r7, 0
/* 8063D2F0  39 00 00 00 */	li r8, 0
/* 8063D2F4  4B D3 44 45 */	bl cKF_Si3_draw_R_SV
/* 8063D2F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063D2FC  4B A5 DC 21 */	bl func_8009AF1C
/* 8063D300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063D304  7C 08 03 A6 */	mtlr r0
/* 8063D308  38 21 00 20 */	addi r1, r1, 0x20
/* 8063D30C  4E 80 00 20 */	blr 
