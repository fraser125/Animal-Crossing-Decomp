lbl_8039E7B8:
/* 8039E7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039E7BC  7C 08 02 A6 */	mflr r0
/* 8039E7C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039E7C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039E7C8  7C 7F 1B 78 */	mr r31, r3
/* 8039E7CC  28 1F 00 04 */	cmplwi r31, 4
/* 8039E7D0  40 80 00 34 */	bge lbl_8039E804
/* 8039E7D4  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039E7D8  38 63 00 02 */	addi r3, r3, 2
/* 8039E7DC  4B FF C2 3D */	bl mEv_CheckEvent
/* 8039E7E0  2C 03 00 01 */	cmpwi r3, 1
/* 8039E7E4  41 82 00 18 */	beq lbl_8039E7FC
/* 8039E7E8  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039E7EC  38 63 00 0A */	addi r3, r3, 0xa
/* 8039E7F0  4B FF C2 29 */	bl mEv_CheckEvent
/* 8039E7F4  2C 03 00 01 */	cmpwi r3, 1
/* 8039E7F8  40 82 00 0C */	bne lbl_8039E804
lbl_8039E7FC:
/* 8039E7FC  38 60 00 01 */	li r3, 1
/* 8039E800  48 00 00 08 */	b lbl_8039E808
lbl_8039E804:
/* 8039E804  38 60 00 00 */	li r3, 0
lbl_8039E808:
/* 8039E808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039E80C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039E810  7C 08 03 A6 */	mtlr r0
/* 8039E814  38 21 00 10 */	addi r1, r1, 0x10
/* 8039E818  4E 80 00 20 */	blr 
