lbl_805BCA10:
/* 805BCA10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BCA14  7C 08 02 A6 */	mflr r0
/* 805BCA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BCA1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BCA20  7C 7F 1B 78 */	mr r31, r3
/* 805BCA24  93 C1 00 08 */	stw r30, 8(r1)
/* 805BCA28  7C 9E 23 78 */	mr r30, r4
/* 805BCA2C  4B DE 82 A1 */	bl mFI_GetFieldId
/* 805BCA30  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805BCA34  41 82 00 08 */	beq lbl_805BCA3C
/* 805BCA38  48 00 00 10 */	b lbl_805BCA48
lbl_805BCA3C:
/* 805BCA3C  7F E3 FB 78 */	mr r3, r31
/* 805BCA40  7F C4 F3 78 */	mr r4, r30
/* 805BCA44  4B FF FF 3D */	bl aSTR_check_door_data
lbl_805BCA48:
/* 805BCA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BCA4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BCA50  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BCA54  7C 08 03 A6 */	mtlr r0
/* 805BCA58  38 21 00 10 */	addi r1, r1, 0x10
/* 805BCA5C  4E 80 00 20 */	blr 
