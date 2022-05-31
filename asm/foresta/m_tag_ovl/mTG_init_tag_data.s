lbl_805F2044:
/* 805F2044  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F2048  7C 08 02 A6 */	mflr r0
/* 805F204C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F2050  39 61 00 20 */	addi r11, r1, 0x20
/* 805F2054  4B AA 8E 7D */	bl func_8009AED0
/* 805F2058  7C 7F 1B 78 */	mr r31, r3
/* 805F205C  3C 60 80 6D */	lis r3, mTG_label_table@ha /* 0x806D056C@ha */
/* 805F2060  81 3F 00 2C */	lwz r9, 0x2c(r31)
/* 805F2064  54 A8 18 38 */	slwi r8, r5, 3
/* 805F2068  38 03 05 6C */	addi r0, r3, mTG_label_table@l /* 0x806D056C@l */
/* 805F206C  81 29 09 7C */	lwz r9, 0x97c(r9)
/* 805F2070  7D 40 42 14 */	add r10, r0, r8
/* 805F2074  81 09 00 00 */	lwz r8, 0(r9)
/* 805F2078  3B C9 00 08 */	addi r30, r9, 8
/* 805F207C  1C 68 00 B4 */	mulli r3, r8, 0xb4
/* 805F2080  2C 08 00 00 */	cmpwi r8, 0
/* 805F2084  38 63 00 08 */	addi r3, r3, 8
/* 805F2088  7C 69 1A 14 */	add r3, r9, r3
/* 805F208C  40 81 00 18 */	ble lbl_805F20A4
/* 805F2090  38 08 FF FF */	addi r0, r8, -1
/* 805F2094  1D 00 00 B4 */	mulli r8, r0, 0xb4
/* 805F2098  39 08 00 08 */	addi r8, r8, 8
/* 805F209C  7D 09 42 14 */	add r8, r9, r8
/* 805F20A0  48 00 00 08 */	b lbl_805F20A8
lbl_805F20A4:
/* 805F20A4  39 00 00 00 */	li r8, 0
lbl_805F20A8:
/* 805F20A8  98 A3 00 00 */	stb r5, 0(r3)
/* 805F20AC  3C A0 80 65 */	lis r5, data_8064B814@ha /* 0x8064B814@ha */
/* 805F20B0  C0 05 B8 14 */	lfs f0, data_8064B814@l(r5)  /* 0x8064B814@l */
/* 805F20B4  90 83 00 38 */	stw r4, 0x38(r3)
/* 805F20B8  90 C3 00 3C */	stw r6, 0x3c(r3)
/* 805F20BC  90 E3 00 40 */	stw r7, 0x40(r3)
/* 805F20C0  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 805F20C4  80 09 00 00 */	lwz r0, 0(r9)
/* 805F20C8  2C 00 00 00 */	cmpwi r0, 0
/* 805F20CC  40 82 00 40 */	bne lbl_805F210C
/* 805F20D0  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 805F20D4  7F C3 F3 78 */	mr r3, r30
/* 805F20D8  83 A4 09 80 */	lwz r29, 0x980(r4)
/* 805F20DC  4B FF DA 85 */	bl mTG_get_table_idx
/* 805F20E0  38 00 00 01 */	li r0, 1
/* 805F20E4  7C 7C 1B 78 */	mr r28, r3
/* 805F20E8  90 1D 00 00 */	stw r0, 0(r29)
/* 805F20EC  7F E3 FB 78 */	mr r3, r31
/* 805F20F0  4B FF F4 AD */	bl mTG_init_tag_data_item_win
/* 805F20F4  80 BE 00 38 */	lwz r5, 0x38(r30)
/* 805F20F8  7F E3 FB 78 */	mr r3, r31
/* 805F20FC  7F 86 E3 78 */	mr r6, r28
/* 805F2100  38 9D 00 04 */	addi r4, r29, 4
/* 805F2104  4B FF D5 AD */	bl mTG_set_hand_pos
/* 805F2108  48 00 00 4C */	b lbl_805F2154
lbl_805F210C:
/* 805F210C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 805F2110  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 805F2114  80 09 00 00 */	lwz r0, 0(r9)
/* 805F2118  2C 00 00 01 */	cmpwi r0, 1
/* 805F211C  40 82 00 2C */	bne lbl_805F2148
/* 805F2120  88 1E 00 01 */	lbz r0, 1(r30)
/* 805F2124  28 00 00 00 */	cmplwi r0, 0
/* 805F2128  41 82 00 14 */	beq lbl_805F213C
/* 805F212C  7F C4 F3 78 */	mr r4, r30
/* 805F2130  7D 45 53 78 */	mr r5, r10
/* 805F2134  4B FF F7 69 */	bl mTG_init_tag_data_select_win_after_item
/* 805F2138  48 00 00 1C */	b lbl_805F2154
lbl_805F213C:
/* 805F213C  7D 44 53 78 */	mr r4, r10
/* 805F2140  4B FF F5 ED */	bl mTG_init_tag_data_select_win_only
/* 805F2144  48 00 00 10 */	b lbl_805F2154
lbl_805F2148:
/* 805F2148  7D 04 43 78 */	mr r4, r8
/* 805F214C  7D 45 53 78 */	mr r5, r10
/* 805F2150  4B FF FD 01 */	bl mTG_init_tag_data_select_win_after_select
lbl_805F2154:
/* 805F2154  39 61 00 20 */	addi r11, r1, 0x20
/* 805F2158  4B AA 8D C5 */	bl func_8009AF1C
/* 805F215C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F2160  7C 08 03 A6 */	mtlr r0
/* 805F2164  38 21 00 20 */	addi r1, r1, 0x20
/* 805F2168  4E 80 00 20 */	blr 
