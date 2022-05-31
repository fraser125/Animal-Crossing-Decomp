lbl_8039AB30:
/* 8039AB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AB34  7C 08 02 A6 */	mflr r0
/* 8039AB38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039AB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039AB40  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039AB44  3C 63 00 02 */	addis r3, r3, 2
/* 8039AB48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039AB4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8039AB50  3B C0 00 00 */	li r30, 0
/* 8039AB54  8B E3 60 03 */	lbz r31, 0x6003(r3)
/* 8039AB58  28 1F 00 04 */	cmplwi r31, 4
/* 8039AB5C  40 80 00 30 */	bge lbl_8039AB8C
/* 8039AB60  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039AB64  38 63 00 02 */	addi r3, r3, 2
/* 8039AB68  4B FF FE B1 */	bl mEv_CheckEvent
/* 8039AB6C  2C 03 00 01 */	cmpwi r3, 1
/* 8039AB70  41 82 00 18 */	beq lbl_8039AB88
/* 8039AB74  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039AB78  38 63 00 0A */	addi r3, r3, 0xa
/* 8039AB7C  4B FF FE 9D */	bl mEv_CheckEvent
/* 8039AB80  2C 03 00 01 */	cmpwi r3, 1
/* 8039AB84  40 82 00 08 */	bne lbl_8039AB8C
lbl_8039AB88:
/* 8039AB88  3B C0 00 01 */	li r30, 1
lbl_8039AB8C:
/* 8039AB8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AB90  7F C3 F3 78 */	mr r3, r30
/* 8039AB94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039AB98  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039AB9C  7C 08 03 A6 */	mtlr r0
/* 8039ABA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8039ABA4  4E 80 00 20 */	blr 
