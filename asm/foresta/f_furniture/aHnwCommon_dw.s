lbl_8062F49C:
/* 8062F49C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062F4A0  7C 08 02 A6 */	mflr r0
/* 8062F4A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062F4A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8062F4AC  4B A6 BA 25 */	bl func_8009AED0
/* 8062F4B0  7C BD 2B 78 */	mr r29, r5
/* 8062F4B4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8062F4B8  80 A5 00 00 */	lwz r5, 0(r5)
/* 8062F4BC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8062F4C0  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8062F4C4  7C 7C 1B 78 */	mr r28, r3
/* 8062F4C8  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8062F4CC  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8062F4D0  38 7F 00 08 */	addi r3, r31, 8
/* 8062F4D4  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 8062F4D8  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8062F4DC  90 1F 00 00 */	stw r0, 0(r31)
/* 8062F4E0  3B C3 02 10 */	addi r30, r3, 0x210
/* 8062F4E4  80 7D 00 00 */	lwz r3, 0(r29)
/* 8062F4E8  7F DC F2 14 */	add r30, r28, r30
/* 8062F4EC  4B DD DE E9 */	bl _Matrix_to_Mtx_new
/* 8062F4F0  90 7F 00 04 */	stw r3, 4(r31)
/* 8062F4F4  7F A3 EB 78 */	mr r3, r29
/* 8062F4F8  7F C5 F3 78 */	mr r5, r30
/* 8062F4FC  38 9C 01 34 */	addi r4, r28, 0x134
/* 8062F500  38 C0 00 00 */	li r6, 0
/* 8062F504  38 E0 00 00 */	li r7, 0
/* 8062F508  39 00 00 00 */	li r8, 0
/* 8062F50C  4B D4 22 2D */	bl cKF_Si3_draw_R_SV
/* 8062F510  39 61 00 20 */	addi r11, r1, 0x20
/* 8062F514  4B A6 BA 09 */	bl func_8009AF1C
/* 8062F518  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062F51C  7C 08 03 A6 */	mtlr r0
/* 8062F520  38 21 00 20 */	addi r1, r1, 0x20
/* 8062F524  4E 80 00 20 */	blr 
