lbl_8051C600:
/* 8051C600  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051C604  7C 08 02 A6 */	mflr r0
/* 8051C608  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051C60C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8051C610  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8051C614  7C 7E 1B 78 */	mr r30, r3
/* 8051C618  4B EA 30 91 */	bl func_803BF6A8
/* 8051C61C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051C620  38 A0 0B B8 */	li r5, 0xbb8
/* 8051C624  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8051C628  7C 7F 1B 78 */	mr r31, r3
/* 8051C62C  3C 84 00 02 */	addis r4, r4, 2
/* 8051C630  80 04 04 A4 */	lwz r0, 0x4a4(r4)
/* 8051C634  7C 09 03 A6 */	mtctr r0
/* 8051C638  2C 00 00 00 */	cmpwi r0, 0
/* 8051C63C  41 82 00 0C */	beq lbl_8051C648
lbl_8051C640:
/* 8051C640  54 A5 08 3C */	slwi r5, r5, 1
/* 8051C644  42 00 FF FC */	bdnz lbl_8051C640
lbl_8051C648:
/* 8051C648  90 BE 09 A4 */	stw r5, 0x9a4(r30)
/* 8051C64C  38 61 00 0C */	addi r3, r1, 0xc
/* 8051C650  38 80 00 06 */	li r4, 6
/* 8051C654  38 C0 00 05 */	li r6, 5
/* 8051C658  38 E0 00 01 */	li r7, 1
/* 8051C65C  39 00 00 00 */	li r8, 0
/* 8051C660  39 20 00 01 */	li r9, 1
/* 8051C664  4B E9 2E 15 */	bl mFont_UnintToString
/* 8051C668  7F E3 FB 78 */	mr r3, r31
/* 8051C66C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8051C670  38 80 00 00 */	li r4, 0
/* 8051C674  38 C0 00 06 */	li r6, 6
/* 8051C678  4B EA 35 DD */	bl mMsg_Set_free_str
/* 8051C67C  38 81 00 08 */	addi r4, r1, 8
/* 8051C680  38 60 00 00 */	li r3, 0
/* 8051C684  38 A0 00 01 */	li r5, 1
/* 8051C688  38 C0 00 00 */	li r6, 0
/* 8051C68C  38 E0 00 00 */	li r7, 0
/* 8051C690  39 00 00 03 */	li r8, 3
/* 8051C694  39 20 00 03 */	li r9, 3
/* 8051C698  39 40 00 00 */	li r10, 0
/* 8051C69C  4B EC BD 41 */	bl mSP_SelectRandomItem_New
/* 8051C6A0  A0 81 00 08 */	lhz r4, 8(r1)
/* 8051C6A4  38 61 00 14 */	addi r3, r1, 0x14
/* 8051C6A8  4B E9 92 FD */	bl mIN_copy_name_str
/* 8051C6AC  A0 61 00 08 */	lhz r3, 8(r1)
/* 8051C6B0  4B E9 94 69 */	bl mIN_get_item_article
/* 8051C6B4  7C 67 1B 78 */	mr r7, r3
/* 8051C6B8  7F E3 FB 78 */	mr r3, r31
/* 8051C6BC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8051C6C0  38 80 00 00 */	li r4, 0
/* 8051C6C4  38 C0 00 10 */	li r6, 0x10
/* 8051C6C8  4B EA 37 89 */	bl mMsg_Set_item_str_art
/* 8051C6CC  A0 01 00 08 */	lhz r0, 8(r1)
/* 8051C6D0  B0 1E 09 A8 */	sth r0, 0x9a8(r30)
/* 8051C6D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051C6D8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8051C6DC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8051C6E0  7C 08 03 A6 */	mtlr r0
/* 8051C6E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8051C6E8  4E 80 00 20 */	blr 
