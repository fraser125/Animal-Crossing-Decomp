lbl_805D95D4:
/* 805D95D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D95D8  7C 08 02 A6 */	mflr r0
/* 805D95DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D95E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D95E4  7C 9F 23 78 */	mr r31, r4
/* 805D95E8  A8 C4 00 16 */	lha r6, 0x16(r4)
/* 805D95EC  A8 84 00 1E */	lha r4, 0x1e(r4)
/* 805D95F0  7C 06 20 00 */	cmpw r6, r4
/* 805D95F4  40 80 00 20 */	bge lbl_805D9614
/* 805D95F8  7C 80 07 35 */	extsh. r0, r4
/* 805D95FC  40 81 00 18 */	ble lbl_805D9614
/* 805D9600  38 66 00 01 */	addi r3, r6, 1
/* 805D9604  38 00 00 01 */	li r0, 1
/* 805D9608  B0 7F 00 16 */	sth r3, 0x16(r31)
/* 805D960C  98 1F 00 15 */	stb r0, 0x15(r31)
/* 805D9610  48 00 00 6C */	b lbl_805D967C
lbl_805D9614:
/* 805D9614  7C 06 20 00 */	cmpw r6, r4
/* 805D9618  40 82 00 64 */	bne lbl_805D967C
/* 805D961C  38 00 00 20 */	li r0, 0x20
/* 805D9620  2C 05 00 01 */	cmpwi r5, 1
/* 805D9624  98 1F 00 13 */	stb r0, 0x13(r31)
/* 805D9628  41 82 00 20 */	beq lbl_805D9648
/* 805D962C  40 80 00 10 */	bge lbl_805D963C
/* 805D9630  2C 05 00 00 */	cmpwi r5, 0
/* 805D9634  40 80 00 20 */	bge lbl_805D9654
/* 805D9638  48 00 00 30 */	b lbl_805D9668
lbl_805D963C:
/* 805D963C  2C 05 00 03 */	cmpwi r5, 3
/* 805D9640  40 80 00 28 */	bge lbl_805D9668
/* 805D9644  48 00 00 1C */	b lbl_805D9660
lbl_805D9648:
/* 805D9648  7F E4 FB 78 */	mr r4, r31
/* 805D964C  4B FF FD D5 */	bl mED_input_multi_line
/* 805D9650  48 00 00 18 */	b lbl_805D9668
lbl_805D9654:
/* 805D9654  7F E4 FB 78 */	mr r4, r31
/* 805D9658  4B FF FB D5 */	bl mED_input_single_line
/* 805D965C  48 00 00 0C */	b lbl_805D9668
lbl_805D9660:
/* 805D9660  7F E4 FB 78 */	mr r4, r31
/* 805D9664  4B FF FD E1 */	bl mED_input_pw_make_line
lbl_805D9668:
/* 805D9668  88 1F 00 15 */	lbz r0, 0x15(r31)
/* 805D966C  28 00 00 00 */	cmplwi r0, 0
/* 805D9670  41 82 00 0C */	beq lbl_805D967C
/* 805D9674  38 00 00 08 */	li r0, 8
/* 805D9678  98 1F 00 11 */	stb r0, 0x11(r31)
lbl_805D967C:
/* 805D967C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D9680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D9684  7C 08 03 A6 */	mtlr r0
/* 805D9688  38 21 00 10 */	addi r1, r1, 0x10
/* 805D968C  4E 80 00 20 */	blr 