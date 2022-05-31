lbl_8063BC68:
/* 8063BC68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063BC6C  7C 08 02 A6 */	mflr r0
/* 8063BC70  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063BC74  39 61 00 20 */	addi r11, r1, 0x20
/* 8063BC78  4B A5 F2 59 */	bl func_8009AED0
/* 8063BC7C  7C BD 2B 78 */	mr r29, r5
/* 8063BC80  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063BC84  80 A5 00 00 */	lwz r5, 0(r5)
/* 8063BC88  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063BC8C  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8063BC90  7C 7C 1B 78 */	mr r28, r3
/* 8063BC94  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8063BC98  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8063BC9C  38 7F 00 08 */	addi r3, r31, 8
/* 8063BCA0  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 8063BCA4  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063BCA8  90 1F 00 00 */	stw r0, 0(r31)
/* 8063BCAC  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063BCB0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063BCB4  7F DC F2 14 */	add r30, r28, r30
/* 8063BCB8  4B DD 17 1D */	bl _Matrix_to_Mtx_new
/* 8063BCBC  90 7F 00 04 */	stw r3, 4(r31)
/* 8063BCC0  7F A3 EB 78 */	mr r3, r29
/* 8063BCC4  7F C5 F3 78 */	mr r5, r30
/* 8063BCC8  38 9C 01 34 */	addi r4, r28, 0x134
/* 8063BCCC  38 C0 00 00 */	li r6, 0
/* 8063BCD0  38 E0 00 00 */	li r7, 0
/* 8063BCD4  39 00 00 00 */	li r8, 0
/* 8063BCD8  4B D3 5A 61 */	bl cKF_Si3_draw_R_SV
/* 8063BCDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8063BCE0  4B A5 F2 3D */	bl func_8009AF1C
/* 8063BCE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063BCE8  7C 08 03 A6 */	mtlr r0
/* 8063BCEC  38 21 00 20 */	addi r1, r1, 0x20
/* 8063BCF0  4E 80 00 20 */	blr 
