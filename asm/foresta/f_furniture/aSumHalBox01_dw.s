lbl_80637B80:
/* 80637B80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80637B84  7C 08 02 A6 */	mflr r0
/* 80637B88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80637B8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80637B90  4B A6 33 41 */	bl func_8009AED0
/* 80637B94  7C BD 2B 78 */	mr r29, r5
/* 80637B98  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80637B9C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80637BA0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80637BA4  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80637BA8  7C 7C 1B 78 */	mr r28, r3
/* 80637BAC  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80637BB0  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80637BB4  38 7F 00 08 */	addi r3, r31, 8
/* 80637BB8  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80637BBC  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80637BC0  90 1F 00 00 */	stw r0, 0(r31)
/* 80637BC4  3B C3 02 10 */	addi r30, r3, 0x210
/* 80637BC8  80 7D 00 00 */	lwz r3, 0(r29)
/* 80637BCC  7F DC F2 14 */	add r30, r28, r30
/* 80637BD0  4B DD 58 05 */	bl _Matrix_to_Mtx_new
/* 80637BD4  90 7F 00 04 */	stw r3, 4(r31)
/* 80637BD8  7F A3 EB 78 */	mr r3, r29
/* 80637BDC  7F C5 F3 78 */	mr r5, r30
/* 80637BE0  38 9C 01 34 */	addi r4, r28, 0x134
/* 80637BE4  38 C0 00 00 */	li r6, 0
/* 80637BE8  38 E0 00 00 */	li r7, 0
/* 80637BEC  39 00 00 00 */	li r8, 0
/* 80637BF0  4B D3 9B 49 */	bl cKF_Si3_draw_R_SV
/* 80637BF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80637BF8  4B A6 33 25 */	bl func_8009AF1C
/* 80637BFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80637C00  7C 08 03 A6 */	mtlr r0
/* 80637C04  38 21 00 20 */	addi r1, r1, 0x20
/* 80637C08  4E 80 00 20 */	blr 
