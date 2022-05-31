lbl_805F9C4C:
/* 805F9C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F9C50  7C 08 02 A6 */	mflr r0
/* 805F9C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F9C58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F9C5C  7C 9F 23 78 */	mr r31, r4
/* 805F9C60  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805F9C64  2C 00 00 02 */	cmpwi r0, 2
/* 805F9C68  40 82 00 18 */	bne lbl_805F9C80
/* 805F9C6C  38 00 00 01 */	li r0, 1
/* 805F9C70  38 60 00 01 */	li r3, 1
/* 805F9C74  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805F9C78  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9C7C  48 00 01 94 */	b lbl_805F9E10
lbl_805F9C80:
/* 805F9C80  2C 00 00 00 */	cmpwi r0, 0
/* 805F9C84  40 82 00 38 */	bne lbl_805F9CBC
/* 805F9C88  38 80 00 01 */	li r4, 1
/* 805F9C8C  4B FF FC 75 */	bl mTG_move_check_hand_item
/* 805F9C90  2C 03 00 00 */	cmpwi r3, 0
/* 805F9C94  41 82 01 78 */	beq lbl_805F9E0C
/* 805F9C98  38 60 00 01 */	li r3, 1
/* 805F9C9C  38 00 00 00 */	li r0, 0
/* 805F9CA0  90 7F 00 38 */	stw r3, 0x38(r31)
/* 805F9CA4  38 60 00 01 */	li r3, 1
/* 805F9CA8  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 805F9CAC  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 805F9CB0  38 04 00 02 */	addi r0, r4, 2
/* 805F9CB4  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9CB8  48 00 01 58 */	b lbl_805F9E10
lbl_805F9CBC:
/* 805F9CBC  2C 00 00 01 */	cmpwi r0, 1
/* 805F9CC0  40 82 00 38 */	bne lbl_805F9CF8
/* 805F9CC4  4B FF 59 21 */	bl func_805EF5E4
/* 805F9CC8  2C 03 00 01 */	cmpwi r3, 1
/* 805F9CCC  40 82 01 40 */	bne lbl_805F9E0C
/* 805F9CD0  38 60 00 08 */	li r3, 8
/* 805F9CD4  38 00 00 00 */	li r0, 0
/* 805F9CD8  90 7F 00 38 */	stw r3, 0x38(r31)
/* 805F9CDC  38 60 00 01 */	li r3, 1
/* 805F9CE0  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 805F9CE4  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 805F9CE8  38 04 00 01 */	addi r0, r4, 1
/* 805F9CEC  7C 00 0E 70 */	srawi r0, r0, 1
/* 805F9CF0  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9CF4  48 00 01 1C */	b lbl_805F9E10
lbl_805F9CF8:
/* 805F9CF8  2C 00 00 07 */	cmpwi r0, 7
/* 805F9CFC  40 82 00 54 */	bne lbl_805F9D50
/* 805F9D00  38 60 00 08 */	li r3, 8
/* 805F9D04  38 00 00 00 */	li r0, 0
/* 805F9D08  90 7F 00 38 */	stw r3, 0x38(r31)
/* 805F9D0C  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 805F9D10  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 805F9D14  2C 03 00 02 */	cmpwi r3, 2
/* 805F9D18  40 81 00 10 */	ble lbl_805F9D28
/* 805F9D1C  38 00 00 02 */	li r0, 2
/* 805F9D20  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9D24  48 00 00 24 */	b lbl_805F9D48
lbl_805F9D28:
/* 805F9D28  2C 03 00 01 */	cmpwi r3, 1
/* 805F9D2C  40 82 00 0C */	bne lbl_805F9D38
/* 805F9D30  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9D34  48 00 00 14 */	b lbl_805F9D48
lbl_805F9D38:
/* 805F9D38  2C 03 00 02 */	cmpwi r3, 2
/* 805F9D3C  40 82 00 0C */	bne lbl_805F9D48
/* 805F9D40  38 00 00 01 */	li r0, 1
/* 805F9D44  90 1F 00 40 */	stw r0, 0x40(r31)
lbl_805F9D48:
/* 805F9D48  38 60 00 01 */	li r3, 1
/* 805F9D4C  48 00 00 C4 */	b lbl_805F9E10
lbl_805F9D50:
/* 805F9D50  2C 00 00 03 */	cmpwi r0, 3
/* 805F9D54  40 82 00 24 */	bne lbl_805F9D78
/* 805F9D58  38 80 00 02 */	li r4, 2
/* 805F9D5C  4B FF FB A5 */	bl mTG_move_check_hand_item
/* 805F9D60  2C 03 00 00 */	cmpwi r3, 0
/* 805F9D64  41 82 00 A8 */	beq lbl_805F9E0C
/* 805F9D68  38 00 00 02 */	li r0, 2
/* 805F9D6C  38 60 00 01 */	li r3, 1
/* 805F9D70  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805F9D74  48 00 00 9C */	b lbl_805F9E10
lbl_805F9D78:
/* 805F9D78  2C 00 00 08 */	cmpwi r0, 8
/* 805F9D7C  40 82 00 74 */	bne lbl_805F9DF0
/* 805F9D80  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805F9D84  80 84 09 88 */	lwz r4, 0x988(r4)
/* 805F9D88  88 04 03 F2 */	lbz r0, 0x3f2(r4)
/* 805F9D8C  28 00 00 01 */	cmplwi r0, 1
/* 805F9D90  41 82 00 38 */	beq lbl_805F9DC8
/* 805F9D94  38 00 00 07 */	li r0, 7
/* 805F9D98  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805F9D9C  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 805F9DA0  2C 00 00 01 */	cmpwi r0, 1
/* 805F9DA4  40 82 00 10 */	bne lbl_805F9DB4
/* 805F9DA8  38 00 00 02 */	li r0, 2
/* 805F9DAC  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9DB0  48 00 00 28 */	b lbl_805F9DD8
lbl_805F9DB4:
/* 805F9DB4  2C 00 00 02 */	cmpwi r0, 2
/* 805F9DB8  40 82 00 20 */	bne lbl_805F9DD8
/* 805F9DBC  38 00 00 04 */	li r0, 4
/* 805F9DC0  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9DC4  48 00 00 14 */	b lbl_805F9DD8
lbl_805F9DC8:
/* 805F9DC8  38 80 00 13 */	li r4, 0x13
/* 805F9DCC  38 00 00 00 */	li r0, 0
/* 805F9DD0  90 9F 00 38 */	stw r4, 0x38(r31)
/* 805F9DD4  90 1F 00 40 */	stw r0, 0x40(r31)
lbl_805F9DD8:
/* 805F9DD8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805F9DDC  38 00 00 03 */	li r0, 3
/* 805F9DE0  38 60 00 01 */	li r3, 1
/* 805F9DE4  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805F9DE8  B0 04 00 14 */	sth r0, 0x14(r4)
/* 805F9DEC  48 00 00 24 */	b lbl_805F9E10
lbl_805F9DF0:
/* 805F9DF0  2C 00 00 13 */	cmpwi r0, 0x13
/* 805F9DF4  40 82 00 18 */	bne lbl_805F9E0C
/* 805F9DF8  38 00 00 00 */	li r0, 0
/* 805F9DFC  38 60 00 01 */	li r3, 1
/* 805F9E00  90 1F 00 38 */	stw r0, 0x38(r31)
/* 805F9E04  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805F9E08  48 00 00 08 */	b lbl_805F9E10
lbl_805F9E0C:
/* 805F9E0C  38 60 00 00 */	li r3, 0
lbl_805F9E10:
/* 805F9E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F9E14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F9E18  7C 08 03 A6 */	mtlr r0
/* 805F9E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 805F9E20  4E 80 00 20 */	blr 
