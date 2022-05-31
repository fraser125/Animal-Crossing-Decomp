lbl_8042ABF4:
/* 8042ABF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042ABF8  7C 08 02 A6 */	mflr r0
/* 8042ABFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042AC00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042AC04  7C 9F 23 78 */	mr r31, r4
/* 8042AC08  93 C1 00 08 */	stw r30, 8(r1)
/* 8042AC0C  7C 7E 1B 78 */	mr r30, r3
/* 8042AC10  80 03 01 A0 */	lwz r0, 0x1a0(r3)
/* 8042AC14  80 83 01 84 */	lwz r4, 0x184(r3)
/* 8042AC18  2C 00 00 00 */	cmpwi r0, 0
/* 8042AC1C  40 82 00 20 */	bne lbl_8042AC3C
/* 8042AC20  38 60 00 08 */	li r3, 8
/* 8042AC24  4B F6 F6 41 */	bl mDemo_Check
/* 8042AC28  2C 03 00 01 */	cmpwi r3, 1
/* 8042AC2C  40 82 00 30 */	bne lbl_8042AC5C
/* 8042AC30  38 00 00 01 */	li r0, 1
/* 8042AC34  90 1E 01 A0 */	stw r0, 0x1a0(r30)
/* 8042AC38  48 00 00 24 */	b lbl_8042AC5C
lbl_8042AC3C:
/* 8042AC3C  38 60 00 08 */	li r3, 8
/* 8042AC40  4B F6 F6 25 */	bl mDemo_Check
/* 8042AC44  2C 03 00 00 */	cmpwi r3, 0
/* 8042AC48  40 82 00 14 */	bne lbl_8042AC5C
/* 8042AC4C  7F C3 F3 78 */	mr r3, r30
/* 8042AC50  7F E4 FB 78 */	mr r4, r31
/* 8042AC54  38 A0 00 04 */	li r5, 4
/* 8042AC58  48 00 08 BD */	bl aID_setupAction
lbl_8042AC5C:
/* 8042AC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042AC60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042AC64  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042AC68  7C 08 03 A6 */	mtlr r0
/* 8042AC6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042AC70  4E 80 00 20 */	blr 
