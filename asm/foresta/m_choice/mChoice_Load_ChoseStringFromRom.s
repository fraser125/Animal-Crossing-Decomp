lbl_803843C0:
/* 803843C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803843C4  7C 08 02 A6 */	mflr r0
/* 803843C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803843CC  39 61 00 20 */	addi r11, r1, 0x20
/* 803843D0  4B D1 6B 05 */	bl func_8009AED4
/* 803843D4  2C 05 00 00 */	cmpwi r5, 0
/* 803843D8  7C 9E 23 78 */	mr r30, r4
/* 803843DC  7C DF 33 78 */	mr r31, r6
/* 803843E0  41 80 00 E4 */	blt lbl_803844C4
/* 803843E4  2C 05 02 5F */	cmpwi r5, 0x25f
/* 803843E8  40 80 00 DC */	bge lbl_803844C4
/* 803843EC  7C A3 2B 78 */	mr r3, r5
/* 803843F0  38 81 00 0C */	addi r4, r1, 0xc
/* 803843F4  38 A1 00 08 */	addi r5, r1, 8
/* 803843F8  4B FF F7 8D */	bl mChoice_Get_StringDataAddressAndSize
/* 803843FC  80 A1 00 08 */	lwz r5, 8(r1)
/* 80384400  28 05 00 00 */	cmplwi r5, 0
/* 80384404  40 82 00 18 */	bne lbl_8038441C
/* 80384408  7F C3 F3 78 */	mr r3, r30
/* 8038440C  38 80 00 10 */	li r4, 0x10
/* 80384410  38 A0 00 20 */	li r5, 0x20
/* 80384414  48 03 66 35 */	bl mem_clear
/* 80384418  48 00 00 AC */	b lbl_803844C4
lbl_8038441C:
/* 8038441C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80384420  28 00 00 00 */	cmplwi r0, 0
/* 80384424  41 82 00 A0 */	beq lbl_803844C4
/* 80384428  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8038442C  3C 80 81 13 */	lis r4, buff@ha /* 0x811354F8@ha */
/* 80384430  7F A3 00 50 */	subf r29, r3, r0
/* 80384434  38 05 00 1F */	addi r0, r5, 0x1f
/* 80384438  7C 1D 02 14 */	add r0, r29, r0
/* 8038443C  38 84 54 F8 */	addi r4, r4, buff@l /* 0x811354F8@l */
/* 80384440  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 80384444  4B C8 28 31 */	bl _JW_GetResourceAram
/* 80384448  80 01 00 08 */	lwz r0, 8(r1)
/* 8038444C  38 80 00 10 */	li r4, 0x10
/* 80384450  28 00 00 10 */	cmplwi r0, 0x10
/* 80384454  40 80 00 08 */	bge lbl_8038445C
/* 80384458  7C 04 03 78 */	mr r4, r0
lbl_8038445C:
/* 8038445C  3C 60 81 13 */	lis r3, buff@ha /* 0x811354F8@ha */
/* 80384460  7F C6 F3 78 */	mr r6, r30
/* 80384464  38 03 54 F8 */	addi r0, r3, buff@l /* 0x811354F8@l */
/* 80384468  38 A0 00 00 */	li r5, 0
/* 8038446C  7C 60 EA 14 */	add r3, r0, r29
/* 80384470  7C 89 03 A6 */	mtctr r4
/* 80384474  2C 04 00 00 */	cmpwi r4, 0
/* 80384478  40 81 00 1C */	ble lbl_80384494
lbl_8038447C:
/* 8038447C  88 03 00 00 */	lbz r0, 0(r3)
/* 80384480  38 A5 00 01 */	addi r5, r5, 1
/* 80384484  38 63 00 01 */	addi r3, r3, 1
/* 80384488  98 06 00 00 */	stb r0, 0(r6)
/* 8038448C  38 C6 00 01 */	addi r6, r6, 1
/* 80384490  42 00 FF EC */	bdnz lbl_8038447C
lbl_80384494:
/* 80384494  20 05 00 10 */	subfic r0, r5, 0x10
/* 80384498  38 60 00 20 */	li r3, 0x20
/* 8038449C  7C 09 03 A6 */	mtctr r0
/* 803844A0  2C 05 00 10 */	cmpwi r5, 0x10
/* 803844A4  40 80 00 10 */	bge lbl_803844B4
lbl_803844A8:
/* 803844A8  98 66 00 00 */	stb r3, 0(r6)
/* 803844AC  38 C6 00 01 */	addi r6, r6, 1
/* 803844B0  42 00 FF F8 */	bdnz lbl_803844A8
lbl_803844B4:
/* 803844B4  7F C3 F3 78 */	mr r3, r30
/* 803844B8  7F E5 FB 78 */	mr r5, r31
/* 803844BC  38 80 00 10 */	li r4, 0x10
/* 803844C0  4B FF FE 89 */	bl mChoice_Change_ControlCode
lbl_803844C4:
/* 803844C4  39 61 00 20 */	addi r11, r1, 0x20
/* 803844C8  4B D1 6A 59 */	bl func_8009AF20
/* 803844CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803844D0  7C 08 03 A6 */	mtlr r0
/* 803844D4  38 21 00 20 */	addi r1, r1, 0x20
/* 803844D8  4E 80 00 20 */	blr 
