lbl_803EECCC:
/* 803EECCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EECD0  7C 08 02 A6 */	mflr r0
/* 803EECD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EECD8  39 61 00 20 */	addi r11, r1, 0x20
/* 803EECDC  4B CA C1 F9 */	bl func_8009AED4
/* 803EECE0  2C 05 00 00 */	cmpwi r5, 0
/* 803EECE4  7C 7D 1B 78 */	mr r29, r3
/* 803EECE8  7C 9F 23 78 */	mr r31, r4
/* 803EECEC  41 80 00 D4 */	blt lbl_803EEDC0
/* 803EECF0  2C 05 07 FF */	cmpwi r5, 0x7ff
/* 803EECF4  40 80 00 CC */	bge lbl_803EEDC0
/* 803EECF8  7C A3 2B 78 */	mr r3, r5
/* 803EECFC  38 81 00 0C */	addi r4, r1, 0xc
/* 803EED00  38 A1 00 08 */	addi r5, r1, 8
/* 803EED04  4B FF FF 81 */	bl mString_Get_StringDataAddressAndSize
/* 803EED08  80 A1 00 08 */	lwz r5, 8(r1)
/* 803EED0C  28 05 00 00 */	cmplwi r5, 0
/* 803EED10  40 82 00 18 */	bne lbl_803EED28
/* 803EED14  7F A3 EB 78 */	mr r3, r29
/* 803EED18  7F E4 FB 78 */	mr r4, r31
/* 803EED1C  38 A0 00 20 */	li r5, 0x20
/* 803EED20  4B FC BD 29 */	bl mem_clear
/* 803EED24  48 00 00 9C */	b lbl_803EEDC0
lbl_803EED28:
/* 803EED28  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803EED2C  28 00 00 00 */	cmplwi r0, 0
/* 803EED30  41 82 00 90 */	beq lbl_803EEDC0
/* 803EED34  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 803EED38  3C 80 81 17 */	lis r4, buff@ha /* 0x81171478@ha */
/* 803EED3C  7F C3 00 50 */	subf r30, r3, r0
/* 803EED40  38 05 00 1F */	addi r0, r5, 0x1f
/* 803EED44  7C 1E 02 14 */	add r0, r30, r0
/* 803EED48  38 84 14 78 */	addi r4, r4, buff@l /* 0x81171478@l */
/* 803EED4C  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 803EED50  4B C1 7F 25 */	bl _JW_GetResourceAram
/* 803EED54  80 01 00 08 */	lwz r0, 8(r1)
/* 803EED58  7C 1F 00 00 */	cmpw r31, r0
/* 803EED5C  40 80 00 08 */	bge lbl_803EED64
/* 803EED60  93 E1 00 08 */	stw r31, 8(r1)
lbl_803EED64:
/* 803EED64  3C 60 81 17 */	lis r3, buff@ha /* 0x81171478@ha */
/* 803EED68  80 A1 00 08 */	lwz r5, 8(r1)
/* 803EED6C  38 03 14 78 */	addi r0, r3, buff@l /* 0x81171478@l */
/* 803EED70  7F A6 EB 78 */	mr r6, r29
/* 803EED74  7C 60 F2 14 */	add r3, r0, r30
/* 803EED78  38 80 00 00 */	li r4, 0
/* 803EED7C  7C A9 03 A6 */	mtctr r5
/* 803EED80  2C 05 00 00 */	cmpwi r5, 0
/* 803EED84  40 81 00 1C */	ble lbl_803EEDA0
lbl_803EED88:
/* 803EED88  88 03 00 00 */	lbz r0, 0(r3)
/* 803EED8C  38 84 00 01 */	addi r4, r4, 1
/* 803EED90  38 63 00 01 */	addi r3, r3, 1
/* 803EED94  98 06 00 00 */	stb r0, 0(r6)
/* 803EED98  38 C6 00 01 */	addi r6, r6, 1
/* 803EED9C  42 00 FF EC */	bdnz lbl_803EED88
lbl_803EEDA0:
/* 803EEDA0  7C 04 F8 50 */	subf r0, r4, r31
/* 803EEDA4  38 60 00 20 */	li r3, 0x20
/* 803EEDA8  7C 09 03 A6 */	mtctr r0
/* 803EEDAC  7C 04 F8 00 */	cmpw r4, r31
/* 803EEDB0  40 80 00 10 */	bge lbl_803EEDC0
lbl_803EEDB4:
/* 803EEDB4  98 66 00 00 */	stb r3, 0(r6)
/* 803EEDB8  38 C6 00 01 */	addi r6, r6, 1
/* 803EEDBC  42 00 FF F8 */	bdnz lbl_803EEDB4
lbl_803EEDC0:
/* 803EEDC0  39 61 00 20 */	addi r11, r1, 0x20
/* 803EEDC4  4B CA C1 5D */	bl func_8009AF20
/* 803EEDC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EEDCC  7C 08 03 A6 */	mtlr r0
/* 803EEDD0  38 21 00 20 */	addi r1, r1, 0x20
/* 803EEDD4  4E 80 00 20 */	blr 
