lbl_8055AC14:
/* 8055AC14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055AC18  7C 08 02 A6 */	mflr r0
/* 8055AC1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055AC20  39 61 00 30 */	addi r11, r1, 0x30
/* 8055AC24  4B B4 02 B1 */	bl func_8009AED4
/* 8055AC28  7C 7D 1B 78 */	mr r29, r3
/* 8055AC2C  3B E0 00 00 */	li r31, 0
/* 8055AC30  88 03 09 F3 */	lbz r0, 0x9f3(r3)
/* 8055AC34  28 00 00 20 */	cmplwi r0, 0x20
/* 8055AC38  40 82 00 0C */	bne lbl_8055AC44
/* 8055AC3C  3B E0 00 09 */	li r31, 9
/* 8055AC40  48 00 00 7C */	b lbl_8055ACBC
lbl_8055AC44:
/* 8055AC44  38 61 00 08 */	addi r3, r1, 8
/* 8055AC48  38 9D 09 D8 */	addi r4, r29, 0x9d8
/* 8055AC4C  4B E6 34 19 */	bl mMpswd_decode_code
/* 8055AC50  2C 03 00 01 */	cmpwi r3, 1
/* 8055AC54  40 82 00 68 */	bne lbl_8055ACBC
/* 8055AC58  3B DD 09 F8 */	addi r30, r29, 0x9f8
/* 8055AC5C  38 61 00 08 */	addi r3, r1, 8
/* 8055AC60  7F C4 F3 78 */	mr r4, r30
/* 8055AC64  4B E6 35 31 */	bl mMpswd_password
/* 8055AC68  7F C3 F3 78 */	mr r3, r30
/* 8055AC6C  4B E6 36 35 */	bl mMpswd_password_zuru_check
/* 8055AC70  2C 03 00 00 */	cmpwi r3, 0
/* 8055AC74  40 82 00 48 */	bne lbl_8055ACBC
/* 8055AC78  7F C3 F3 78 */	mr r3, r30
/* 8055AC7C  4B E6 3D F5 */	bl mMpswd_check_present
/* 8055AC80  2C 03 00 01 */	cmpwi r3, 1
/* 8055AC84  40 82 00 38 */	bne lbl_8055ACBC
/* 8055AC88  7F A3 EB 78 */	mr r3, r29
/* 8055AC8C  4B FF FD 31 */	bl aNSC_set_pw_password_str
/* 8055AC90  7F A3 EB 78 */	mr r3, r29
/* 8055AC94  4B FF FD 89 */	bl aNSC_set_pw_info_str
/* 8055AC98  88 1E 00 04 */	lbz r0, 4(r30)
/* 8055AC9C  3C 60 80 6B */	lis r3, pc_check_password_proc@ha /* 0x806A9DD0@ha */
/* 8055ACA0  38 83 9D D0 */	addi r4, r3, pc_check_password_proc@l /* 0x806A9DD0@l */
/* 8055ACA4  7F C3 F3 78 */	mr r3, r30
/* 8055ACA8  54 00 10 3A */	slwi r0, r0, 2
/* 8055ACAC  7D 84 00 2E */	lwzx r12, r4, r0
/* 8055ACB0  7D 89 03 A6 */	mtctr r12
/* 8055ACB4  4E 80 04 21 */	bctrl 
/* 8055ACB8  7C 7F 1B 78 */	mr r31, r3
lbl_8055ACBC:
/* 8055ACBC  7F E3 FB 78 */	mr r3, r31
/* 8055ACC0  39 61 00 30 */	addi r11, r1, 0x30
/* 8055ACC4  4B B4 02 5D */	bl func_8009AF20
/* 8055ACC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055ACCC  7C 08 03 A6 */	mtlr r0
/* 8055ACD0  38 21 00 30 */	addi r1, r1, 0x30
/* 8055ACD4  4E 80 00 20 */	blr 
