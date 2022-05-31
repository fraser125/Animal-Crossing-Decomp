lbl_8054DCAC:
/* 8054DCAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054DCB0  7C 08 02 A6 */	mflr r0
/* 8054DCB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054DCB8  39 61 00 30 */	addi r11, r1, 0x30
/* 8054DCBC  4B B4 D2 19 */	bl func_8009AED4
/* 8054DCC0  7C 7D 1B 78 */	mr r29, r3
/* 8054DCC4  3B E0 00 00 */	li r31, 0
/* 8054DCC8  88 03 09 F3 */	lbz r0, 0x9f3(r3)
/* 8054DCCC  28 00 00 20 */	cmplwi r0, 0x20
/* 8054DCD0  40 82 00 0C */	bne lbl_8054DCDC
/* 8054DCD4  3B E0 00 09 */	li r31, 9
/* 8054DCD8  48 00 00 7C */	b lbl_8054DD54
lbl_8054DCDC:
/* 8054DCDC  38 61 00 08 */	addi r3, r1, 8
/* 8054DCE0  38 9D 09 D8 */	addi r4, r29, 0x9d8
/* 8054DCE4  4B E7 03 81 */	bl mMpswd_decode_code
/* 8054DCE8  2C 03 00 01 */	cmpwi r3, 1
/* 8054DCEC  40 82 00 68 */	bne lbl_8054DD54
/* 8054DCF0  3B DD 09 F8 */	addi r30, r29, 0x9f8
/* 8054DCF4  38 61 00 08 */	addi r3, r1, 8
/* 8054DCF8  7F C4 F3 78 */	mr r4, r30
/* 8054DCFC  4B E7 04 99 */	bl mMpswd_password
/* 8054DD00  7F C3 F3 78 */	mr r3, r30
/* 8054DD04  4B E7 05 9D */	bl mMpswd_password_zuru_check
/* 8054DD08  2C 03 00 00 */	cmpwi r3, 0
/* 8054DD0C  40 82 00 48 */	bne lbl_8054DD54
/* 8054DD10  7F C3 F3 78 */	mr r3, r30
/* 8054DD14  4B E7 0D 5D */	bl mMpswd_check_present
/* 8054DD18  2C 03 00 01 */	cmpwi r3, 1
/* 8054DD1C  40 82 00 38 */	bne lbl_8054DD54
/* 8054DD20  7F A3 EB 78 */	mr r3, r29
/* 8054DD24  4B FF FD 31 */	bl aNSC_set_pw_password_str
/* 8054DD28  7F A3 EB 78 */	mr r3, r29
/* 8054DD2C  4B FF FD 89 */	bl aNSC_set_pw_info_str
/* 8054DD30  88 1E 00 04 */	lbz r0, 4(r30)
/* 8054DD34  3C 60 80 6A */	lis r3, pc_check_password_proc@ha /* 0x806A5C40@ha */
/* 8054DD38  38 83 5C 40 */	addi r4, r3, pc_check_password_proc@l /* 0x806A5C40@l */
/* 8054DD3C  7F C3 F3 78 */	mr r3, r30
/* 8054DD40  54 00 10 3A */	slwi r0, r0, 2
/* 8054DD44  7D 84 00 2E */	lwzx r12, r4, r0
/* 8054DD48  7D 89 03 A6 */	mtctr r12
/* 8054DD4C  4E 80 04 21 */	bctrl 
/* 8054DD50  7C 7F 1B 78 */	mr r31, r3
lbl_8054DD54:
/* 8054DD54  7F E3 FB 78 */	mr r3, r31
/* 8054DD58  39 61 00 30 */	addi r11, r1, 0x30
/* 8054DD5C  4B B4 D1 C5 */	bl func_8009AF20
/* 8054DD60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054DD64  7C 08 03 A6 */	mtlr r0
/* 8054DD68  38 21 00 30 */	addi r1, r1, 0x30
/* 8054DD6C  4E 80 00 20 */	blr 
