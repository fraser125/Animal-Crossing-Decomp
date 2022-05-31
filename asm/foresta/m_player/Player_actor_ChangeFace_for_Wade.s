lbl_804DFE5C:
/* 804DFE5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DFE60  7C 08 02 A6 */	mflr r0
/* 804DFE64  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DFE68  39 61 00 20 */	addi r11, r1, 0x20
/* 804DFE6C  4B BB B0 69 */	bl func_8009AED4
/* 804DFE70  3C A0 80 64 */	lis r5, lit_1077@ha /* 0x80646A1C@ha */
/* 804DFE74  7C 7D 1B 78 */	mr r29, r3
/* 804DFE78  C0 05 6A 1C */	lfs f0, lit_1077@l(r5)  /* 0x80646A1C@l */
/* 804DFE7C  7C 9E 23 78 */	mr r30, r4
/* 804DFE80  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804DFE84  4C 40 13 82 */	cror 2, 0, 2
/* 804DFE88  40 82 00 34 */	bne lbl_804DFEBC
/* 804DFE8C  3C 80 80 64 */	lis r4, lit_5641@ha /* 0x80647D6C@ha */
/* 804DFE90  C0 04 7D 6C */	lfs f0, lit_5641@l(r4)  /* 0x80647D6C@l */
/* 804DFE94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DFE98  40 80 00 24 */	bge lbl_804DFEBC
/* 804DFE9C  4B FF EA 59 */	bl Player_actor_Set_player_sunburn_rankup
/* 804DFEA0  7C 7F 1B 78 */	mr r31, r3
/* 804DFEA4  7F A3 EB 78 */	mr r3, r29
/* 804DFEA8  4B FF E9 85 */	bl Player_actor_Set_player_sunburn_rankdown
/* 804DFEAC  7F FF 1B 79 */	or. r31, r31, r3
/* 804DFEB0  41 82 00 0C */	beq lbl_804DFEBC
/* 804DFEB4  7F C3 F3 78 */	mr r3, r30
/* 804DFEB8  4B EF 96 B9 */	bl mPlib_change_player_face_pallet
lbl_804DFEBC:
/* 804DFEBC  39 61 00 20 */	addi r11, r1, 0x20
/* 804DFEC0  4B BB B0 61 */	bl func_8009AF20
/* 804DFEC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DFEC8  7C 08 03 A6 */	mtlr r0
/* 804DFECC  38 21 00 20 */	addi r1, r1, 0x20
/* 804DFED0  4E 80 00 20 */	blr 
