lbl_803BFC00:
/* 803BFC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFC04  7C 08 02 A6 */	mflr r0
/* 803BFC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFC0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BFC10  7C 9F 23 78 */	mr r31, r4
/* 803BFC14  38 80 00 03 */	li r4, 3
/* 803BFC18  93 C1 00 08 */	stw r30, 8(r1)
/* 803BFC1C  7C 7E 1B 78 */	mr r30, r3
/* 803BFC20  4B FF FA B1 */	bl mMsg_Change_request_main_index
/* 803BFC24  2C 03 00 00 */	cmpwi r3, 0
/* 803BFC28  41 82 00 10 */	beq lbl_803BFC38
/* 803BFC2C  93 FE 04 60 */	stw r31, 0x460(r30)
/* 803BFC30  38 60 00 01 */	li r3, 1
/* 803BFC34  48 00 00 08 */	b lbl_803BFC3C
lbl_803BFC38:
/* 803BFC38  38 60 00 00 */	li r3, 0
lbl_803BFC3C:
/* 803BFC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFC40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BFC44  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BFC48  7C 08 03 A6 */	mtlr r0
/* 803BFC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFC50  4E 80 00 20 */	blr 
