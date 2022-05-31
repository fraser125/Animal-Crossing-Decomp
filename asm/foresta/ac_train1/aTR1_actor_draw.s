lbl_805C0B1C:
/* 805C0B1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C0B20  7C 08 02 A6 */	mflr r0
/* 805C0B24  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C0B28  39 61 00 20 */	addi r11, r1, 0x20
/* 805C0B2C  4B AD A3 9D */	bl func_8009AEC8
/* 805C0B30  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805C0B34  7C 7F 1B 78 */	mr r31, r3
/* 805C0B38  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805C0B3C  7C 9A 23 78 */	mr r26, r4
/* 805C0B40  3C 83 00 02 */	addis r4, r3, 2
/* 805C0B44  38 60 00 3A */	li r3, 0x3a
/* 805C0B48  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805C0B4C  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805C0B50  7D 89 03 A6 */	mtctr r12
/* 805C0B54  4E 80 04 21 */	bctrl 
/* 805C0B58  80 9F 01 90 */	lwz r4, 0x190(r31)
/* 805C0B5C  7C 7E 1B 78 */	mr r30, r3
/* 805C0B60  83 BA 00 00 */	lwz r29, 0(r26)
/* 805C0B64  3B 9F 01 78 */	addi r28, r31, 0x178
/* 805C0B68  88 64 00 01 */	lbz r3, 1(r4)
/* 805C0B6C  80 1D 02 D4 */	lwz r0, 0x2d4(r29)
/* 805C0B70  54 63 30 32 */	slwi r3, r3, 6
/* 805C0B74  7C 03 00 51 */	subf. r0, r3, r0
/* 805C0B78  90 1D 02 D4 */	stw r0, 0x2d4(r29)
/* 805C0B7C  7C 1B 03 78 */	mr r27, r0
/* 805C0B80  41 82 00 48 */	beq lbl_805C0BC8
/* 805C0B84  7F A3 EB 78 */	mr r3, r29
/* 805C0B88  4B E2 46 21 */	bl _texture_z_light_fog_prim_npc
/* 805C0B8C  81 3D 02 D0 */	lwz r9, 0x2d0(r29)
/* 805C0B90  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805C0B94  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805C0B98  7F 43 D3 78 */	mr r3, r26
/* 805C0B9C  7D 26 4B 78 */	mr r6, r9
/* 805C0BA0  39 29 00 08 */	addi r9, r9, 8
/* 805C0BA4  90 06 00 00 */	stw r0, 0(r6)
/* 805C0BA8  7F 84 E3 78 */	mr r4, r28
/* 805C0BAC  7F 65 DB 78 */	mr r5, r27
/* 805C0BB0  7F E8 FB 78 */	mr r8, r31
/* 805C0BB4  93 C6 00 04 */	stw r30, 4(r6)
/* 805C0BB8  38 C0 00 00 */	li r6, 0
/* 805C0BBC  38 E0 00 00 */	li r7, 0
/* 805C0BC0  91 3D 02 D0 */	stw r9, 0x2d0(r29)
/* 805C0BC4  4B DB 0B 75 */	bl cKF_Si3_draw_R_SV
lbl_805C0BC8:
/* 805C0BC8  39 61 00 20 */	addi r11, r1, 0x20
/* 805C0BCC  4B AD A3 49 */	bl func_8009AF14
/* 805C0BD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C0BD4  7C 08 03 A6 */	mtlr r0
/* 805C0BD8  38 21 00 20 */	addi r1, r1, 0x20
/* 805C0BDC  4E 80 00 20 */	blr 
