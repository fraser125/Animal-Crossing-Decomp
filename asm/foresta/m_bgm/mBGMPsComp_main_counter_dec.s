lbl_8037B79C:
/* 8037B79C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037B7A0  7C 08 02 A6 */	mflr r0
/* 8037B7A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037B7A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8037B7AC  4B D1 F7 29 */	bl func_8009AED4
/* 8037B7B0  83 A3 01 18 */	lwz r29, 0x118(r3)
/* 8037B7B4  3B C0 00 00 */	li r30, 0
/* 8037B7B8  7C 7F 1B 78 */	mr r31, r3
/* 8037B7BC  48 00 00 14 */	b lbl_8037B7D0
lbl_8037B7C0:
/* 8037B7C0  7F E3 FB 78 */	mr r3, r31
/* 8037B7C4  4B FF EF AD */	bl mBGMPs_counter_dec
/* 8037B7C8  3B DE 00 01 */	addi r30, r30, 1
/* 8037B7CC  3B FF 00 14 */	addi r31, r31, 0x14
lbl_8037B7D0:
/* 8037B7D0  7C 1E E8 00 */	cmpw r30, r29
/* 8037B7D4  41 80 FF EC */	blt lbl_8037B7C0
/* 8037B7D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8037B7DC  4B D1 F7 45 */	bl func_8009AF20
/* 8037B7E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037B7E4  7C 08 03 A6 */	mtlr r0
/* 8037B7E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8037B7EC  4E 80 00 20 */	blr 
