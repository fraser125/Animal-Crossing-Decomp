lbl_803DE850:
/* 803DE850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE854  7C 08 02 A6 */	mflr r0
/* 803DE858  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE85C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803DE860  2C 00 00 02 */	cmpwi r0, 2
/* 803DE864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE868  7C 7F 1B 78 */	mr r31, r3
/* 803DE86C  41 82 00 14 */	beq lbl_803DE880
/* 803DE870  2C 00 00 01 */	cmpwi r0, 1
/* 803DE874  41 82 00 0C */	beq lbl_803DE880
/* 803DE878  2C 00 00 03 */	cmpwi r0, 3
/* 803DE87C  40 82 00 54 */	bne lbl_803DE8D0
lbl_803DE880:
/* 803DE880  4B FF FF 99 */	bl mPB_get_keep_item_sum
/* 803DE884  2C 03 00 14 */	cmpwi r3, 0x14
/* 803DE888  41 80 00 30 */	blt lbl_803DE8B8
/* 803DE88C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DE890  38 00 00 13 */	li r0, 0x13
/* 803DE894  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DE898  3C 63 00 02 */	addis r3, r3, 2
/* 803DE89C  7C 09 03 A6 */	mtctr r0
/* 803DE8A0  38 63 0E D0 */	addi r3, r3, 0xed0
lbl_803DE8A4:
/* 803DE8A4  A0 03 00 02 */	lhz r0, 2(r3)
/* 803DE8A8  B0 03 00 00 */	sth r0, 0(r3)
/* 803DE8AC  38 63 00 02 */	addi r3, r3, 2
/* 803DE8B0  42 00 FF F4 */	bdnz lbl_803DE8A4
/* 803DE8B4  38 60 00 13 */	li r3, 0x13
lbl_803DE8B8:
/* 803DE8B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DE8BC  54 60 08 3C */	slwi r0, r3, 1
/* 803DE8C0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803DE8C4  3C 63 00 02 */	addis r3, r3, 2
/* 803DE8C8  7C 63 02 14 */	add r3, r3, r0
/* 803DE8CC  B3 E3 0E D0 */	sth r31, 0xed0(r3)
lbl_803DE8D0:
/* 803DE8D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE8D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE8D8  7C 08 03 A6 */	mtlr r0
/* 803DE8DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE8E0  4E 80 00 20 */	blr 
