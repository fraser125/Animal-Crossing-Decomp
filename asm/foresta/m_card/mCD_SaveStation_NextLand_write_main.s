lbl_80401D14:
/* 80401D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80401D18  7C 08 02 A6 */	mflr r0
/* 80401D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80401D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80401D24  7C 9F 23 78 */	mr r31, r4
/* 80401D28  93 C1 00 08 */	stw r30, 8(r1)
/* 80401D2C  7C 7E 1B 78 */	mr r30, r3
/* 80401D30  4B FF A5 C1 */	bl mCD_write_common
/* 80401D34  2C 03 00 01 */	cmpwi r3, 1
/* 80401D38  40 82 00 1C */	bne lbl_80401D54
/* 80401D3C  38 00 00 02 */	li r0, 2
/* 80401D40  90 1E 00 04 */	stw r0, 4(r30)
/* 80401D44  80 9F 00 00 */	lwz r4, 0(r31)
/* 80401D48  38 04 00 01 */	addi r0, r4, 1
/* 80401D4C  90 1F 00 00 */	stw r0, 0(r31)
/* 80401D50  48 00 00 7C */	b lbl_80401DCC
lbl_80401D54:
/* 80401D54  2C 03 00 00 */	cmpwi r3, 0
/* 80401D58  41 82 00 74 */	beq lbl_80401DCC
/* 80401D5C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80401D60  2C 00 FF FF */	cmpwi r0, -1
/* 80401D64  41 82 00 60 */	beq lbl_80401DC4
/* 80401D68  1C 80 00 94 */	mulli r4, r0, 0x94
/* 80401D6C  38 04 00 C8 */	addi r0, r4, 0xc8
/* 80401D70  7C 1E 00 2E */	lwzx r0, r30, r0
/* 80401D74  2C 00 FF FA */	cmpwi r0, -6
/* 80401D78  41 82 00 28 */	beq lbl_80401DA0
/* 80401D7C  40 80 00 10 */	bge lbl_80401D8C
/* 80401D80  2C 00 FF F3 */	cmpwi r0, -13
/* 80401D84  41 82 00 1C */	beq lbl_80401DA0
/* 80401D88  48 00 00 30 */	b lbl_80401DB8
lbl_80401D8C:
/* 80401D8C  2C 00 FF FF */	cmpwi r0, -1
/* 80401D90  40 80 00 28 */	bge lbl_80401DB8
/* 80401D94  2C 00 FF FD */	cmpwi r0, -3
/* 80401D98  40 80 00 14 */	bge lbl_80401DAC
/* 80401D9C  48 00 00 1C */	b lbl_80401DB8
lbl_80401DA0:
/* 80401DA0  38 00 00 04 */	li r0, 4
/* 80401DA4  90 1F 00 04 */	stw r0, 4(r31)
/* 80401DA8  48 00 00 24 */	b lbl_80401DCC
lbl_80401DAC:
/* 80401DAC  38 00 00 16 */	li r0, 0x16
/* 80401DB0  90 1F 00 04 */	stw r0, 4(r31)
/* 80401DB4  48 00 00 18 */	b lbl_80401DCC
lbl_80401DB8:
/* 80401DB8  38 00 00 02 */	li r0, 2
/* 80401DBC  90 1F 00 04 */	stw r0, 4(r31)
/* 80401DC0  48 00 00 0C */	b lbl_80401DCC
lbl_80401DC4:
/* 80401DC4  38 00 00 02 */	li r0, 2
/* 80401DC8  90 1F 00 04 */	stw r0, 4(r31)
lbl_80401DCC:
/* 80401DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80401DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80401DD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80401DD8  7C 08 03 A6 */	mtlr r0
/* 80401DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80401DE0  4E 80 00 20 */	blr 
