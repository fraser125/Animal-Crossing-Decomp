lbl_804F20A4:
/* 804F20A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F20A8  7C 08 02 A6 */	mflr r0
/* 804F20AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F20B0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F20B4  4B BA 8E 21 */	bl func_8009AED4
/* 804F20B8  7C 7D 1B 78 */	mr r29, r3
/* 804F20BC  7C 9E 23 78 */	mr r30, r4
/* 804F20C0  4B EE 9E A9 */	bl mPlib_check_player_warp_forEvent
/* 804F20C4  2C 03 00 00 */	cmpwi r3, 0
/* 804F20C8  41 82 00 2C */	beq lbl_804F20F4
/* 804F20CC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F20D0  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F20D4  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F20D8  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F20DC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F20E0  7F C3 F3 78 */	mr r3, r30
/* 804F20E4  38 80 00 00 */	li r4, 0
/* 804F20E8  38 A0 00 22 */	li r5, 0x22
/* 804F20EC  4B FF 3B 11 */	bl func_804E5BFC
/* 804F20F0  48 00 00 9C */	b lbl_804F218C
lbl_804F20F4:
/* 804F20F4  8B FD 11 2B */	lbz r31, 0x112b(r29)
/* 804F20F8  7F A3 EB 78 */	mr r3, r29
/* 804F20FC  80 9D 0C F8 */	lwz r4, 0xcf8(r29)
/* 804F2100  4B FE E8 A5 */	bl Player_actor_Get_ItemKind
/* 804F2104  7F E4 07 74 */	extsb r4, r31
/* 804F2108  7C 60 07 74 */	extsb r0, r3
/* 804F210C  7C 04 00 00 */	cmpw r4, r0
/* 804F2110  41 82 00 28 */	beq lbl_804F2138
/* 804F2114  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F2118  7F C3 F3 78 */	mr r3, r30
/* 804F211C  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 804F2120  38 80 00 00 */	li r4, 0
/* 804F2124  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F2128  38 A0 00 22 */	li r5, 0x22
/* 804F212C  FC 40 08 90 */	fmr f2, f1
/* 804F2130  4B FF 3A CD */	bl func_804E5BFC
/* 804F2134  48 00 00 58 */	b lbl_804F218C
lbl_804F2138:
/* 804F2138  7F C3 F3 78 */	mr r3, r30
/* 804F213C  4B FE 24 BD */	bl Player_actor_CheckController_forNet
/* 804F2140  2C 03 00 00 */	cmpwi r3, 0
/* 804F2144  40 82 00 14 */	bne lbl_804F2158
/* 804F2148  7F C3 F3 78 */	mr r3, r30
/* 804F214C  38 80 00 16 */	li r4, 0x16
/* 804F2150  48 00 08 99 */	bl func_804F29E8
/* 804F2154  48 00 00 38 */	b lbl_804F218C
lbl_804F2158:
/* 804F2158  4B FE 28 A9 */	bl Player_actor_GetController_move_percentX
/* 804F215C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F2160  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F2164  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F2168  40 82 00 18 */	bne lbl_804F2180
/* 804F216C  4B FE 28 D9 */	bl Player_actor_GetController_move_percentY
/* 804F2170  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F2174  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F2178  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F217C  41 82 00 10 */	beq lbl_804F218C
lbl_804F2180:
/* 804F2180  7F C3 F3 78 */	mr r3, r30
/* 804F2184  38 80 00 0C */	li r4, 0xc
/* 804F2188  48 00 00 A5 */	bl func_804F222C
lbl_804F218C:
/* 804F218C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F2190  4B BA 8D 91 */	bl func_8009AF20
/* 804F2194  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F2198  7C 08 03 A6 */	mtlr r0
/* 804F219C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F21A0  4E 80 00 20 */	blr 
