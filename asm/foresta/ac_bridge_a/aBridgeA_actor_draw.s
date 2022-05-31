lbl_805A9B3C:
/* 805A9B3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A9B40  7C 08 02 A6 */	mflr r0
/* 805A9B44  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A9B48  39 61 00 20 */	addi r11, r1, 0x20
/* 805A9B4C  4B AF 13 89 */	bl func_8009AED4
/* 805A9B50  7C 7D 1B 78 */	mr r29, r3
/* 805A9B54  7C 9E 23 78 */	mr r30, r4
/* 805A9B58  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805A9B5C  80 84 00 00 */	lwz r4, 0(r4)
/* 805A9B60  88 63 00 01 */	lbz r3, 1(r3)
/* 805A9B64  80 04 02 D4 */	lwz r0, 0x2d4(r4)
/* 805A9B68  54 63 30 32 */	slwi r3, r3, 6
/* 805A9B6C  7C 03 00 50 */	subf r0, r3, r0
/* 805A9B70  90 04 02 D4 */	stw r0, 0x2d4(r4)
/* 805A9B74  7C 1F 03 78 */	mr r31, r0
/* 805A9B78  80 7E 00 00 */	lwz r3, 0(r30)
/* 805A9B7C  4B E3 B5 8D */	bl _texture_z_light_fog_prim
/* 805A9B80  3C 80 80 5B */	lis r4, aBridgeA_before_disp@ha /* 0x805A9AB0@ha */
/* 805A9B84  7F C3 F3 78 */	mr r3, r30
/* 805A9B88  38 C4 9A B0 */	addi r6, r4, aBridgeA_before_disp@l /* 0x805A9AB0@l */
/* 805A9B8C  7F E5 FB 78 */	mr r5, r31
/* 805A9B90  7F A8 EB 78 */	mr r8, r29
/* 805A9B94  38 9D 01 78 */	addi r4, r29, 0x178
/* 805A9B98  38 E0 00 00 */	li r7, 0
/* 805A9B9C  4B DC 7B 9D */	bl cKF_Si3_draw_R_SV
/* 805A9BA0  39 61 00 20 */	addi r11, r1, 0x20
/* 805A9BA4  4B AF 13 7D */	bl func_8009AF20
/* 805A9BA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A9BAC  7C 08 03 A6 */	mtlr r0
/* 805A9BB0  38 21 00 20 */	addi r1, r1, 0x20
/* 805A9BB4  4E 80 00 20 */	blr 
