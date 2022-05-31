lbl_80525F4C:
/* 80525F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80525F50  7C 08 02 A6 */	mflr r0
/* 80525F54  7C 64 1B 78 */	mr r4, r3
/* 80525F58  38 60 00 07 */	li r3, 7
/* 80525F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80525F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80525F64  7C 9F 23 78 */	mr r31, r4
/* 80525F68  93 C1 00 08 */	stw r30, 8(r1)
/* 80525F6C  3B C0 00 00 */	li r30, 0
/* 80525F70  4B E7 42 F5 */	bl mDemo_Check
/* 80525F74  2C 03 00 00 */	cmpwi r3, 0
/* 80525F78  40 82 00 54 */	bne lbl_80525FCC
/* 80525F7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80525F80  38 80 00 04 */	li r4, 4
/* 80525F84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80525F88  3C 63 00 02 */	addis r3, r3, 2
/* 80525F8C  80 63 61 00 */	lwz r3, 0x6100(r3)
/* 80525F90  28 03 00 00 */	cmplwi r3, 0
/* 80525F94  41 82 00 2C */	beq lbl_80525FC0
/* 80525F98  80 03 00 00 */	lwz r0, 0(r3)
/* 80525F9C  2C 00 00 05 */	cmpwi r0, 5
/* 80525FA0  41 82 00 20 */	beq lbl_80525FC0
/* 80525FA4  40 80 00 18 */	bge lbl_80525FBC
/* 80525FA8  2C 00 00 04 */	cmpwi r0, 4
/* 80525FAC  40 80 00 08 */	bge lbl_80525FB4
/* 80525FB0  48 00 00 0C */	b lbl_80525FBC
lbl_80525FB4:
/* 80525FB4  38 80 00 01 */	li r4, 1
/* 80525FB8  48 00 00 08 */	b lbl_80525FC0
lbl_80525FBC:
/* 80525FBC  38 80 00 00 */	li r4, 0
lbl_80525FC0:
/* 80525FC0  7F E3 FB 78 */	mr r3, r31
/* 80525FC4  4B FF FB ED */	bl aESS_setup_think_proc
/* 80525FC8  3B C0 00 01 */	li r30, 1
lbl_80525FCC:
/* 80525FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80525FD0  7F C3 F3 78 */	mr r3, r30
/* 80525FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80525FD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80525FDC  7C 08 03 A6 */	mtlr r0
/* 80525FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80525FE4  4E 80 00 20 */	blr 
