lbl_803F9D1C:
/* 803F9D1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F9D20  7C 08 02 A6 */	mflr r0
/* 803F9D24  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F9D28  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9D2C  4B CA 11 A1 */	bl func_8009AECC
/* 803F9D30  7C 9F 23 78 */	mr r31, r4
/* 803F9D34  7C 7B 1B 78 */	mr r27, r3
/* 803F9D38  2C 1F FF FF */	cmpwi r31, -1
/* 803F9D3C  7C BC 2B 78 */	mr r28, r5
/* 803F9D40  7C DD 33 78 */	mr r29, r6
/* 803F9D44  3B C0 00 00 */	li r30, 0
/* 803F9D48  41 82 00 A0 */	beq lbl_803F9DE8
/* 803F9D4C  28 1D 00 00 */	cmplwi r29, 0
/* 803F9D50  41 82 00 98 */	beq lbl_803F9DE8
/* 803F9D54  7F 83 E3 78 */	mr r3, r28
/* 803F9D58  7F E5 FB 78 */	mr r5, r31
/* 803F9D5C  38 80 20 00 */	li r4, 0x2000
/* 803F9D60  4B FF DB 41 */	bl mCD_check_card
/* 803F9D64  2C 03 00 01 */	cmpwi r3, 1
/* 803F9D68  40 82 00 80 */	bne lbl_803F9DE8
/* 803F9D6C  7F E3 FB 78 */	mr r3, r31
/* 803F9D70  7F A4 EB 78 */	mr r4, r29
/* 803F9D74  38 A0 00 00 */	li r5, 0
/* 803F9D78  4B C9 69 85 */	bl CARDMount
/* 803F9D7C  90 7C 00 00 */	stw r3, 0(r28)
/* 803F9D80  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F9D84  2C 00 00 00 */	cmpwi r0, 0
/* 803F9D88  41 82 00 0C */	beq lbl_803F9D94
/* 803F9D8C  2C 00 FF FF */	cmpwi r0, -1
/* 803F9D90  40 82 00 48 */	bne lbl_803F9DD8
lbl_803F9D94:
/* 803F9D94  7F E3 FB 78 */	mr r3, r31
/* 803F9D98  4B C9 5F E1 */	bl CARDCheck
/* 803F9D9C  90 7C 00 00 */	stw r3, 0(r28)
/* 803F9DA0  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F9DA4  2C 00 00 00 */	cmpwi r0, 0
/* 803F9DA8  40 82 00 24 */	bne lbl_803F9DCC
/* 803F9DAC  7F E3 FB 78 */	mr r3, r31
/* 803F9DB0  7F 64 DB 78 */	mr r4, r27
/* 803F9DB4  4B C9 86 05 */	bl CARDDelete
/* 803F9DB8  90 7C 00 00 */	stw r3, 0(r28)
/* 803F9DBC  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F9DC0  2C 00 00 00 */	cmpwi r0, 0
/* 803F9DC4  40 82 00 08 */	bne lbl_803F9DCC
/* 803F9DC8  3B C0 00 01 */	li r30, 1
lbl_803F9DCC:
/* 803F9DCC  7F E3 FB 78 */	mr r3, r31
/* 803F9DD0  4B C9 6A 11 */	bl CARDUnmount
/* 803F9DD4  48 00 00 14 */	b lbl_803F9DE8
lbl_803F9DD8:
/* 803F9DD8  2C 00 FF F3 */	cmpwi r0, -13
/* 803F9DDC  40 82 00 0C */	bne lbl_803F9DE8
/* 803F9DE0  7F E3 FB 78 */	mr r3, r31
/* 803F9DE4  4B C9 69 FD */	bl CARDUnmount
lbl_803F9DE8:
/* 803F9DE8  7F C3 F3 78 */	mr r3, r30
/* 803F9DEC  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9DF0  4B CA 11 29 */	bl func_8009AF18
/* 803F9DF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F9DF8  7C 08 03 A6 */	mtlr r0
/* 803F9DFC  38 21 00 20 */	addi r1, r1, 0x20
/* 803F9E00  4E 80 00 20 */	blr 
