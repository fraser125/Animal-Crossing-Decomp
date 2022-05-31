lbl_805D9BF8:
/* 805D9BF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D9BFC  7C 08 02 A6 */	mflr r0
/* 805D9C00  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D9C04  39 61 00 20 */	addi r11, r1, 0x20
/* 805D9C08  4B AC 12 CD */	bl func_8009AED4
/* 805D9C0C  7C 7D 1B 78 */	mr r29, r3
/* 805D9C10  7C 9E 23 78 */	mr r30, r4
/* 805D9C14  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805D9C18  83 E4 09 8C */	lwz r31, 0x98c(r4)
/* 805D9C1C  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 805D9C20  28 00 00 08 */	cmplwi r0, 8
/* 805D9C24  41 81 00 A8 */	bgt lbl_805D9CCC
/* 805D9C28  3C 80 80 6D */	lis r4, lit_1073@ha /* 0x806CCD10@ha */
/* 805D9C2C  54 00 10 3A */	slwi r0, r0, 2
/* 805D9C30  38 84 CD 10 */	addi r4, r4, lit_1073@l /* 0x806CCD10@l */
/* 805D9C34  7C 04 00 2E */	lwzx r0, r4, r0
/* 805D9C38  7C 09 03 A6 */	mtctr r0
/* 805D9C3C  4E 80 04 20 */	bctr 
lbl_805D9C40:
/* 805D9C40  7F E3 FB 78 */	mr r3, r31
/* 805D9C44  4B FF FA 4D */	bl mED_move_cursol_left
/* 805D9C48  48 00 00 84 */	b lbl_805D9CCC
lbl_805D9C4C:
/* 805D9C4C  7F E4 FB 78 */	mr r4, r31
/* 805D9C50  38 A0 00 00 */	li r5, 0
/* 805D9C54  4B FF F9 81 */	bl mED_move_cursol_right
/* 805D9C58  48 00 00 74 */	b lbl_805D9CCC
lbl_805D9C5C:
/* 805D9C5C  7F E4 FB 78 */	mr r4, r31
/* 805D9C60  7F C5 F3 78 */	mr r5, r30
/* 805D9C64  4B FF FD 61 */	bl mED_all_space_check
/* 805D9C68  2C 03 00 00 */	cmpwi r3, 0
/* 805D9C6C  41 82 00 10 */	beq lbl_805D9C7C
/* 805D9C70  38 60 10 03 */	li r3, 0x1003
/* 805D9C74  48 05 40 91 */	bl sAdo_SysTrgStart
/* 805D9C78  48 00 00 54 */	b lbl_805D9CCC
lbl_805D9C7C:
/* 805D9C7C  7F E3 FB 78 */	mr r3, r31
/* 805D9C80  7F C4 F3 78 */	mr r4, r30
/* 805D9C84  4B FF FE 09 */	bl mED_ng_word_check
/* 805D9C88  2C 03 00 00 */	cmpwi r3, 0
/* 805D9C8C  41 82 00 10 */	beq lbl_805D9C9C
/* 805D9C90  38 60 10 03 */	li r3, 0x1003
/* 805D9C94  48 05 40 71 */	bl sAdo_SysTrgStart
/* 805D9C98  48 00 00 34 */	b lbl_805D9CCC
lbl_805D9C9C:
/* 805D9C9C  7F A3 EB 78 */	mr r3, r29
/* 805D9CA0  7F C4 F3 78 */	mr r4, r30
/* 805D9CA4  4B FF FB 09 */	bl mED_end_edit_func
/* 805D9CA8  48 00 00 24 */	b lbl_805D9CCC
lbl_805D9CAC:
/* 805D9CAC  7F E3 FB 78 */	mr r3, r31
/* 805D9CB0  4B FF FB 4D */	bl mED_backspace_func
/* 805D9CB4  48 00 00 18 */	b lbl_805D9CCC
lbl_805D9CB8:
/* 805D9CB8  7F E3 FB 78 */	mr r3, r31
/* 805D9CBC  4B FF FC 99 */	bl mED_exchange_code_func
/* 805D9CC0  48 00 00 0C */	b lbl_805D9CCC
lbl_805D9CC4:
/* 805D9CC4  7F E4 FB 78 */	mr r4, r31
/* 805D9CC8  4B FF F5 65 */	bl mED_input_single_line
lbl_805D9CCC:
/* 805D9CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 805D9CD0  4B AC 12 51 */	bl func_8009AF20
/* 805D9CD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D9CD8  7C 08 03 A6 */	mtlr r0
/* 805D9CDC  38 21 00 20 */	addi r1, r1, 0x20
/* 805D9CE0  4E 80 00 20 */	blr 
