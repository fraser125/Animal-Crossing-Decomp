lbl_8039ABA8:
/* 8039ABA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039ABAC  7C 08 02 A6 */	mflr r0
/* 8039ABB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039ABB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039ABB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039ABBC  3C 63 00 02 */	addis r3, r3, 2
/* 8039ABC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039ABC4  93 C1 00 08 */	stw r30, 8(r1)
/* 8039ABC8  3B C0 00 00 */	li r30, 0
/* 8039ABCC  8B E3 60 03 */	lbz r31, 0x6003(r3)
/* 8039ABD0  28 1F 00 04 */	cmplwi r31, 4
/* 8039ABD4  40 80 00 44 */	bge lbl_8039AC18
/* 8039ABD8  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039ABDC  38 63 00 02 */	addi r3, r3, 2
/* 8039ABE0  4B FF FE 39 */	bl mEv_CheckEvent
/* 8039ABE4  2C 03 00 01 */	cmpwi r3, 1
/* 8039ABE8  41 82 00 2C */	beq lbl_8039AC14
/* 8039ABEC  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039ABF0  38 63 00 0A */	addi r3, r3, 0xa
/* 8039ABF4  4B FF FE 25 */	bl mEv_CheckEvent
/* 8039ABF8  2C 03 00 01 */	cmpwi r3, 1
/* 8039ABFC  41 82 00 18 */	beq lbl_8039AC14
/* 8039AC00  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039AC04  38 63 00 0E */	addi r3, r3, 0xe
/* 8039AC08  4B FF FE 11 */	bl mEv_CheckEvent
/* 8039AC0C  2C 03 00 01 */	cmpwi r3, 1
/* 8039AC10  40 82 00 08 */	bne lbl_8039AC18
lbl_8039AC14:
/* 8039AC14  3B C0 00 01 */	li r30, 1
lbl_8039AC18:
/* 8039AC18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AC1C  7F C3 F3 78 */	mr r3, r30
/* 8039AC20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039AC24  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039AC28  7C 08 03 A6 */	mtlr r0
/* 8039AC2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AC30  4E 80 00 20 */	blr 
