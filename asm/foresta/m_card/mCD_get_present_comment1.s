lbl_803FB608:
/* 803FB608  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FB60C  7C 08 02 A6 */	mflr r0
/* 803FB610  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FB614  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB618  4B C9 F8 B9 */	bl func_8009AED0
/* 803FB61C  7C 9D 23 78 */	mr r29, r4
/* 803FB620  7C BE 2B 78 */	mr r30, r5
/* 803FB624  7C 7C 1B 78 */	mr r28, r3
/* 803FB628  7C DF 33 78 */	mr r31, r6
/* 803FB62C  38 80 00 20 */	li r4, 0x20
/* 803FB630  38 A0 00 00 */	li r5, 0
/* 803FB634  4B FB F4 15 */	bl mem_clear
/* 803FB638  7F E9 03 A6 */	mtctr r31
/* 803FB63C  2C 1F 00 00 */	cmpwi r31, 0
/* 803FB640  40 81 00 18 */	ble lbl_803FB658
lbl_803FB644:
/* 803FB644  88 1E 00 00 */	lbz r0, 0(r30)
/* 803FB648  3B DE 00 01 */	addi r30, r30, 1
/* 803FB64C  98 1C 00 00 */	stb r0, 0(r28)
/* 803FB650  3B 9C 00 01 */	addi r28, r28, 1
/* 803FB654  42 00 FF F0 */	bdnz lbl_803FB644
lbl_803FB658:
/* 803FB658  2C 1D 00 00 */	cmpwi r29, 0
/* 803FB65C  41 80 00 20 */	blt lbl_803FB67C
/* 803FB660  38 80 00 0A */	li r4, 0xa
/* 803FB664  7F 83 E3 78 */	mr r3, r28
/* 803FB668  7C 1D 23 D6 */	divw r0, r29, r4
/* 803FB66C  7C 00 21 D6 */	mullw r0, r0, r4
/* 803FB670  7F A0 E8 50 */	subf r29, r0, r29
/* 803FB674  38 9D 00 30 */	addi r4, r29, 0x30
/* 803FB678  4B FF FD 21 */	bl mCD_set_1byte
lbl_803FB67C:
/* 803FB67C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB680  4B C9 F8 9D */	bl func_8009AF1C
/* 803FB684  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FB688  7C 08 03 A6 */	mtlr r0
/* 803FB68C  38 21 00 20 */	addi r1, r1, 0x20
/* 803FB690  4E 80 00 20 */	blr 
