lbl_804974EC:
/* 804974EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804974F0  7C 08 02 A6 */	mflr r0
/* 804974F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804974F8  39 61 00 20 */	addi r11, r1, 0x20
/* 804974FC  4B C0 39 D9 */	bl func_8009AED4
/* 80497500  7C 7D 1B 78 */	mr r29, r3
/* 80497504  7C 9E 23 78 */	mr r30, r4
/* 80497508  C0 23 00 00 */	lfs f1, 0(r3)
/* 8049750C  7F C3 F3 78 */	mr r3, r30
/* 80497510  3B E0 00 00 */	li r31, 0
/* 80497514  4B FF FF AD */	bl aSNMgr_check_in
/* 80497518  2C 03 00 01 */	cmpwi r3, 1
/* 8049751C  40 82 00 1C */	bne lbl_80497538
/* 80497520  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80497524  38 7E 00 08 */	addi r3, r30, 8
/* 80497528  4B FF FF 99 */	bl aSNMgr_check_in
/* 8049752C  2C 03 00 01 */	cmpwi r3, 1
/* 80497530  40 82 00 08 */	bne lbl_80497538
/* 80497534  3B E0 00 01 */	li r31, 1
lbl_80497538:
/* 80497538  7F E3 FB 78 */	mr r3, r31
/* 8049753C  39 61 00 20 */	addi r11, r1, 0x20
/* 80497540  4B C0 39 E1 */	bl func_8009AF20
/* 80497544  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80497548  7C 08 03 A6 */	mtlr r0
/* 8049754C  38 21 00 20 */	addi r1, r1, 0x20
/* 80497550  4E 80 00 20 */	blr 
