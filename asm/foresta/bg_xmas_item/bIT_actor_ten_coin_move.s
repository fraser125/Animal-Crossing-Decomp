lbl_804C6C98:
/* 804C6C98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C6C9C  7C 08 02 A6 */	mflr r0
/* 804C6CA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C6CA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804C6CA8  3B E0 00 00 */	li r31, 0
/* 804C6CAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804C6CB0  7C 9E 23 78 */	mr r30, r4
lbl_804C6CB4:
/* 804C6CB4  A8 7E 00 4C */	lha r3, 0x4c(r30)
/* 804C6CB8  7C 60 07 35 */	extsh. r0, r3
/* 804C6CBC  41 82 00 DC */	beq lbl_804C6D98
/* 804C6CC0  2C 03 00 01 */	cmpwi r3, 1
/* 804C6CC4  40 82 00 70 */	bne lbl_804C6D34
/* 804C6CC8  A8 7E 00 4E */	lha r3, 0x4e(r30)
/* 804C6CCC  38 03 FF FF */	addi r0, r3, -1
/* 804C6CD0  B0 1E 00 4E */	sth r0, 0x4e(r30)
/* 804C6CD4  A8 1E 00 4E */	lha r0, 0x4e(r30)
/* 804C6CD8  2C 00 00 00 */	cmpwi r0, 0
/* 804C6CDC  40 80 00 0C */	bge lbl_804C6CE8
/* 804C6CE0  38 00 00 00 */	li r0, 0
/* 804C6CE4  B0 1E 00 4E */	sth r0, 0x4e(r30)
lbl_804C6CE8:
/* 804C6CE8  A8 7E 00 46 */	lha r3, 0x46(r30)
/* 804C6CEC  38 80 FF FF */	li r4, -1
/* 804C6CF0  A8 1E 00 48 */	lha r0, 0x48(r30)
/* 804C6CF4  2C 03 00 00 */	cmpwi r3, 0
/* 804C6CF8  7C 03 02 14 */	add r0, r3, r0
/* 804C6CFC  B0 1E 00 46 */	sth r0, 0x46(r30)
/* 804C6D00  41 80 00 08 */	blt lbl_804C6D08
/* 804C6D04  38 80 00 01 */	li r4, 1
lbl_804C6D08:
/* 804C6D08  A8 1E 00 46 */	lha r0, 0x46(r30)
/* 804C6D0C  38 60 FF FF */	li r3, -1
/* 804C6D10  2C 00 00 00 */	cmpwi r0, 0
/* 804C6D14  41 80 00 08 */	blt lbl_804C6D1C
/* 804C6D18  38 60 00 01 */	li r3, 1
lbl_804C6D1C:
/* 804C6D1C  7C 03 20 00 */	cmpw r3, r4
/* 804C6D20  41 82 00 14 */	beq lbl_804C6D34
/* 804C6D24  38 60 00 00 */	li r3, 0
/* 804C6D28  38 00 00 02 */	li r0, 2
/* 804C6D2C  B0 7E 00 46 */	sth r3, 0x46(r30)
/* 804C6D30  B0 1E 00 4C */	sth r0, 0x4c(r30)
lbl_804C6D34:
/* 804C6D34  A8 7E 00 52 */	lha r3, 0x52(r30)
/* 804C6D38  2C 03 00 00 */	cmpwi r3, 0
/* 804C6D3C  40 81 00 0C */	ble lbl_804C6D48
/* 804C6D40  38 03 FF FF */	addi r0, r3, -1
/* 804C6D44  B0 1E 00 52 */	sth r0, 0x52(r30)
lbl_804C6D48:
/* 804C6D48  A8 1E 00 52 */	lha r0, 0x52(r30)
/* 804C6D4C  2C 00 00 00 */	cmpwi r0, 0
/* 804C6D50  41 81 00 48 */	bgt lbl_804C6D98
/* 804C6D54  A8 1E 00 4C */	lha r0, 0x4c(r30)
/* 804C6D58  2C 00 00 02 */	cmpwi r0, 2
/* 804C6D5C  40 82 00 3C */	bne lbl_804C6D98
/* 804C6D60  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 804C6D64  38 81 00 08 */	addi r4, r1, 8
/* 804C6D68  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 804C6D6C  38 A0 00 01 */	li r5, 1
/* 804C6D70  90 61 00 08 */	stw r3, 8(r1)
/* 804C6D74  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C6D78  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 804C6D7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C6D80  A0 7E 00 42 */	lhz r3, 0x42(r30)
/* 804C6D84  38 03 FF F9 */	addi r0, r3, -7
/* 804C6D88  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804C6D8C  4B EE 0A A5 */	bl mFI_SetFG_common
/* 804C6D90  38 00 00 00 */	li r0, 0
/* 804C6D94  B0 1E 00 4C */	sth r0, 0x4c(r30)
lbl_804C6D98:
/* 804C6D98  3B FF 00 01 */	addi r31, r31, 1
/* 804C6D9C  3B DE 00 58 */	addi r30, r30, 0x58
/* 804C6DA0  2C 1F 00 05 */	cmpwi r31, 5
/* 804C6DA4  41 80 FF 10 */	blt lbl_804C6CB4
/* 804C6DA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C6DAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804C6DB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804C6DB4  7C 08 03 A6 */	mtlr r0
/* 804C6DB8  38 21 00 20 */	addi r1, r1, 0x20
/* 804C6DBC  4E 80 00 20 */	blr 
