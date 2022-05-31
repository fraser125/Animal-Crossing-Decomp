lbl_80567F4C:
/* 80567F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80567F50  7C 08 02 A6 */	mflr r0
/* 80567F54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80567F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80567F5C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80567F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80567F64  3B E3 00 20 */	addi r31, r3, 0x20
/* 80567F68  93 C1 00 08 */	stw r30, 8(r1)
/* 80567F6C  3B C0 00 00 */	li r30, 0
lbl_80567F70:
/* 80567F70  7F E3 FB 78 */	mr r3, r31
/* 80567F74  4B E7 80 D1 */	bl mPr_NullCheckPersonalID
/* 80567F78  2C 03 00 00 */	cmpwi r3, 0
/* 80567F7C  41 82 00 14 */	beq lbl_80567F90
/* 80567F80  3B DE 00 01 */	addi r30, r30, 1
/* 80567F84  3B FF 24 40 */	addi r31, r31, 0x2440
/* 80567F88  2C 1E 00 04 */	cmpwi r30, 4
/* 80567F8C  41 80 FF E4 */	blt lbl_80567F70
lbl_80567F90:
/* 80567F90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80567F94  7F C3 F3 78 */	mr r3, r30
/* 80567F98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80567F9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80567FA0  7C 08 03 A6 */	mtlr r0
/* 80567FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80567FA8  4E 80 00 20 */	blr 
