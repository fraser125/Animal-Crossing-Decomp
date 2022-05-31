lbl_805F3B9C:
/* 805F3B9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F3BA0  7C 08 02 A6 */	mflr r0
/* 805F3BA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F3BA8  39 61 00 20 */	addi r11, r1, 0x20
/* 805F3BAC  4B AA 73 29 */	bl func_8009AED4
/* 805F3BB0  7C 7D 1B 78 */	mr r29, r3
/* 805F3BB4  7C 9E 23 78 */	mr r30, r4
/* 805F3BB8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805F3BBC  80 64 09 7C */	lwz r3, 0x97c(r4)
/* 805F3BC0  83 E4 09 88 */	lwz r31, 0x988(r4)
/* 805F3BC4  38 63 00 08 */	addi r3, r3, 8
/* 805F3BC8  4B FF BF 99 */	bl mTG_get_table_idx
/* 805F3BCC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F3BD0  54 60 08 3C */	slwi r0, r3, 1
/* 805F3BD4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805F3BD8  3C C3 00 02 */	addis r6, r3, 2
/* 805F3BDC  80 66 61 3C */	lwz r3, 0x613c(r6)
/* 805F3BE0  80 63 00 88 */	lwz r3, 0x88(r3)
/* 805F3BE4  7C 60 04 30 */	srw r0, r3, r0
/* 805F3BE8  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 805F3BEC  28 00 00 02 */	cmplwi r0, 2
/* 805F3BF0  40 82 00 18 */	bne lbl_805F3C08
/* 805F3BF4  7F A3 EB 78 */	mr r3, r29
/* 805F3BF8  7F C4 F3 78 */	mr r4, r30
/* 805F3BFC  38 A0 00 08 */	li r5, 8
/* 805F3C00  4B FF F2 21 */	bl mTG_open_warning_window
/* 805F3C04  48 00 00 8C */	b lbl_805F3C90
lbl_805F3C08:
/* 805F3C08  38 00 00 0F */	li r0, 0xf
/* 805F3C0C  80 9D 01 74 */	lwz r4, 0x174(r29)
/* 805F3C10  39 20 00 00 */	li r9, 0
/* 805F3C14  38 60 00 00 */	li r3, 0
/* 805F3C18  7C 09 03 A6 */	mtctr r0
lbl_805F3C1C:
/* 805F3C1C  B0 64 00 00 */	sth r3, 0(r4)
/* 805F3C20  98 64 00 02 */	stb r3, 2(r4)
/* 805F3C24  38 84 00 04 */	addi r4, r4, 4
/* 805F3C28  42 00 FF F4 */	bdnz lbl_805F3C1C
/* 805F3C2C  39 00 00 00 */	li r8, 0
/* 805F3C30  38 00 00 0F */	li r0, 0xf
/* 805F3C34  7D 03 43 78 */	mr r3, r8
/* 805F3C38  80 FD 01 74 */	lwz r7, 0x174(r29)
/* 805F3C3C  38 A0 00 01 */	li r5, 1
/* 805F3C40  7C 09 03 A6 */	mtctr r0
lbl_805F3C44:
/* 805F3C44  A0 9F 05 E0 */	lhz r4, 0x5e0(r31)
/* 805F3C48  7C A0 40 30 */	slw r0, r5, r8
/* 805F3C4C  7C 80 00 39 */	and. r0, r4, r0
/* 805F3C50  41 82 00 20 */	beq lbl_805F3C70
/* 805F3C54  80 86 61 3C */	lwz r4, 0x613c(r6)
/* 805F3C58  38 03 00 68 */	addi r0, r3, 0x68
/* 805F3C5C  39 29 00 01 */	addi r9, r9, 1
/* 805F3C60  7C 04 02 2E */	lhzx r0, r4, r0
/* 805F3C64  B0 07 00 00 */	sth r0, 0(r7)
/* 805F3C68  99 07 00 02 */	stb r8, 2(r7)
/* 805F3C6C  38 E7 00 04 */	addi r7, r7, 4
lbl_805F3C70:
/* 805F3C70  39 08 00 01 */	addi r8, r8, 1
/* 805F3C74  38 63 00 02 */	addi r3, r3, 2
/* 805F3C78  42 00 FF CC */	bdnz lbl_805F3C44
/* 805F3C7C  B1 3D 01 7A */	sth r9, 0x17a(r29)
/* 805F3C80  7F A3 EB 78 */	mr r3, r29
/* 805F3C84  7F C4 F3 78 */	mr r4, r30
/* 805F3C88  38 A0 00 01 */	li r5, 1
/* 805F3C8C  4B FF F3 89 */	bl mTG_close_window
lbl_805F3C90:
/* 805F3C90  39 61 00 20 */	addi r11, r1, 0x20
/* 805F3C94  4B AA 72 8D */	bl func_8009AF20
/* 805F3C98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F3C9C  7C 08 03 A6 */	mtlr r0
/* 805F3CA0  38 21 00 20 */	addi r1, r1, 0x20
/* 805F3CA4  4E 80 00 20 */	blr 
