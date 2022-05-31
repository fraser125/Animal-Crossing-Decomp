lbl_805BDC0C:
/* 805BDC0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BDC10  7C 08 02 A6 */	mflr r0
/* 805BDC14  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BDC18  39 61 00 20 */	addi r11, r1, 0x20
/* 805BDC1C  4B AD D2 AD */	bl func_8009AEC8
/* 805BDC20  7C 7C 1B 78 */	mr r28, r3
/* 805BDC24  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805BDC28  83 E4 00 00 */	lwz r31, 0(r4)
/* 805BDC2C  7C 9D 23 78 */	mr r29, r4
/* 805BDC30  88 63 00 01 */	lbz r3, 1(r3)
/* 805BDC34  3B DC 01 78 */	addi r30, r28, 0x178
/* 805BDC38  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805BDC3C  54 63 30 32 */	slwi r3, r3, 6
/* 805BDC40  7C 03 00 51 */	subf. r0, r3, r0
/* 805BDC44  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805BDC48  7C 1A 03 78 */	mr r26, r0
/* 805BDC4C  41 82 00 A8 */	beq lbl_805BDCF4
/* 805BDC50  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BDC54  38 60 00 27 */	li r3, 0x27
/* 805BDC58  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BDC5C  3C 84 00 02 */	addis r4, r4, 2
/* 805BDC60  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805BDC64  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805BDC68  7D 89 03 A6 */	mtctr r12
/* 805BDC6C  4E 80 04 21 */	bctrl 
/* 805BDC70  7C 7B 1B 78 */	mr r27, r3
/* 805BDC74  7F E3 FB 78 */	mr r3, r31
/* 805BDC78  4B E2 75 31 */	bl _texture_z_light_fog_prim_npc
/* 805BDC7C  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805BDC80  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805BDC84  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805BDC88  3C 80 80 5C */	lis r4, func_805BDA70@ha /* 0x805BDA70@ha */
/* 805BDC8C  90 08 00 00 */	stw r0, 0(r8)
/* 805BDC90  7D 09 43 78 */	mr r9, r8
/* 805BDC94  3C 60 80 5C */	lis r3, aSPR_actor_draw_after@ha /* 0x805BDAF0@ha */
/* 805BDC98  38 C4 DA 70 */	addi r6, r4, func_805BDA70@l /* 0x805BDA70@l */
/* 805BDC9C  93 69 00 04 */	stw r27, 4(r9)
/* 805BDCA0  39 08 00 08 */	addi r8, r8, 8
/* 805BDCA4  38 E3 DA F0 */	addi r7, r3, aSPR_actor_draw_after@l /* 0x805BDAF0@l */
/* 805BDCA8  7F A3 EB 78 */	mr r3, r29
/* 805BDCAC  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805BDCB0  7F C4 F3 78 */	mr r4, r30
/* 805BDCB4  7F 45 D3 78 */	mr r5, r26
/* 805BDCB8  7F 88 E3 78 */	mr r8, r28
/* 805BDCBC  4B DB 3A 7D */	bl cKF_Si3_draw_R_SV
/* 805BDCC0  7F E3 FB 78 */	mr r3, r31
/* 805BDCC4  4B E2 74 6D */	bl _texture_z_light_fog_prim_shadow
/* 805BDCC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BDCCC  3C C0 80 6C */	lis r6, aSPR_shadow_data@ha /* 0x806C6DFC@ha */
/* 805BDCD0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805BDCD4  3C A4 00 02 */	addis r5, r4, 2
/* 805BDCD8  7F A3 EB 78 */	mr r3, r29
/* 805BDCDC  38 86 6D FC */	addi r4, r6, aSPR_shadow_data@l /* 0x806C6DFC@l */
/* 805BDCE0  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805BDCE4  38 A0 00 00 */	li r5, 0
/* 805BDCE8  81 86 00 04 */	lwz r12, 4(r6)
/* 805BDCEC  7D 89 03 A6 */	mtctr r12
/* 805BDCF0  4E 80 04 21 */	bctrl 
lbl_805BDCF4:
/* 805BDCF4  39 61 00 20 */	addi r11, r1, 0x20
/* 805BDCF8  4B AD D2 1D */	bl func_8009AF14
/* 805BDCFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BDD00  7C 08 03 A6 */	mtlr r0
/* 805BDD04  38 21 00 20 */	addi r1, r1, 0x20
/* 805BDD08  4E 80 00 20 */	blr 
