lbl_805B2E64:
/* 805B2E64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B2E68  7C 08 02 A6 */	mflr r0
/* 805B2E6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B2E70  39 61 00 20 */	addi r11, r1, 0x20
/* 805B2E74  4B AE 80 59 */	bl func_8009AECC
/* 805B2E78  7C 7E 1B 78 */	mr r30, r3
/* 805B2E7C  7C 9F 23 78 */	mr r31, r4
/* 805B2E80  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 805B2E84  3B 9E 01 78 */	addi r28, r30, 0x178
/* 805B2E88  83 A4 00 00 */	lwz r29, 0(r4)
/* 805B2E8C  2C 00 00 00 */	cmpwi r0, 0
/* 805B2E90  41 80 00 80 */	blt lbl_805B2F10
/* 805B2E94  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 805B2E98  80 1D 02 D4 */	lwz r0, 0x2d4(r29)
/* 805B2E9C  88 63 00 01 */	lbz r3, 1(r3)
/* 805B2EA0  54 63 30 32 */	slwi r3, r3, 6
/* 805B2EA4  7C 03 00 51 */	subf. r0, r3, r0
/* 805B2EA8  90 1D 02 D4 */	stw r0, 0x2d4(r29)
/* 805B2EAC  7C 1B 03 78 */	mr r27, r0
/* 805B2EB0  41 82 00 60 */	beq lbl_805B2F10
/* 805B2EB4  7F A3 EB 78 */	mr r3, r29
/* 805B2EB8  4B E3 22 F1 */	bl _texture_z_light_fog_prim_npc
/* 805B2EBC  81 3D 02 D0 */	lwz r9, 0x2d0(r29)
/* 805B2EC0  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805B2EC4  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805B2EC8  3C 80 80 6C */	lis r4, paltbl@ha /* 0x806C5A30@ha */
/* 805B2ECC  90 09 00 00 */	stw r0, 0(r9)
/* 805B2ED0  38 E4 5A 30 */	addi r7, r4, paltbl@l /* 0x806C5A30@l */
/* 805B2ED4  7D 2A 4B 78 */	mr r10, r9
/* 805B2ED8  3C 60 80 5B */	lis r3, func_805B2DDC@ha /* 0x805B2DDC@ha */
/* 805B2EDC  80 1E 02 B8 */	lwz r0, 0x2b8(r30)
/* 805B2EE0  38 C3 2D DC */	addi r6, r3, func_805B2DDC@l /* 0x805B2DDC@l */
/* 805B2EE4  39 29 00 08 */	addi r9, r9, 8
/* 805B2EE8  7F E3 FB 78 */	mr r3, r31
/* 805B2EEC  54 00 10 3A */	slwi r0, r0, 2
/* 805B2EF0  7F 84 E3 78 */	mr r4, r28
/* 805B2EF4  7C 07 00 2E */	lwzx r0, r7, r0
/* 805B2EF8  7F 65 DB 78 */	mr r5, r27
/* 805B2EFC  7F C8 F3 78 */	mr r8, r30
/* 805B2F00  38 E0 00 00 */	li r7, 0
/* 805B2F04  90 0A 00 04 */	stw r0, 4(r10)
/* 805B2F08  91 3D 02 D0 */	stw r9, 0x2d0(r29)
/* 805B2F0C  4B DB E8 2D */	bl cKF_Si3_draw_R_SV
lbl_805B2F10:
/* 805B2F10  39 61 00 20 */	addi r11, r1, 0x20
/* 805B2F14  4B AE 80 05 */	bl func_8009AF18
/* 805B2F18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B2F1C  7C 08 03 A6 */	mtlr r0
/* 805B2F20  38 21 00 20 */	addi r1, r1, 0x20
/* 805B2F24  4E 80 00 20 */	blr 
