lbl_804281B8:
/* 804281B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804281BC  7C 08 02 A6 */	mflr r0
/* 804281C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804281C4  39 61 00 20 */	addi r11, r1, 0x20
/* 804281C8  4B C7 2D 0D */	bl func_8009AED4
/* 804281CC  7C 9E 23 78 */	mr r30, r4
/* 804281D0  7C 7D 1B 78 */	mr r29, r3
/* 804281D4  3B FE 1D EC */	addi r31, r30, 0x1dec
/* 804281D8  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 804281DC  28 00 00 00 */	cmplwi r0, 0
/* 804281E0  40 82 00 7C */	bne lbl_8042825C
/* 804281E4  4B F9 74 C5 */	bl func_803BF6A8
/* 804281E8  4B F9 75 7D */	bl mMsg_Check_not_series_main_wait
/* 804281EC  2C 03 00 01 */	cmpwi r3, 1
/* 804281F0  40 82 00 6C */	bne lbl_8042825C
/* 804281F4  7F A3 EB 78 */	mr r3, r29
/* 804281F8  7F C4 F3 78 */	mr r4, r30
/* 804281FC  38 A0 00 03 */	li r5, 3
/* 80428200  48 00 08 55 */	bl aHNW_setupAction
/* 80428204  88 1D 02 82 */	lbz r0, 0x282(r29)
/* 80428208  2C 00 00 17 */	cmpwi r0, 0x17
/* 8042820C  41 82 00 08 */	beq lbl_80428214
/* 80428210  48 00 00 44 */	b lbl_80428254
lbl_80428214:
/* 80428214  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 80428218  A0 03 00 00 */	lhz r0, 0(r3)
/* 8042821C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80428220  40 82 00 34 */	bne lbl_80428254
/* 80428224  88 83 00 02 */	lbz r4, 2(r3)
/* 80428228  7F E3 FB 78 */	mr r3, r31
/* 8042822C  48 1C 15 F5 */	bl mNW_get_image_no
/* 80428230  88 1D 02 83 */	lbz r0, 0x283(r29)
/* 80428234  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80428238  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8042823C  1C 00 26 B0 */	mulli r0, r0, 0x26b0
/* 80428240  3C 84 00 01 */	addis r4, r4, 1
/* 80428244  7C 84 02 14 */	add r4, r4, r0
/* 80428248  98 64 9D 17 */	stb r3, -0x62e9(r4)
/* 8042824C  38 60 04 61 */	li r3, 0x461
/* 80428250  48 20 5A B5 */	bl sAdo_SysTrgStart
lbl_80428254:
/* 80428254  38 00 00 00 */	li r0, 0
/* 80428258  98 1D 02 82 */	stb r0, 0x282(r29)
lbl_8042825C:
/* 8042825C  39 61 00 20 */	addi r11, r1, 0x20
/* 80428260  4B C7 2C C1 */	bl func_8009AF20
/* 80428264  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80428268  7C 08 03 A6 */	mtlr r0
/* 8042826C  38 21 00 20 */	addi r1, r1, 0x20
/* 80428270  4E 80 00 20 */	blr 
