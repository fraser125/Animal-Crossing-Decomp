lbl_806367FC:
/* 806367FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80636800  7C 08 02 A6 */	mflr r0
/* 80636804  90 01 00 24 */	stw r0, 0x24(r1)
/* 80636808  39 61 00 20 */	addi r11, r1, 0x20
/* 8063680C  4B A6 46 C5 */	bl func_8009AED0
/* 80636810  7C BD 2B 78 */	mr r29, r5
/* 80636814  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80636818  80 A5 00 00 */	lwz r5, 0(r5)
/* 8063681C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80636820  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80636824  7C 7C 1B 78 */	mr r28, r3
/* 80636828  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8063682C  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80636830  38 7F 00 08 */	addi r3, r31, 8
/* 80636834  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80636838  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063683C  90 1F 00 00 */	stw r0, 0(r31)
/* 80636840  3B C3 02 10 */	addi r30, r3, 0x210
/* 80636844  80 7D 00 00 */	lwz r3, 0(r29)
/* 80636848  7F DC F2 14 */	add r30, r28, r30
/* 8063684C  4B DD 6B 89 */	bl _Matrix_to_Mtx_new
/* 80636850  90 7F 00 04 */	stw r3, 4(r31)
/* 80636854  7F A3 EB 78 */	mr r3, r29
/* 80636858  7F C5 F3 78 */	mr r5, r30
/* 8063685C  38 9C 01 34 */	addi r4, r28, 0x134
/* 80636860  38 C0 00 00 */	li r6, 0
/* 80636864  38 E0 00 00 */	li r7, 0
/* 80636868  39 00 00 00 */	li r8, 0
/* 8063686C  4B D3 AE CD */	bl cKF_Si3_draw_R_SV
/* 80636870  39 61 00 20 */	addi r11, r1, 0x20
/* 80636874  4B A6 46 A9 */	bl func_8009AF1C
/* 80636878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063687C  7C 08 03 A6 */	mtlr r0
/* 80636880  38 21 00 20 */	addi r1, r1, 0x20
/* 80636884  4E 80 00 20 */	blr 
