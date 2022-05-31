lbl_8063FEFC:
/* 8063FEFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063FF00  7C 08 02 A6 */	mflr r0
/* 8063FF04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063FF08  39 61 00 20 */	addi r11, r1, 0x20
/* 8063FF0C  4B A5 AF C5 */	bl func_8009AED0
/* 8063FF10  7C BD 2B 78 */	mr r29, r5
/* 8063FF14  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063FF18  80 A5 00 00 */	lwz r5, 0(r5)
/* 8063FF1C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063FF20  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8063FF24  7C 7C 1B 78 */	mr r28, r3
/* 8063FF28  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8063FF2C  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8063FF30  38 7F 00 08 */	addi r3, r31, 8
/* 8063FF34  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 8063FF38  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063FF3C  90 1F 00 00 */	stw r0, 0(r31)
/* 8063FF40  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063FF44  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063FF48  7F DC F2 14 */	add r30, r28, r30
/* 8063FF4C  4B DC D4 89 */	bl _Matrix_to_Mtx_new
/* 8063FF50  90 7F 00 04 */	stw r3, 4(r31)
/* 8063FF54  7F A3 EB 78 */	mr r3, r29
/* 8063FF58  7F C5 F3 78 */	mr r5, r30
/* 8063FF5C  38 9C 01 34 */	addi r4, r28, 0x134
/* 8063FF60  38 C0 00 00 */	li r6, 0
/* 8063FF64  38 E0 00 00 */	li r7, 0
/* 8063FF68  39 00 00 00 */	li r8, 0
/* 8063FF6C  4B D3 17 CD */	bl cKF_Si3_draw_R_SV
/* 8063FF70  39 61 00 20 */	addi r11, r1, 0x20
/* 8063FF74  4B A5 AF A9 */	bl func_8009AF1C
/* 8063FF78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063FF7C  7C 08 03 A6 */	mtlr r0
/* 8063FF80  38 21 00 20 */	addi r1, r1, 0x20
/* 8063FF84  4E 80 00 20 */	blr 
