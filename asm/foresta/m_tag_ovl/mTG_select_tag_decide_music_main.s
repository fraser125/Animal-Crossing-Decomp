lbl_805FB564:
/* 805FB564  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FB568  7C 08 02 A6 */	mflr r0
/* 805FB56C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FB570  39 61 00 20 */	addi r11, r1, 0x20
/* 805FB574  4B A9 F9 61 */	bl func_8009AED4
/* 805FB578  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FB57C  80 64 09 7C */	lwz r3, 0x97c(r4)
/* 805FB580  83 E4 09 D0 */	lwz r31, 0x9d0(r4)
/* 805FB584  38 63 00 08 */	addi r3, r3, 8
/* 805FB588  4B FF 45 D9 */	bl mTG_get_table_idx
/* 805FB58C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805FB590  7C 7E 1B 78 */	mr r30, r3
/* 805FB594  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805FB598  3B A0 00 00 */	li r29, 0
/* 805FB59C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805FB5A0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805FB5A4  40 82 00 10 */	bne lbl_805FB5B4
/* 805FB5A8  3C 63 00 02 */	addis r3, r3, 2
/* 805FB5AC  38 63 32 14 */	addi r3, r3, 0x3214
/* 805FB5B0  48 00 00 28 */	b lbl_805FB5D8
lbl_805FB5B4:
/* 805FB5B4  3C 63 00 02 */	addis r3, r3, 2
/* 805FB5B8  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 805FB5BC  4B DB 7F FD */	bl mHS_get_arrange_idx
/* 805FB5C0  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805FB5C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FB5C8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805FB5CC  7C 60 22 14 */	add r3, r0, r4
/* 805FB5D0  3C 63 00 01 */	addis r3, r3, 1
/* 805FB5D4  38 63 C3 6C */	addi r3, r3, -15508
lbl_805FB5D8:
/* 805FB5D8  7F C0 2E 70 */	srawi r0, r30, 5
/* 805FB5DC  57 C4 06 FE */	clrlwi r4, r30, 0x1b
/* 805FB5E0  7C 00 01 94 */	addze r0, r0
/* 805FB5E4  54 05 17 7A */	rlwinm r5, r0, 2, 0x1d, 0x1d
/* 805FB5E8  7C 03 28 2E */	lwzx r0, r3, r5
/* 805FB5EC  7C 00 24 30 */	srw r0, r0, r4
/* 805FB5F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805FB5F4  41 82 00 6C */	beq lbl_805FB660
/* 805FB5F8  38 00 00 37 */	li r0, 0x37
/* 805FB5FC  38 E0 00 00 */	li r7, 0
/* 805FB600  38 C0 00 00 */	li r6, 0
/* 805FB604  7C 09 03 A6 */	mtctr r0
lbl_805FB608:
/* 805FB608  7C C3 2E 70 */	srawi r3, r6, 5
/* 805FB60C  54 C0 06 FE */	clrlwi r0, r6, 0x1b
/* 805FB610  7C 63 01 94 */	addze r3, r3
/* 805FB614  54 63 17 7A */	rlwinm r3, r3, 2, 0x1d, 0x1d
/* 805FB618  38 63 00 14 */	addi r3, r3, 0x14
/* 805FB61C  7C 7F 18 2E */	lwzx r3, r31, r3
/* 805FB620  7C 60 04 30 */	srw r0, r3, r0
/* 805FB624  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805FB628  41 82 00 08 */	beq lbl_805FB630
/* 805FB62C  38 E7 00 01 */	addi r7, r7, 1
lbl_805FB630:
/* 805FB630  38 C6 00 01 */	addi r6, r6, 1
/* 805FB634  42 00 FF D4 */	bdnz lbl_805FB608
/* 805FB638  2C 07 00 01 */	cmpwi r7, 1
/* 805FB63C  41 80 00 20 */	blt lbl_805FB65C
/* 805FB640  7C 7F 2A 14 */	add r3, r31, r5
/* 805FB644  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805FB648  7C 00 24 30 */	srw r0, r0, r4
/* 805FB64C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805FB650  41 82 00 0C */	beq lbl_805FB65C
/* 805FB654  3B A0 00 32 */	li r29, 0x32
/* 805FB658  48 00 00 08 */	b lbl_805FB660
lbl_805FB65C:
/* 805FB65C  3B A0 00 31 */	li r29, 0x31
lbl_805FB660:
/* 805FB660  7F A3 EB 78 */	mr r3, r29
/* 805FB664  39 61 00 20 */	addi r11, r1, 0x20
/* 805FB668  4B A9 F8 B9 */	bl func_8009AF20
/* 805FB66C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FB670  7C 08 03 A6 */	mtlr r0
/* 805FB674  38 21 00 20 */	addi r1, r1, 0x20
/* 805FB678  4E 80 00 20 */	blr 
