lbl_80638F78:
/* 80638F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80638F7C  7C 08 02 A6 */	mflr r0
/* 80638F80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80638F84  39 61 00 20 */	addi r11, r1, 0x20
/* 80638F88  4B A6 1F 49 */	bl func_8009AED0
/* 80638F8C  7C BD 2B 78 */	mr r29, r5
/* 80638F90  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80638F94  80 A5 00 00 */	lwz r5, 0(r5)
/* 80638F98  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80638F9C  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80638FA0  7C 7C 1B 78 */	mr r28, r3
/* 80638FA4  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80638FA8  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80638FAC  38 7F 00 08 */	addi r3, r31, 8
/* 80638FB0  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80638FB4  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80638FB8  90 1F 00 00 */	stw r0, 0(r31)
/* 80638FBC  3B C3 02 10 */	addi r30, r3, 0x210
/* 80638FC0  80 7D 00 00 */	lwz r3, 0(r29)
/* 80638FC4  7F DC F2 14 */	add r30, r28, r30
/* 80638FC8  4B DD 44 0D */	bl _Matrix_to_Mtx_new
/* 80638FCC  90 7F 00 04 */	stw r3, 4(r31)
/* 80638FD0  7F A3 EB 78 */	mr r3, r29
/* 80638FD4  7F C5 F3 78 */	mr r5, r30
/* 80638FD8  38 9C 01 34 */	addi r4, r28, 0x134
/* 80638FDC  38 C0 00 00 */	li r6, 0
/* 80638FE0  38 E0 00 00 */	li r7, 0
/* 80638FE4  39 00 00 00 */	li r8, 0
/* 80638FE8  4B D3 87 51 */	bl cKF_Si3_draw_R_SV
/* 80638FEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80638FF0  4B A6 1F 2D */	bl func_8009AF1C
/* 80638FF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80638FF8  7C 08 03 A6 */	mtlr r0
/* 80638FFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80639000  4E 80 00 20 */	blr 
