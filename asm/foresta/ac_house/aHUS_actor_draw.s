lbl_805B0EA0:
/* 805B0EA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B0EA4  7C 08 02 A6 */	mflr r0
/* 805B0EA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B0EAC  39 61 00 20 */	addi r11, r1, 0x20
/* 805B0EB0  4B AE A0 19 */	bl func_8009AEC8
/* 805B0EB4  80 A3 01 90 */	lwz r5, 0x190(r3)
/* 805B0EB8  7C 7C 1B 78 */	mr r28, r3
/* 805B0EBC  83 E4 00 00 */	lwz r31, 0(r4)
/* 805B0EC0  7C 9D 23 78 */	mr r29, r4
/* 805B0EC4  88 A5 00 01 */	lbz r5, 1(r5)
/* 805B0EC8  3B DC 01 78 */	addi r30, r28, 0x178
/* 805B0ECC  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805B0ED0  54 A5 30 32 */	slwi r5, r5, 6
/* 805B0ED4  7C 05 00 51 */	subf. r0, r5, r0
/* 805B0ED8  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805B0EDC  7C 1A 03 78 */	mr r26, r0
/* 805B0EE0  41 82 00 C0 */	beq lbl_805B0FA0
/* 805B0EE4  4B FF FE 95 */	bl aHUS_actor_draw_ta_set
/* 805B0EE8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B0EEC  80 1C 02 AC */	lwz r0, 0x2ac(r28)
/* 805B0EF0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B0EF4  3C 83 00 02 */	addis r4, r3, 2
/* 805B0EF8  7C 03 07 34 */	extsh r3, r0
/* 805B0EFC  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805B0F00  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B0F04  7D 89 03 A6 */	mtctr r12
/* 805B0F08  4E 80 04 21 */	bctrl 
/* 805B0F0C  7C 7B 1B 78 */	mr r27, r3
/* 805B0F10  7F E3 FB 78 */	mr r3, r31
/* 805B0F14  4B E3 42 95 */	bl _texture_z_light_fog_prim_npc
/* 805B0F18  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805B0F1C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805B0F20  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805B0F24  3C 80 80 5B */	lis r4, func_805B0840@ha /* 0x805B0840@ha */
/* 805B0F28  90 08 00 00 */	stw r0, 0(r8)
/* 805B0F2C  7D 09 43 78 */	mr r9, r8
/* 805B0F30  3C 60 80 5B */	lis r3, aHUS_actor_draw_after@ha /* 0x805B08E4@ha */
/* 805B0F34  38 C4 08 40 */	addi r6, r4, func_805B0840@l /* 0x805B0840@l */
/* 805B0F38  93 69 00 04 */	stw r27, 4(r9)
/* 805B0F3C  39 08 00 08 */	addi r8, r8, 8
/* 805B0F40  38 E3 08 E4 */	addi r7, r3, aHUS_actor_draw_after@l /* 0x805B08E4@l */
/* 805B0F44  7F A3 EB 78 */	mr r3, r29
/* 805B0F48  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805B0F4C  7F C4 F3 78 */	mr r4, r30
/* 805B0F50  7F 45 D3 78 */	mr r5, r26
/* 805B0F54  7F 88 E3 78 */	mr r8, r28
/* 805B0F58  4B DC 07 E1 */	bl cKF_Si3_draw_R_SV
/* 805B0F5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B0F60  80 1C 02 A8 */	lwz r0, 0x2a8(r28)
/* 805B0F64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B0F68  3C 80 80 6C */	lis r4, aHUS_shadow_data@ha /* 0x806C5340@ha */
/* 805B0F6C  3C 63 00 02 */	addis r3, r3, 2
/* 805B0F70  54 00 10 3A */	slwi r0, r0, 2
/* 805B0F74  80 A3 60 80 */	lwz r5, 0x6080(r3)
/* 805B0F78  38 84 53 40 */	addi r4, r4, aHUS_shadow_data@l /* 0x806C5340@l */
/* 805B0F7C  7F A3 EB 78 */	mr r3, r29
/* 805B0F80  7C 84 00 2E */	lwzx r4, r4, r0
/* 805B0F84  81 85 00 04 */	lwz r12, 4(r5)
/* 805B0F88  38 A0 00 01 */	li r5, 1
/* 805B0F8C  7D 89 03 A6 */	mtctr r12
/* 805B0F90  4E 80 04 21 */	bctrl 
/* 805B0F94  7F 83 E3 78 */	mr r3, r28
/* 805B0F98  7F A4 EB 78 */	mr r4, r29
/* 805B0F9C  4B FF FE 9D */	bl aHUS_actor_draw_ta_clr
lbl_805B0FA0:
/* 805B0FA0  39 61 00 20 */	addi r11, r1, 0x20
/* 805B0FA4  4B AE 9F 71 */	bl func_8009AF14
/* 805B0FA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B0FAC  7C 08 03 A6 */	mtlr r0
/* 805B0FB0  38 21 00 20 */	addi r1, r1, 0x20
/* 805B0FB4  4E 80 00 20 */	blr 
