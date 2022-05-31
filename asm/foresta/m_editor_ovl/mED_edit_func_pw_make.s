lbl_805DA6BC:
/* 805DA6BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DA6C0  7C 08 02 A6 */	mflr r0
/* 805DA6C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DA6C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805DA6CC  4B AC 08 01 */	bl func_8009AECC
/* 805DA6D0  7C 7B 1B 78 */	mr r27, r3
/* 805DA6D4  7C 9C 23 78 */	mr r28, r4
/* 805DA6D8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805DA6DC  83 A4 09 8C */	lwz r29, 0x98c(r4)
/* 805DA6E0  83 C4 09 F0 */	lwz r30, 0x9f0(r4)
/* 805DA6E4  88 1D 00 11 */	lbz r0, 0x11(r29)
/* 805DA6E8  83 FE 00 00 */	lwz r31, 0(r30)
/* 805DA6EC  28 00 00 08 */	cmplwi r0, 8
/* 805DA6F0  41 81 00 AC */	bgt lbl_805DA79C
/* 805DA6F4  3C 80 80 6D */	lis r4, lit_1315@ha /* 0x806CCDA8@ha */
/* 805DA6F8  54 00 10 3A */	slwi r0, r0, 2
/* 805DA6FC  38 84 CD A8 */	addi r4, r4, lit_1315@l /* 0x806CCDA8@l */
/* 805DA700  7C 04 00 2E */	lwzx r0, r4, r0
/* 805DA704  7C 09 03 A6 */	mtctr r0
/* 805DA708  4E 80 04 20 */	bctr 
lbl_805DA70C:
/* 805DA70C  7F A3 EB 78 */	mr r3, r29
/* 805DA710  4B FF EF 81 */	bl mED_move_cursol_left
/* 805DA714  48 00 00 88 */	b lbl_805DA79C
lbl_805DA718:
/* 805DA718  7F A4 EB 78 */	mr r4, r29
/* 805DA71C  38 A0 00 02 */	li r5, 2
/* 805DA720  4B FF EE B5 */	bl mED_move_cursol_right
/* 805DA724  48 00 00 78 */	b lbl_805DA79C
lbl_805DA728:
/* 805DA728  2C 1F 00 00 */	cmpwi r31, 0
/* 805DA72C  40 82 00 10 */	bne lbl_805DA73C
/* 805DA730  38 00 00 04 */	li r0, 4
/* 805DA734  98 1D 00 11 */	stb r0, 0x11(r29)
/* 805DA738  48 00 00 64 */	b lbl_805DA79C
lbl_805DA73C:
/* 805DA73C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 805DA740  38 A0 00 20 */	li r5, 0x20
/* 805DA744  A8 9D 00 18 */	lha r4, 0x18(r29)
/* 805DA748  4B DE 1E DD */	bl func_803BC624
/* 805DA74C  2C 03 00 00 */	cmpwi r3, 0
/* 805DA750  40 82 00 1C */	bne lbl_805DA76C
/* 805DA754  38 00 00 00 */	li r0, 0
/* 805DA758  38 60 10 03 */	li r3, 0x1003
/* 805DA75C  B0 1D 00 16 */	sth r0, 0x16(r29)
/* 805DA760  B0 1D 00 1E */	sth r0, 0x1e(r29)
/* 805DA764  48 05 35 A1 */	bl sAdo_SysTrgStart
/* 805DA768  48 00 00 34 */	b lbl_805DA79C
lbl_805DA76C:
/* 805DA76C  7F 63 DB 78 */	mr r3, r27
/* 805DA770  7F 84 E3 78 */	mr r4, r28
/* 805DA774  4B FF F0 39 */	bl mED_end_edit_func
/* 805DA778  48 00 00 24 */	b lbl_805DA79C
lbl_805DA77C:
/* 805DA77C  7F A3 EB 78 */	mr r3, r29
/* 805DA780  4B FF F0 7D */	bl mED_backspace_func
/* 805DA784  48 00 00 18 */	b lbl_805DA79C
lbl_805DA788:
/* 805DA788  7F A3 EB 78 */	mr r3, r29
/* 805DA78C  4B FF F1 C9 */	bl mED_exchange_code_func
/* 805DA790  48 00 00 0C */	b lbl_805DA79C
lbl_805DA794:
/* 805DA794  7F A4 EB 78 */	mr r4, r29
/* 805DA798  4B FF EC AD */	bl mED_input_pw_make_line
lbl_805DA79C:
/* 805DA79C  A8 1D 00 1E */	lha r0, 0x1e(r29)
/* 805DA7A0  7C 7E FA 14 */	add r3, r30, r31
/* 805DA7A4  98 03 00 04 */	stb r0, 4(r3)
/* 805DA7A8  88 1D 00 15 */	lbz r0, 0x15(r29)
/* 805DA7AC  28 00 00 00 */	cmplwi r0, 0
/* 805DA7B0  40 82 00 10 */	bne lbl_805DA7C0
/* 805DA7B4  7F A3 EB 78 */	mr r3, r29
/* 805DA7B8  7F C4 F3 78 */	mr r4, r30
/* 805DA7BC  4B FF FD 75 */	bl mED_move_pw_make_table
lbl_805DA7C0:
/* 805DA7C0  39 61 00 20 */	addi r11, r1, 0x20
/* 805DA7C4  4B AC 07 55 */	bl func_8009AF18
/* 805DA7C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DA7CC  7C 08 03 A6 */	mtlr r0
/* 805DA7D0  38 21 00 20 */	addi r1, r1, 0x20
/* 805DA7D4  4E 80 00 20 */	blr 
