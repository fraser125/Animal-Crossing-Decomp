lbl_80424968:
/* 80424968  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042496C  7C 08 02 A6 */	mflr r0
/* 80424970  90 01 00 24 */	stw r0, 0x24(r1)
/* 80424974  39 61 00 20 */	addi r11, r1, 0x20
/* 80424978  4B C7 65 55 */	bl func_8009AECC
/* 8042497C  7C 7B 1B 78 */	mr r27, r3
/* 80424980  80 63 01 90 */	lwz r3, 0x190(r3)
/* 80424984  83 E4 00 00 */	lwz r31, 0(r4)
/* 80424988  7C 9C 23 78 */	mr r28, r4
/* 8042498C  88 63 00 01 */	lbz r3, 1(r3)
/* 80424990  3B DB 01 78 */	addi r30, r27, 0x178
/* 80424994  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 80424998  54 63 30 32 */	slwi r3, r3, 6
/* 8042499C  7C 03 00 51 */	subf. r0, r3, r0
/* 804249A0  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 804249A4  7C 1D 03 78 */	mr r29, r0
/* 804249A8  41 82 00 E0 */	beq lbl_80424A88
/* 804249AC  7F E3 FB 78 */	mr r3, r31
/* 804249B0  4B FC 07 F9 */	bl _texture_z_light_fog_prim_npc
/* 804249B4  7F E3 FB 78 */	mr r3, r31
/* 804249B8  4B FC 07 A1 */	bl _texture_z_light_fog_prim_xlu
/* 804249BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804249C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804249C4  3C 63 00 02 */	addis r3, r3, 2
/* 804249C8  88 03 32 31 */	lbz r0, 0x3231(r3)
/* 804249CC  28 00 00 00 */	cmplwi r0, 0
/* 804249D0  41 82 00 24 */	beq lbl_804249F4
/* 804249D4  88 63 32 30 */	lbz r3, 0x3230(r3)
/* 804249D8  4B FA 51 E5 */	bl mNW_PaletteIdx2Palette
/* 804249DC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804249E0  7C 65 1B 78 */	mr r5, r3
/* 804249E4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804249E8  3C E4 00 02 */	addis r7, r4, 2
/* 804249EC  38 E7 32 40 */	addi r7, r7, 0x3240
/* 804249F0  48 00 00 1C */	b lbl_80424A0C
lbl_804249F4:
/* 804249F4  3C 80 80 A0 */	lis r4, hakushi_pal@ha /* 0x809FF3C0@ha */
/* 804249F8  3C 60 80 A0 */	lis r3, hakushi_tex@ha /* 0x809FF3E0@ha */
/* 804249FC  38 84 F3 C0 */	addi r4, r4, hakushi_pal@l /* 0x809FF3C0@l */
/* 80424A00  38 03 F3 E0 */	addi r0, r3, hakushi_tex@l /* 0x809FF3E0@l */
/* 80424A04  7C 85 23 78 */	mr r5, r4
/* 80424A08  7C 07 03 78 */	mr r7, r0
lbl_80424A0C:
/* 80424A0C  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 80424A10  81 3F 02 D0 */	lwz r9, 0x2d0(r31)
/* 80424A14  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 80424A18  3C 60 80 42 */	lis r3, aFLAG_before_draw@ha /* 0x80424944@ha */
/* 80424A1C  90 09 00 00 */	stw r0, 0(r9)
/* 80424A20  38 04 00 24 */	addi r0, r4, 0x24
/* 80424A24  38 C3 49 44 */	addi r6, r3, aFLAG_before_draw@l /* 0x80424944@l */
/* 80424A28  7F 83 E3 78 */	mr r3, r28
/* 80424A2C  90 A9 00 04 */	stw r5, 4(r9)
/* 80424A30  39 29 00 08 */	addi r9, r9, 8
/* 80424A34  7D 28 4B 78 */	mr r8, r9
/* 80424A38  7F C4 F3 78 */	mr r4, r30
/* 80424A3C  90 09 00 00 */	stw r0, 0(r9)
/* 80424A40  39 29 00 08 */	addi r9, r9, 8
/* 80424A44  7F A5 EB 78 */	mr r5, r29
/* 80424A48  90 E8 00 04 */	stw r7, 4(r8)
/* 80424A4C  7F 68 DB 78 */	mr r8, r27
/* 80424A50  38 E0 00 00 */	li r7, 0
/* 80424A54  91 3F 02 D0 */	stw r9, 0x2d0(r31)
/* 80424A58  4B F4 CC E1 */	bl cKF_Si3_draw_R_SV
/* 80424A5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80424A60  3C C0 80 68 */	lis r6, aFLAG_shadow_data@ha /* 0x80682ABC@ha */
/* 80424A64  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80424A68  3C A4 00 02 */	addis r5, r4, 2
/* 80424A6C  7F 83 E3 78 */	mr r3, r28
/* 80424A70  38 86 2A BC */	addi r4, r6, aFLAG_shadow_data@l /* 0x80682ABC@l */
/* 80424A74  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 80424A78  38 A0 00 00 */	li r5, 0
/* 80424A7C  81 86 00 04 */	lwz r12, 4(r6)
/* 80424A80  7D 89 03 A6 */	mtctr r12
/* 80424A84  4E 80 04 21 */	bctrl 
lbl_80424A88:
/* 80424A88  39 61 00 20 */	addi r11, r1, 0x20
/* 80424A8C  4B C7 64 8D */	bl func_8009AF18
/* 80424A90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80424A94  7C 08 03 A6 */	mtlr r0
/* 80424A98  38 21 00 20 */	addi r1, r1, 0x20
/* 80424A9C  4E 80 00 20 */	blr 
