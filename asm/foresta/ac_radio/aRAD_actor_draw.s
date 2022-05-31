lbl_805B8AB0:
/* 805B8AB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B8AB4  7C 08 02 A6 */	mflr r0
/* 805B8AB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B8ABC  39 61 00 20 */	addi r11, r1, 0x20
/* 805B8AC0  4B AE 24 11 */	bl func_8009AED0
/* 805B8AC4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B8AC8  7C 9E 23 78 */	mr r30, r4
/* 805B8ACC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B8AD0  83 E4 00 00 */	lwz r31, 0(r4)
/* 805B8AD4  3C 83 00 02 */	addis r4, r3, 2
/* 805B8AD8  38 60 00 45 */	li r3, 0x45
/* 805B8ADC  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805B8AE0  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B8AE4  7D 89 03 A6 */	mtctr r12
/* 805B8AE8  4E 80 04 21 */	bctrl 
/* 805B8AEC  7C 7C 1B 78 */	mr r28, r3
/* 805B8AF0  7F E3 FB 78 */	mr r3, r31
/* 805B8AF4  4B E5 48 E1 */	bl _Matrix_to_Mtx_new
/* 805B8AF8  7C 7D 1B 79 */	or. r29, r3, r3
/* 805B8AFC  41 82 00 80 */	beq lbl_805B8B7C
/* 805B8B00  7F E3 FB 78 */	mr r3, r31
/* 805B8B04  4B E2 C6 A5 */	bl _texture_z_light_fog_prim_npc
/* 805B8B08  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805B8B0C  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805B8B10  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805B8B14  3C 80 80 6C */	lis r4, aRAD_shadow_data@ha /* 0x806C6484@ha */
/* 805B8B18  90 08 00 00 */	stw r0, 0(r8)
/* 805B8B1C  3C C0 DA 38 */	lis r6, 0xDA38 /* 0xDA380003@ha */
/* 805B8B20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B8B24  3C E0 DE 00 */	lis r7, 0xde00
/* 805B8B28  93 88 00 04 */	stw r28, 4(r8)
/* 805B8B2C  38 06 00 03 */	addi r0, r6, 0x0003 /* 0xDA380003@l */
/* 805B8B30  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B8B34  3C A0 80 BC */	lis r5, radio_DL_model@ha /* 0x80BC78D8@ha */
/* 805B8B38  90 08 00 08 */	stw r0, 8(r8)
/* 805B8B3C  38 05 78 D8 */	addi r0, r5, radio_DL_model@l /* 0x80BC78D8@l */
/* 805B8B40  3C C3 00 02 */	addis r6, r3, 2
/* 805B8B44  38 84 64 84 */	addi r4, r4, aRAD_shadow_data@l /* 0x806C6484@l */
/* 805B8B48  93 A8 00 0C */	stw r29, 0xc(r8)
/* 805B8B4C  39 08 00 10 */	addi r8, r8, 0x10
/* 805B8B50  7D 09 43 78 */	mr r9, r8
/* 805B8B54  7F C3 F3 78 */	mr r3, r30
/* 805B8B58  90 E8 00 00 */	stw r7, 0(r8)
/* 805B8B5C  39 08 00 08 */	addi r8, r8, 8
/* 805B8B60  38 A0 00 00 */	li r5, 0
/* 805B8B64  90 09 00 04 */	stw r0, 4(r9)
/* 805B8B68  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805B8B6C  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 805B8B70  81 86 00 04 */	lwz r12, 4(r6)
/* 805B8B74  7D 89 03 A6 */	mtctr r12
/* 805B8B78  4E 80 04 21 */	bctrl 
lbl_805B8B7C:
/* 805B8B7C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B8B80  4B AE 23 9D */	bl func_8009AF1C
/* 805B8B84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B8B88  7C 08 03 A6 */	mtlr r0
/* 805B8B8C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B8B90  4E 80 00 20 */	blr 
