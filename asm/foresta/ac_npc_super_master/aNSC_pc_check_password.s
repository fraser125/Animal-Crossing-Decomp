lbl_80581438:
/* 80581438  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058143C  7C 08 02 A6 */	mflr r0
/* 80581440  90 01 00 34 */	stw r0, 0x34(r1)
/* 80581444  39 61 00 30 */	addi r11, r1, 0x30
/* 80581448  4B B1 9A 8D */	bl func_8009AED4
/* 8058144C  7C 7D 1B 78 */	mr r29, r3
/* 80581450  3B E0 00 00 */	li r31, 0
/* 80581454  88 03 09 F3 */	lbz r0, 0x9f3(r3)
/* 80581458  28 00 00 20 */	cmplwi r0, 0x20
/* 8058145C  40 82 00 0C */	bne lbl_80581468
/* 80581460  3B E0 00 09 */	li r31, 9
/* 80581464  48 00 00 7C */	b lbl_805814E0
lbl_80581468:
/* 80581468  38 61 00 08 */	addi r3, r1, 8
/* 8058146C  38 9D 09 D8 */	addi r4, r29, 0x9d8
/* 80581470  4B E3 CB F5 */	bl mMpswd_decode_code
/* 80581474  2C 03 00 01 */	cmpwi r3, 1
/* 80581478  40 82 00 68 */	bne lbl_805814E0
/* 8058147C  3B DD 09 F8 */	addi r30, r29, 0x9f8
/* 80581480  38 61 00 08 */	addi r3, r1, 8
/* 80581484  7F C4 F3 78 */	mr r4, r30
/* 80581488  4B E3 CD 0D */	bl mMpswd_password
/* 8058148C  7F C3 F3 78 */	mr r3, r30
/* 80581490  4B E3 CE 11 */	bl mMpswd_password_zuru_check
/* 80581494  2C 03 00 00 */	cmpwi r3, 0
/* 80581498  40 82 00 48 */	bne lbl_805814E0
/* 8058149C  7F C3 F3 78 */	mr r3, r30
/* 805814A0  4B E3 D5 D1 */	bl mMpswd_check_present
/* 805814A4  2C 03 00 01 */	cmpwi r3, 1
/* 805814A8  40 82 00 38 */	bne lbl_805814E0
/* 805814AC  7F A3 EB 78 */	mr r3, r29
/* 805814B0  4B FF FD 31 */	bl aNSC_set_pw_password_str
/* 805814B4  7F A3 EB 78 */	mr r3, r29
/* 805814B8  4B FF FD 89 */	bl aNSC_set_pw_info_str
/* 805814BC  88 1E 00 04 */	lbz r0, 4(r30)
/* 805814C0  3C 60 80 6C */	lis r3, pc_check_password_proc@ha /* 0x806C1748@ha */
/* 805814C4  38 83 17 48 */	addi r4, r3, pc_check_password_proc@l /* 0x806C1748@l */
/* 805814C8  7F C3 F3 78 */	mr r3, r30
/* 805814CC  54 00 10 3A */	slwi r0, r0, 2
/* 805814D0  7D 84 00 2E */	lwzx r12, r4, r0
/* 805814D4  7D 89 03 A6 */	mtctr r12
/* 805814D8  4E 80 04 21 */	bctrl 
/* 805814DC  7C 7F 1B 78 */	mr r31, r3
lbl_805814E0:
/* 805814E0  7F E3 FB 78 */	mr r3, r31
/* 805814E4  39 61 00 30 */	addi r11, r1, 0x30
/* 805814E8  4B B1 9A 39 */	bl func_8009AF20
/* 805814EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805814F0  7C 08 03 A6 */	mtlr r0
/* 805814F4  38 21 00 30 */	addi r1, r1, 0x30
/* 805814F8  4E 80 00 20 */	blr 
