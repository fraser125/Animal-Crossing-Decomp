lbl_805AA934:
/* 805AA934  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AA938  7C 08 02 A6 */	mflr r0
/* 805AA93C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AA940  39 61 00 20 */	addi r11, r1, 0x20
/* 805AA944  4B AF 05 85 */	bl func_8009AEC8
/* 805AA948  7C 7C 1B 78 */	mr r28, r3
/* 805AA94C  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805AA950  83 E4 00 00 */	lwz r31, 0(r4)
/* 805AA954  7C 9D 23 78 */	mr r29, r4
/* 805AA958  88 63 00 01 */	lbz r3, 1(r3)
/* 805AA95C  3B DC 01 78 */	addi r30, r28, 0x178
/* 805AA960  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805AA964  54 63 30 32 */	slwi r3, r3, 6
/* 805AA968  7C 03 00 51 */	subf. r0, r3, r0
/* 805AA96C  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805AA970  7C 1A 03 78 */	mr r26, r0
/* 805AA974  41 82 00 C8 */	beq lbl_805AAA3C
/* 805AA978  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AA97C  38 60 00 41 */	li r3, 0x41
/* 805AA980  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805AA984  3C 84 00 02 */	addis r4, r4, 2
/* 805AA988  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805AA98C  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805AA990  7D 89 03 A6 */	mtctr r12
/* 805AA994  4E 80 04 21 */	bctrl 
/* 805AA998  7C 7B 1B 78 */	mr r27, r3
/* 805AA99C  7F E3 FB 78 */	mr r3, r31
/* 805AA9A0  4B E3 A7 69 */	bl _texture_z_light_fog_prim
/* 805AA9A4  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 805AA9A8  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805AA9AC  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805AA9B0  7F E3 FB 78 */	mr r3, r31
/* 805AA9B4  7C 85 23 78 */	mr r5, r4
/* 805AA9B8  38 84 00 08 */	addi r4, r4, 8
/* 805AA9BC  90 05 00 00 */	stw r0, 0(r5)
/* 805AA9C0  93 65 00 04 */	stw r27, 4(r5)
/* 805AA9C4  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 805AA9C8  4B E3 A7 91 */	bl _texture_z_light_fog_prim_xlu
/* 805AA9CC  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 805AA9D0  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805AA9D4  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805AA9D8  3C 80 80 5B */	lis r4, func_805AA778@ha /* 0x805AA778@ha */
/* 805AA9DC  90 08 00 00 */	stw r0, 0(r8)
/* 805AA9E0  7D 09 43 78 */	mr r9, r8
/* 805AA9E4  3C 60 80 5B */	lis r3, aBGY_actor_draw_after@ha /* 0x805AA818@ha */
/* 805AA9E8  38 C4 A7 78 */	addi r6, r4, func_805AA778@l /* 0x805AA778@l */
/* 805AA9EC  93 69 00 04 */	stw r27, 4(r9)
/* 805AA9F0  39 08 00 08 */	addi r8, r8, 8
/* 805AA9F4  38 E3 A8 18 */	addi r7, r3, aBGY_actor_draw_after@l /* 0x805AA818@l */
/* 805AA9F8  7F A3 EB 78 */	mr r3, r29
/* 805AA9FC  91 1F 02 E0 */	stw r8, 0x2e0(r31)
/* 805AAA00  7F C4 F3 78 */	mr r4, r30
/* 805AAA04  7F 45 D3 78 */	mr r5, r26
/* 805AAA08  7F 88 E3 78 */	mr r8, r28
/* 805AAA0C  4B DC 6D 2D */	bl cKF_Si3_draw_R_SV
/* 805AAA10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AAA14  3C C0 80 6C */	lis r6, aBGY_shadow_data@ha /* 0x806C4664@ha */
/* 805AAA18  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805AAA1C  3C A4 00 02 */	addis r5, r4, 2
/* 805AAA20  7F A3 EB 78 */	mr r3, r29
/* 805AAA24  38 86 46 64 */	addi r4, r6, aBGY_shadow_data@l /* 0x806C4664@l */
/* 805AAA28  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805AAA2C  38 A0 00 00 */	li r5, 0
/* 805AAA30  81 86 00 04 */	lwz r12, 4(r6)
/* 805AAA34  7D 89 03 A6 */	mtctr r12
/* 805AAA38  4E 80 04 21 */	bctrl 
lbl_805AAA3C:
/* 805AAA3C  39 61 00 20 */	addi r11, r1, 0x20
/* 805AAA40  4B AF 04 D5 */	bl func_8009AF14
/* 805AAA44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AAA48  7C 08 03 A6 */	mtlr r0
/* 805AAA4C  38 21 00 20 */	addi r1, r1, 0x20
/* 805AAA50  4E 80 00 20 */	blr 
