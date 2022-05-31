lbl_8053F9F8:
/* 8053F9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F9FC  7C 08 02 A6 */	mflr r0
/* 8053FA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FA04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053FA08  3B E0 00 00 */	li r31, 0
/* 8053FA0C  88 03 07 C9 */	lbz r0, 0x7c9(r3)
/* 8053FA10  28 00 00 00 */	cmplwi r0, 0
/* 8053FA14  41 82 00 20 */	beq lbl_8053FA34
/* 8053FA18  7C 64 1B 78 */	mr r4, r3
/* 8053FA1C  38 60 00 08 */	li r3, 8
/* 8053FA20  4B E5 A8 45 */	bl mDemo_Check
/* 8053FA24  2C 03 00 00 */	cmpwi r3, 0
/* 8053FA28  40 82 00 3C */	bne lbl_8053FA64
/* 8053FA2C  3B E0 00 01 */	li r31, 1
/* 8053FA30  48 00 00 34 */	b lbl_8053FA64
lbl_8053FA34:
/* 8053FA34  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8053FA38  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8053FA3C  3C 84 00 02 */	addis r4, r4, 2
/* 8053FA40  80 84 60 78 */	lwz r4, 0x6078(r4)
/* 8053FA44  81 84 00 08 */	lwz r12, 8(r4)
/* 8053FA48  28 0C 00 00 */	cmplwi r12, 0
/* 8053FA4C  41 82 00 18 */	beq lbl_8053FA64
/* 8053FA50  7D 89 03 A6 */	mtctr r12
/* 8053FA54  4E 80 04 21 */	bctrl 
/* 8053FA58  2C 03 00 01 */	cmpwi r3, 1
/* 8053FA5C  40 82 00 08 */	bne lbl_8053FA64
/* 8053FA60  3B E0 00 01 */	li r31, 1
lbl_8053FA64:
/* 8053FA64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FA68  7F E3 FB 78 */	mr r3, r31
/* 8053FA6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053FA70  7C 08 03 A6 */	mtlr r0
/* 8053FA74  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FA78  4E 80 00 20 */	blr 
