lbl_80402F1C:
/* 80402F1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80402F20  7C 08 02 A6 */	mflr r0
/* 80402F24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80402F28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80402F2C  7C 9F 23 78 */	mr r31, r4
/* 80402F30  93 C1 00 08 */	stw r30, 8(r1)
/* 80402F34  7C 7E 1B 78 */	mr r30, r3
/* 80402F38  4B FF 93 B9 */	bl mCD_write_common
/* 80402F3C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80402F40  2C 00 00 01 */	cmpwi r0, 1
/* 80402F44  40 82 00 40 */	bne lbl_80402F84
/* 80402F48  2C 03 00 00 */	cmpwi r3, 0
/* 80402F4C  41 82 00 64 */	beq lbl_80402FB0
/* 80402F50  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80402F54  90 1F 00 04 */	stw r0, 4(r31)
/* 80402F58  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80402F5C  90 1E 00 00 */	stw r0, 0(r30)
/* 80402F60  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 80402F64  2C 00 FF FF */	cmpwi r0, -1
/* 80402F68  41 82 00 14 */	beq lbl_80402F7C
/* 80402F6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80402F70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80402F74  3C 63 00 03 */	addis r3, r3, 3
/* 80402F78  B0 03 85 96 */	sth r0, -0x7a6a(r3)
lbl_80402F7C:
/* 80402F7C  38 60 FF FF */	li r3, -1
/* 80402F80  48 00 00 30 */	b lbl_80402FB0
lbl_80402F84:
/* 80402F84  2C 03 00 01 */	cmpwi r3, 1
/* 80402F88  40 82 00 14 */	bne lbl_80402F9C
/* 80402F8C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80402F90  38 04 00 01 */	addi r0, r4, 1
/* 80402F94  90 1F 00 00 */	stw r0, 0(r31)
/* 80402F98  48 00 00 18 */	b lbl_80402FB0
lbl_80402F9C:
/* 80402F9C  2C 03 00 00 */	cmpwi r3, 0
/* 80402FA0  41 82 00 10 */	beq lbl_80402FB0
/* 80402FA4  38 00 00 0F */	li r0, 0xf
/* 80402FA8  38 60 00 01 */	li r3, 1
/* 80402FAC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80402FB0:
/* 80402FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80402FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80402FB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80402FBC  7C 08 03 A6 */	mtlr r0
/* 80402FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80402FC4  4E 80 00 20 */	blr 
