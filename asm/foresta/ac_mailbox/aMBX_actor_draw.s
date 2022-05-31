lbl_8042D268:
/* 8042D268  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042D26C  7C 08 02 A6 */	mflr r0
/* 8042D270  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042D274  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D278  4B C6 DC 55 */	bl func_8009AECC
/* 8042D27C  7C 7B 1B 78 */	mr r27, r3
/* 8042D280  80 63 01 94 */	lwz r3, 0x194(r3)
/* 8042D284  83 C4 00 00 */	lwz r30, 0(r4)
/* 8042D288  7C 9D 23 78 */	mr r29, r4
/* 8042D28C  88 63 00 01 */	lbz r3, 1(r3)
/* 8042D290  3B FB 01 7C */	addi r31, r27, 0x17c
/* 8042D294  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 8042D298  54 63 30 32 */	slwi r3, r3, 6
/* 8042D29C  7C 03 00 51 */	subf. r0, r3, r0
/* 8042D2A0  90 1E 02 D4 */	stw r0, 0x2d4(r30)
/* 8042D2A4  7C 1C 03 78 */	mr r28, r0
/* 8042D2A8  41 82 00 F8 */	beq lbl_8042D3A0
/* 8042D2AC  7F C3 F3 78 */	mr r3, r30
/* 8042D2B0  4B FB 7E 59 */	bl _texture_z_light_fog_prim
/* 8042D2B4  80 1B 03 0C */	lwz r0, 0x30c(r27)
/* 8042D2B8  2C 00 00 05 */	cmpwi r0, 5
/* 8042D2BC  40 82 00 7C */	bne lbl_8042D338
/* 8042D2C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042D2C4  3C 80 80 68 */	lis r4, evw_table@ha /* 0x80684AA8@ha */
/* 8042D2C8  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 8042D2CC  3C A5 00 02 */	addis r5, r5, 2
/* 8042D2D0  38 84 4A A8 */	addi r4, r4, evw_table@l /* 0x80684AA8@l */
/* 8042D2D4  80 05 61 10 */	lwz r0, 0x6110(r5)
/* 8042D2D8  7F A3 EB 78 */	mr r3, r29
/* 8042D2DC  20 00 00 03 */	subfic r0, r0, 3
/* 8042D2E0  7C 00 00 34 */	cntlzw r0, r0
/* 8042D2E4  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 8042D2E8  7C 84 00 2E */	lwzx r4, r4, r0
/* 8042D2EC  4B F4 62 71 */	bl Evw_Anime_Set
/* 8042D2F0  80 7B 03 18 */	lwz r3, 0x318(r27)
/* 8042D2F4  4B F8 62 E5 */	bl mHS_get_pl_no
/* 8042D2F8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8042D2FC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8042D300  3C 84 00 02 */	addis r4, r4, 2
/* 8042D304  88 04 60 03 */	lbz r0, 0x6003(r4)
/* 8042D308  7C 00 18 00 */	cmpw r0, r3
/* 8042D30C  40 82 00 74 */	bne lbl_8042D380
/* 8042D310  80 9D 20 90 */	lwz r4, 0x2090(r29)
/* 8042D314  38 60 00 3C */	li r3, 0x3c
/* 8042D318  7C 04 1B 96 */	divwu r0, r4, r3
/* 8042D31C  7C 00 19 D6 */	mullw r0, r0, r3
/* 8042D320  7C 00 20 51 */	subf. r0, r0, r4
/* 8042D324  40 82 00 5C */	bne lbl_8042D380
/* 8042D328  38 9B 00 28 */	addi r4, r27, 0x28
/* 8042D32C  38 60 04 3B */	li r3, 0x43b
/* 8042D330  48 20 0C 79 */	bl sAdo_OngenTrgStart
/* 8042D334  48 00 00 4C */	b lbl_8042D380
lbl_8042D338:
/* 8042D338  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 8042D33C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 8042D340  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8042D344  3C 60 80 68 */	lis r3, tex_table@ha /* 0x80684AA0@ha */
/* 8042D348  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 8042D34C  7C C7 33 78 */	mr r7, r6
/* 8042D350  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8042D354  90 06 00 00 */	stw r0, 0(r6)
/* 8042D358  3C 84 00 02 */	addis r4, r4, 2
/* 8042D35C  38 63 4A A0 */	addi r3, r3, tex_table@l /* 0x80684AA0@l */
/* 8042D360  80 04 61 10 */	lwz r0, 0x6110(r4)
/* 8042D364  38 C6 00 08 */	addi r6, r6, 8
/* 8042D368  20 00 00 03 */	subfic r0, r0, 3
/* 8042D36C  7C 00 00 34 */	cntlzw r0, r0
/* 8042D370  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 8042D374  7C 03 00 2E */	lwzx r0, r3, r0
/* 8042D378  90 07 00 04 */	stw r0, 4(r7)
/* 8042D37C  90 DE 02 D0 */	stw r6, 0x2d0(r30)
lbl_8042D380:
/* 8042D380  3C 80 80 43 */	lis r4, aMBX_actor_draw_before@ha /* 0x8042D21C@ha */
/* 8042D384  7F A3 EB 78 */	mr r3, r29
/* 8042D388  38 C4 D2 1C */	addi r6, r4, aMBX_actor_draw_before@l /* 0x8042D21C@l */
/* 8042D38C  7F 85 E3 78 */	mr r5, r28
/* 8042D390  7F E4 FB 78 */	mr r4, r31
/* 8042D394  7F 68 DB 78 */	mr r8, r27
/* 8042D398  38 E0 00 00 */	li r7, 0
/* 8042D39C  4B F4 43 9D */	bl cKF_Si3_draw_R_SV
lbl_8042D3A0:
/* 8042D3A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D3A4  4B C6 DB 75 */	bl func_8009AF18
/* 8042D3A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042D3AC  7C 08 03 A6 */	mtlr r0
/* 8042D3B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8042D3B4  4E 80 00 20 */	blr 
