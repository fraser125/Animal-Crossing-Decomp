lbl_8057792C:
/* 8057792C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80577930  7C 08 02 A6 */	mflr r0
/* 80577934  90 01 00 34 */	stw r0, 0x34(r1)
/* 80577938  39 61 00 30 */	addi r11, r1, 0x30
/* 8057793C  4B B2 35 99 */	bl func_8009AED4
/* 80577940  7C 7D 1B 78 */	mr r29, r3
/* 80577944  3B E0 00 00 */	li r31, 0
/* 80577948  88 03 09 F3 */	lbz r0, 0x9f3(r3)
/* 8057794C  28 00 00 20 */	cmplwi r0, 0x20
/* 80577950  40 82 00 0C */	bne lbl_8057795C
/* 80577954  3B E0 00 09 */	li r31, 9
/* 80577958  48 00 00 7C */	b lbl_805779D4
lbl_8057795C:
/* 8057795C  38 61 00 08 */	addi r3, r1, 8
/* 80577960  38 9D 09 D8 */	addi r4, r29, 0x9d8
/* 80577964  4B E4 67 01 */	bl mMpswd_decode_code
/* 80577968  2C 03 00 01 */	cmpwi r3, 1
/* 8057796C  40 82 00 68 */	bne lbl_805779D4
/* 80577970  3B DD 09 F8 */	addi r30, r29, 0x9f8
/* 80577974  38 61 00 08 */	addi r3, r1, 8
/* 80577978  7F C4 F3 78 */	mr r4, r30
/* 8057797C  4B E4 68 19 */	bl mMpswd_password
/* 80577980  7F C3 F3 78 */	mr r3, r30
/* 80577984  4B E4 69 1D */	bl mMpswd_password_zuru_check
/* 80577988  2C 03 00 00 */	cmpwi r3, 0
/* 8057798C  40 82 00 48 */	bne lbl_805779D4
/* 80577990  7F C3 F3 78 */	mr r3, r30
/* 80577994  4B E4 70 DD */	bl mMpswd_check_present
/* 80577998  2C 03 00 01 */	cmpwi r3, 1
/* 8057799C  40 82 00 38 */	bne lbl_805779D4
/* 805779A0  7F A3 EB 78 */	mr r3, r29
/* 805779A4  4B FF FD 31 */	bl aNSC_set_pw_password_str
/* 805779A8  7F A3 EB 78 */	mr r3, r29
/* 805779AC  4B FF FD 89 */	bl aNSC_set_pw_info_str
/* 805779B0  88 1E 00 04 */	lbz r0, 4(r30)
/* 805779B4  3C 60 80 6C */	lis r3, pc_check_password_proc@ha /* 0x806C0204@ha */
/* 805779B8  38 83 02 04 */	addi r4, r3, pc_check_password_proc@l /* 0x806C0204@l */
/* 805779BC  7F C3 F3 78 */	mr r3, r30
/* 805779C0  54 00 10 3A */	slwi r0, r0, 2
/* 805779C4  7D 84 00 2E */	lwzx r12, r4, r0
/* 805779C8  7D 89 03 A6 */	mtctr r12
/* 805779CC  4E 80 04 21 */	bctrl 
/* 805779D0  7C 7F 1B 78 */	mr r31, r3
lbl_805779D4:
/* 805779D4  7F E3 FB 78 */	mr r3, r31
/* 805779D8  39 61 00 30 */	addi r11, r1, 0x30
/* 805779DC  4B B2 35 45 */	bl func_8009AF20
/* 805779E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805779E4  7C 08 03 A6 */	mtlr r0
/* 805779E8  38 21 00 30 */	addi r1, r1, 0x30
/* 805779EC  4E 80 00 20 */	blr 
