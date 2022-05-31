lbl_805AB6D0:
/* 805AB6D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AB6D4  7C 08 02 A6 */	mflr r0
/* 805AB6D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AB6DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805AB6E0  4B AE F7 E9 */	bl func_8009AEC8
/* 805AB6E4  7C 7C 1B 78 */	mr r28, r3
/* 805AB6E8  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805AB6EC  83 E4 00 00 */	lwz r31, 0(r4)
/* 805AB6F0  7C 9D 23 78 */	mr r29, r4
/* 805AB6F4  88 63 00 01 */	lbz r3, 1(r3)
/* 805AB6F8  3B DC 01 78 */	addi r30, r28, 0x178
/* 805AB6FC  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805AB700  54 63 30 32 */	slwi r3, r3, 6
/* 805AB704  7C 03 00 51 */	subf. r0, r3, r0
/* 805AB708  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805AB70C  7C 1A 03 78 */	mr r26, r0
/* 805AB710  41 82 00 A8 */	beq lbl_805AB7B8
/* 805AB714  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AB718  38 60 00 26 */	li r3, 0x26
/* 805AB71C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805AB720  3C 84 00 02 */	addis r4, r4, 2
/* 805AB724  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805AB728  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805AB72C  7D 89 03 A6 */	mtctr r12
/* 805AB730  4E 80 04 21 */	bctrl 
/* 805AB734  7C 7B 1B 78 */	mr r27, r3
/* 805AB738  7F E3 FB 78 */	mr r3, r31
/* 805AB73C  4B E3 9A 6D */	bl _texture_z_light_fog_prim_npc
/* 805AB740  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805AB744  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805AB748  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805AB74C  3C 80 80 5B */	lis r4, func_805AB534@ha /* 0x805AB534@ha */
/* 805AB750  90 08 00 00 */	stw r0, 0(r8)
/* 805AB754  7D 09 43 78 */	mr r9, r8
/* 805AB758  3C 60 80 5B */	lis r3, aCNV_actor_draw_after@ha /* 0x805AB5B4@ha */
/* 805AB75C  38 C4 B5 34 */	addi r6, r4, func_805AB534@l /* 0x805AB534@l */
/* 805AB760  93 69 00 04 */	stw r27, 4(r9)
/* 805AB764  39 08 00 08 */	addi r8, r8, 8
/* 805AB768  38 E3 B5 B4 */	addi r7, r3, aCNV_actor_draw_after@l /* 0x805AB5B4@l */
/* 805AB76C  7F A3 EB 78 */	mr r3, r29
/* 805AB770  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805AB774  7F C4 F3 78 */	mr r4, r30
/* 805AB778  7F 45 D3 78 */	mr r5, r26
/* 805AB77C  7F 88 E3 78 */	mr r8, r28
/* 805AB780  4B DC 5F B9 */	bl cKF_Si3_draw_R_SV
/* 805AB784  7F E3 FB 78 */	mr r3, r31
/* 805AB788  4B E3 99 A9 */	bl _texture_z_light_fog_prim_shadow
/* 805AB78C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AB790  3C C0 80 6C */	lis r6, aCNV_shadow_data@ha /* 0x806C4788@ha */
/* 805AB794  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805AB798  3C A4 00 02 */	addis r5, r4, 2
/* 805AB79C  7F A3 EB 78 */	mr r3, r29
/* 805AB7A0  38 86 47 88 */	addi r4, r6, aCNV_shadow_data@l /* 0x806C4788@l */
/* 805AB7A4  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805AB7A8  38 A0 00 00 */	li r5, 0
/* 805AB7AC  81 86 00 04 */	lwz r12, 4(r6)
/* 805AB7B0  7D 89 03 A6 */	mtctr r12
/* 805AB7B4  4E 80 04 21 */	bctrl 
lbl_805AB7B8:
/* 805AB7B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805AB7BC  4B AE F7 59 */	bl func_8009AF14
/* 805AB7C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AB7C4  7C 08 03 A6 */	mtlr r0
/* 805AB7C8  38 21 00 20 */	addi r1, r1, 0x20
/* 805AB7CC  4E 80 00 20 */	blr 
