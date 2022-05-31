lbl_803ADF20:
/* 803ADF20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803ADF24  7C 08 02 A6 */	mflr r0
/* 803ADF28  90 01 00 24 */	stw r0, 0x24(r1)
/* 803ADF2C  39 61 00 20 */	addi r11, r1, 0x20
/* 803ADF30  4B CE CF A5 */	bl func_8009AED4
/* 803ADF34  7C 7D 1B 78 */	mr r29, r3
/* 803ADF38  3B C0 00 00 */	li r30, 0
/* 803ADF3C  3B E0 00 00 */	li r31, 0
lbl_803ADF40:
/* 803ADF40  38 7F 00 38 */	addi r3, r31, 0x38
/* 803ADF44  7C 7D 1A 14 */	add r3, r29, r3
/* 803ADF48  4B FF FF D1 */	bl sSCCheckOneFloorData
/* 803ADF4C  2C 03 00 00 */	cmpwi r3, 0
/* 803ADF50  40 82 00 0C */	bne lbl_803ADF5C
/* 803ADF54  38 60 00 00 */	li r3, 0
/* 803ADF58  48 00 00 18 */	b lbl_803ADF70
lbl_803ADF5C:
/* 803ADF5C  3B DE 00 01 */	addi r30, r30, 1
/* 803ADF60  3B FF 08 A8 */	addi r31, r31, 0x8a8
/* 803ADF64  2C 1E 00 03 */	cmpwi r30, 3
/* 803ADF68  41 80 FF D8 */	blt lbl_803ADF40
/* 803ADF6C  38 60 00 01 */	li r3, 1
lbl_803ADF70:
/* 803ADF70  39 61 00 20 */	addi r11, r1, 0x20
/* 803ADF74  4B CE CF AD */	bl func_8009AF20
/* 803ADF78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803ADF7C  7C 08 03 A6 */	mtlr r0
/* 803ADF80  38 21 00 20 */	addi r1, r1, 0x20
/* 803ADF84  4E 80 00 20 */	blr 
