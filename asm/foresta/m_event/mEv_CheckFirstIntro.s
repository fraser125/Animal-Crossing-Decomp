lbl_8039AD2C:
/* 8039AD2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AD30  7C 08 02 A6 */	mflr r0
/* 8039AD34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039AD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039AD3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039AD40  3C 63 00 02 */	addis r3, r3, 2
/* 8039AD44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039AD48  3B E0 00 00 */	li r31, 0
/* 8039AD4C  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8039AD50  28 00 00 04 */	cmplwi r0, 4
/* 8039AD54  40 80 00 20 */	bge lbl_8039AD74
/* 8039AD58  3C 60 20 00 */	lis r3, 0x2000 /* 0x20000006@ha */
/* 8039AD5C  38 63 00 06 */	addi r3, r3, 0x0006 /* 0x20000006@l */
/* 8039AD60  7C 63 02 14 */	add r3, r3, r0
/* 8039AD64  4B FF FC B5 */	bl mEv_CheckEvent
/* 8039AD68  2C 03 00 01 */	cmpwi r3, 1
/* 8039AD6C  40 82 00 08 */	bne lbl_8039AD74
/* 8039AD70  3B E0 00 01 */	li r31, 1
lbl_8039AD74:
/* 8039AD74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AD78  7F E3 FB 78 */	mr r3, r31
/* 8039AD7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039AD80  7C 08 03 A6 */	mtlr r0
/* 8039AD84  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AD88  4E 80 00 20 */	blr 
