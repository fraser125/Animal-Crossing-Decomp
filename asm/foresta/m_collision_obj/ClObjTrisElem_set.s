lbl_803948BC:
/* 803948BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803948C0  7C 08 02 A6 */	mflr r0
/* 803948C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803948C8  39 61 00 20 */	addi r11, r1, 0x20
/* 803948CC  4B D0 66 09 */	bl func_8009AED4
/* 803948D0  7C 9E 23 78 */	mr r30, r4
/* 803948D4  7C BF 2B 78 */	mr r31, r5
/* 803948D8  7C 7D 1B 78 */	mr r29, r3
/* 803948DC  7F C3 F3 78 */	mr r3, r30
/* 803948E0  7F E4 FB 78 */	mr r4, r31
/* 803948E4  4B FF FC 35 */	bl ClObjElem_set
/* 803948E8  7F A3 EB 78 */	mr r3, r29
/* 803948EC  38 9E 00 04 */	addi r4, r30, 4
/* 803948F0  38 BF 00 04 */	addi r5, r31, 4
/* 803948F4  4B FF FE 9D */	bl ClObjTrisElemAttr_set
/* 803948F8  38 60 00 01 */	li r3, 1
/* 803948FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80394900  4B D0 66 21 */	bl func_8009AF20
/* 80394904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80394908  7C 08 03 A6 */	mtlr r0
/* 8039490C  38 21 00 20 */	addi r1, r1, 0x20
/* 80394910  4E 80 00 20 */	blr 
