lbl_805DA860:
/* 805DA860  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DA864  7C 08 02 A6 */	mflr r0
/* 805DA868  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DA86C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DA870  4B AC 06 61 */	bl func_8009AED0
/* 805DA874  7C 7C 1B 78 */	mr r28, r3
/* 805DA878  7C 9D 23 78 */	mr r29, r4
/* 805DA87C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805DA880  83 C4 09 8C */	lwz r30, 0x98c(r4)
/* 805DA884  83 E4 09 F4 */	lwz r31, 0x9f4(r4)
/* 805DA888  88 1E 00 11 */	lbz r0, 0x11(r30)
/* 805DA88C  28 00 00 08 */	cmplwi r0, 8
/* 805DA890  41 81 00 DC */	bgt lbl_805DA96C
/* 805DA894  3C 80 80 6D */	lis r4, lit_1355@ha /* 0x806CCDCC@ha */
/* 805DA898  54 00 10 3A */	slwi r0, r0, 2
/* 805DA89C  38 84 CD CC */	addi r4, r4, lit_1355@l /* 0x806CCDCC@l */
/* 805DA8A0  7C 04 00 2E */	lwzx r0, r4, r0
/* 805DA8A4  7C 09 03 A6 */	mtctr r0
/* 805DA8A8  4E 80 04 20 */	bctr 
lbl_805DA8AC:
/* 805DA8AC  A8 7E 00 16 */	lha r3, 0x16(r30)
/* 805DA8B0  2C 03 00 00 */	cmpwi r3, 0
/* 805DA8B4  40 81 00 18 */	ble lbl_805DA8CC
/* 805DA8B8  38 63 FF FF */	addi r3, r3, -1
/* 805DA8BC  38 00 00 01 */	li r0, 1
/* 805DA8C0  B0 7E 00 16 */	sth r3, 0x16(r30)
/* 805DA8C4  98 1E 00 15 */	stb r0, 0x15(r30)
/* 805DA8C8  48 00 00 A4 */	b lbl_805DA96C
lbl_805DA8CC:
/* 805DA8CC  38 60 10 03 */	li r3, 0x1003
/* 805DA8D0  48 05 34 35 */	bl sAdo_SysTrgStart
/* 805DA8D4  48 00 00 98 */	b lbl_805DA96C
lbl_805DA8D8:
/* 805DA8D8  A8 7E 00 16 */	lha r3, 0x16(r30)
/* 805DA8DC  A8 1E 00 18 */	lha r0, 0x18(r30)
/* 805DA8E0  7C 03 00 00 */	cmpw r3, r0
/* 805DA8E4  40 80 00 18 */	bge lbl_805DA8FC
/* 805DA8E8  38 63 00 01 */	addi r3, r3, 1
/* 805DA8EC  38 00 00 01 */	li r0, 1
/* 805DA8F0  B0 7E 00 16 */	sth r3, 0x16(r30)
/* 805DA8F4  98 1E 00 15 */	stb r0, 0x15(r30)
/* 805DA8F8  48 00 00 74 */	b lbl_805DA96C
lbl_805DA8FC:
/* 805DA8FC  38 60 10 03 */	li r3, 0x1003
/* 805DA900  48 05 34 05 */	bl sAdo_SysTrgStart
/* 805DA904  48 00 00 68 */	b lbl_805DA96C
lbl_805DA908:
/* 805DA908  88 1F 00 21 */	lbz r0, 0x21(r31)
/* 805DA90C  28 00 00 20 */	cmplwi r0, 0x20
/* 805DA910  41 82 00 28 */	beq lbl_805DA938
/* 805DA914  7F E3 FB 78 */	mr r3, r31
/* 805DA918  4B FF DC 75 */	bl mED_check_pw_usable_letter
/* 805DA91C  2C 03 00 00 */	cmpwi r3, 0
/* 805DA920  40 82 00 18 */	bne lbl_805DA938
/* 805DA924  7F 83 E3 78 */	mr r3, r28
/* 805DA928  7F A4 EB 78 */	mr r4, r29
/* 805DA92C  38 A0 00 1A */	li r5, 0x1a
/* 805DA930  4B FF DA 81 */	bl func_805D83B0
/* 805DA934  48 00 00 38 */	b lbl_805DA96C
lbl_805DA938:
/* 805DA938  7F 83 E3 78 */	mr r3, r28
/* 805DA93C  7F A4 EB 78 */	mr r4, r29
/* 805DA940  4B FF EE 6D */	bl mED_end_edit_func
/* 805DA944  48 00 00 28 */	b lbl_805DA96C
lbl_805DA948:
/* 805DA948  7F C3 F3 78 */	mr r3, r30
/* 805DA94C  7F E4 FB 78 */	mr r4, r31
/* 805DA950  4B FF EF 0D */	bl mED_backspace_func_pw_chk
/* 805DA954  48 00 00 18 */	b lbl_805DA96C
lbl_805DA958:
/* 805DA958  7F C3 F3 78 */	mr r3, r30
/* 805DA95C  4B FF EF F9 */	bl mED_exchange_code_func
/* 805DA960  48 00 00 0C */	b lbl_805DA96C
lbl_805DA964:
/* 805DA964  7F C4 F3 78 */	mr r4, r30
/* 805DA968  4B FF EB 75 */	bl mED_input_pw_chk_line
lbl_805DA96C:
/* 805DA96C  88 1E 00 15 */	lbz r0, 0x15(r30)
/* 805DA970  28 00 00 00 */	cmplwi r0, 0
/* 805DA974  40 82 00 10 */	bne lbl_805DA984
/* 805DA978  7F C3 F3 78 */	mr r3, r30
/* 805DA97C  7F E4 FB 78 */	mr r4, r31
/* 805DA980  4B FF FE 59 */	bl mED_move_pw_chk_table
lbl_805DA984:
/* 805DA984  39 61 00 20 */	addi r11, r1, 0x20
/* 805DA988  4B AC 05 95 */	bl func_8009AF1C
/* 805DA98C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DA990  7C 08 03 A6 */	mtlr r0
/* 805DA994  38 21 00 20 */	addi r1, r1, 0x20
/* 805DA998  4E 80 00 20 */	blr 
