lbl_803836B4:
/* 803836B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803836B8  7C 08 02 A6 */	mflr r0
/* 803836BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803836C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803836C4  4B D1 78 11 */	bl func_8009AED4
/* 803836C8  7C 9E 23 79 */	or. r30, r4, r4
/* 803836CC  7C 7D 1B 78 */	mr r29, r3
/* 803836D0  41 82 00 78 */	beq lbl_80383748
/* 803836D4  2C 05 00 00 */	cmpwi r5, 0
/* 803836D8  40 81 00 70 */	ble lbl_80383748
/* 803836DC  2C 05 00 10 */	cmpwi r5, 0x10
/* 803836E0  41 81 00 68 */	bgt lbl_80383748
/* 803836E4  83 FD 00 C0 */	lwz r31, 0xc0(r29)
/* 803836E8  2C 1F 00 06 */	cmpwi r31, 6
/* 803836EC  40 80 00 5C */	bge lbl_80383748
/* 803836F0  7F C3 F3 78 */	mr r3, r30
/* 803836F4  7C A4 2B 78 */	mr r4, r5
/* 803836F8  48 03 D5 6D */	bl mMsg_Get_Length_String
/* 803836FC  7C 65 1B 79 */	or. r5, r3, r3
/* 80383700  57 E4 20 36 */	slwi r4, r31, 4
/* 80383704  38 64 00 34 */	addi r3, r4, 0x34
/* 80383708  7C 7D 1A 14 */	add r3, r29, r3
/* 8038370C  7C A9 03 A6 */	mtctr r5
/* 80383710  40 81 00 18 */	ble lbl_80383728
lbl_80383714:
/* 80383714  88 1E 00 00 */	lbz r0, 0(r30)
/* 80383718  3B DE 00 01 */	addi r30, r30, 1
/* 8038371C  98 03 00 00 */	stb r0, 0(r3)
/* 80383720  38 63 00 01 */	addi r3, r3, 1
/* 80383724  42 00 FF F0 */	bdnz lbl_80383714
lbl_80383728:
/* 80383728  57 E0 10 3A */	slwi r0, r31, 2
/* 8038372C  7F E3 FB 78 */	mr r3, r31
/* 80383730  7C 9D 02 14 */	add r4, r29, r0
/* 80383734  90 A4 00 94 */	stw r5, 0x94(r4)
/* 80383738  80 9D 00 C0 */	lwz r4, 0xc0(r29)
/* 8038373C  38 04 00 01 */	addi r0, r4, 1
/* 80383740  90 1D 00 C0 */	stw r0, 0xc0(r29)
/* 80383744  48 00 00 08 */	b lbl_8038374C
lbl_80383748:
/* 80383748  38 60 FF FF */	li r3, -1
lbl_8038374C:
/* 8038374C  39 61 00 20 */	addi r11, r1, 0x20
/* 80383750  4B D1 77 D1 */	bl func_8009AF20
/* 80383754  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80383758  7C 08 03 A6 */	mtlr r0
/* 8038375C  38 21 00 20 */	addi r1, r1, 0x20
/* 80383760  4E 80 00 20 */	blr 
