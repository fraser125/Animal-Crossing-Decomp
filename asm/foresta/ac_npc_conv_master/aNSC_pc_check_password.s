lbl_80546394:
/* 80546394  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80546398  7C 08 02 A6 */	mflr r0
/* 8054639C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805463A0  39 61 00 30 */	addi r11, r1, 0x30
/* 805463A4  4B B5 4B 31 */	bl func_8009AED4
/* 805463A8  7C 7D 1B 78 */	mr r29, r3
/* 805463AC  3B E0 00 00 */	li r31, 0
/* 805463B0  88 03 09 F3 */	lbz r0, 0x9f3(r3)
/* 805463B4  28 00 00 20 */	cmplwi r0, 0x20
/* 805463B8  40 82 00 0C */	bne lbl_805463C4
/* 805463BC  3B E0 00 09 */	li r31, 9
/* 805463C0  48 00 00 7C */	b lbl_8054643C
lbl_805463C4:
/* 805463C4  38 61 00 08 */	addi r3, r1, 8
/* 805463C8  38 9D 09 D8 */	addi r4, r29, 0x9d8
/* 805463CC  4B E7 7C 99 */	bl mMpswd_decode_code
/* 805463D0  2C 03 00 01 */	cmpwi r3, 1
/* 805463D4  40 82 00 68 */	bne lbl_8054643C
/* 805463D8  3B DD 09 F8 */	addi r30, r29, 0x9f8
/* 805463DC  38 61 00 08 */	addi r3, r1, 8
/* 805463E0  7F C4 F3 78 */	mr r4, r30
/* 805463E4  4B E7 7D B1 */	bl mMpswd_password
/* 805463E8  7F C3 F3 78 */	mr r3, r30
/* 805463EC  4B E7 7E B5 */	bl mMpswd_password_zuru_check
/* 805463F0  2C 03 00 00 */	cmpwi r3, 0
/* 805463F4  40 82 00 48 */	bne lbl_8054643C
/* 805463F8  7F C3 F3 78 */	mr r3, r30
/* 805463FC  4B E7 86 75 */	bl mMpswd_check_present
/* 80546400  2C 03 00 01 */	cmpwi r3, 1
/* 80546404  40 82 00 38 */	bne lbl_8054643C
/* 80546408  7F A3 EB 78 */	mr r3, r29
/* 8054640C  4B FF FD 31 */	bl aNSC_set_pw_password_str
/* 80546410  7F A3 EB 78 */	mr r3, r29
/* 80546414  4B FF FD 89 */	bl aNSC_set_pw_info_str
/* 80546418  88 1E 00 04 */	lbz r0, 4(r30)
/* 8054641C  3C 60 80 6A */	lis r3, pc_check_password_proc@ha /* 0x806A4A2C@ha */
/* 80546420  38 83 4A 2C */	addi r4, r3, pc_check_password_proc@l /* 0x806A4A2C@l */
/* 80546424  7F C3 F3 78 */	mr r3, r30
/* 80546428  54 00 10 3A */	slwi r0, r0, 2
/* 8054642C  7D 84 00 2E */	lwzx r12, r4, r0
/* 80546430  7D 89 03 A6 */	mtctr r12
/* 80546434  4E 80 04 21 */	bctrl 
/* 80546438  7C 7F 1B 78 */	mr r31, r3
lbl_8054643C:
/* 8054643C  7F E3 FB 78 */	mr r3, r31
/* 80546440  39 61 00 30 */	addi r11, r1, 0x30
/* 80546444  4B B5 4A DD */	bl func_8009AF20
/* 80546448  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054644C  7C 08 03 A6 */	mtlr r0
/* 80546450  38 21 00 30 */	addi r1, r1, 0x30
/* 80546454  4E 80 00 20 */	blr 
