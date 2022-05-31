lbl_805DA1E0:
/* 805DA1E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DA1E4  7C 08 02 A6 */	mflr r0
/* 805DA1E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DA1EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805DA1F0  4B AC 0C E5 */	bl func_8009AED4
/* 805DA1F4  7C 7D 1B 78 */	mr r29, r3
/* 805DA1F8  7C 9E 23 78 */	mr r30, r4
/* 805DA1FC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DA200  83 E5 09 8C */	lwz r31, 0x98c(r5)
/* 805DA204  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 805DA208  28 00 00 08 */	cmplwi r0, 8
/* 805DA20C  41 81 00 A4 */	bgt lbl_805DA2B0
/* 805DA210  3C A0 80 6D */	lis r5, lit_1207@ha /* 0x806CCD34@ha */
/* 805DA214  54 00 10 3A */	slwi r0, r0, 2
/* 805DA218  38 A5 CD 34 */	addi r5, r5, lit_1207@l /* 0x806CCD34@l */
/* 805DA21C  7C 05 00 2E */	lwzx r0, r5, r0
/* 805DA220  7C 09 03 A6 */	mtctr r0
/* 805DA224  4E 80 04 20 */	bctr 
lbl_805DA228:
/* 805DA228  7F E5 FB 78 */	mr r5, r31
/* 805DA22C  4B FF FF 35 */	bl mED_move_footer_cursol_left
/* 805DA230  48 00 00 80 */	b lbl_805DA2B0
lbl_805DA234:
/* 805DA234  7F E5 FB 78 */	mr r5, r31
/* 805DA238  4B FF FE 49 */	bl mED_move_footer_cursol_right
/* 805DA23C  48 00 00 74 */	b lbl_805DA2B0
lbl_805DA240:
/* 805DA240  7F E4 FB 78 */	mr r4, r31
/* 805DA244  7F C5 F3 78 */	mr r5, r30
/* 805DA248  4B FF F7 7D */	bl mED_all_space_check
/* 805DA24C  2C 03 00 00 */	cmpwi r3, 0
/* 805DA250  41 82 00 10 */	beq lbl_805DA260
/* 805DA254  38 60 10 03 */	li r3, 0x1003
/* 805DA258  48 05 3A AD */	bl sAdo_SysTrgStart
/* 805DA25C  48 00 00 54 */	b lbl_805DA2B0
lbl_805DA260:
/* 805DA260  7F E3 FB 78 */	mr r3, r31
/* 805DA264  7F C4 F3 78 */	mr r4, r30
/* 805DA268  4B FF F8 25 */	bl mED_ng_word_check
/* 805DA26C  2C 03 00 00 */	cmpwi r3, 0
/* 805DA270  41 82 00 10 */	beq lbl_805DA280
/* 805DA274  38 60 10 03 */	li r3, 0x1003
/* 805DA278  48 05 3A 8D */	bl sAdo_SysTrgStart
/* 805DA27C  48 00 00 34 */	b lbl_805DA2B0
lbl_805DA280:
/* 805DA280  7F A3 EB 78 */	mr r3, r29
/* 805DA284  7F C4 F3 78 */	mr r4, r30
/* 805DA288  4B FF F5 25 */	bl mED_end_edit_func
/* 805DA28C  48 00 00 24 */	b lbl_805DA2B0
lbl_805DA290:
/* 805DA290  7F E3 FB 78 */	mr r3, r31
/* 805DA294  4B FF F5 69 */	bl mED_backspace_func
/* 805DA298  48 00 00 18 */	b lbl_805DA2B0
lbl_805DA29C:
/* 805DA29C  7F E3 FB 78 */	mr r3, r31
/* 805DA2A0  4B FF F6 B5 */	bl mED_exchange_code_func
/* 805DA2A4  48 00 00 0C */	b lbl_805DA2B0
lbl_805DA2A8:
/* 805DA2A8  7F E5 FB 78 */	mr r5, r31
/* 805DA2AC  4B FF FD 85 */	bl mED_input_footer_line
lbl_805DA2B0:
/* 805DA2B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805DA2B4  4B AC 0C 6D */	bl func_8009AF20
/* 805DA2B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DA2BC  7C 08 03 A6 */	mtlr r0
/* 805DA2C0  38 21 00 20 */	addi r1, r1, 0x20
/* 805DA2C4  4E 80 00 20 */	blr 
