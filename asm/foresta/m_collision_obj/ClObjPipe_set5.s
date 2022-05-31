lbl_803946B0:
/* 803946B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803946B4  7C 08 02 A6 */	mflr r0
/* 803946B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803946BC  39 61 00 20 */	addi r11, r1, 0x20
/* 803946C0  4B D0 68 15 */	bl func_8009AED4
/* 803946C4  7C 7D 1B 78 */	mr r29, r3
/* 803946C8  7C 9E 23 78 */	mr r30, r4
/* 803946CC  7C DF 33 78 */	mr r31, r6
/* 803946D0  4B FF FD F1 */	bl ClObj_set4
/* 803946D4  38 7E 00 0C */	addi r3, r30, 0xc
/* 803946D8  38 9F 00 03 */	addi r4, r31, 3
/* 803946DC  4B FF FE 3D */	bl ClObjElem_set
/* 803946E0  7F A3 EB 78 */	mr r3, r29
/* 803946E4  38 9E 00 0E */	addi r4, r30, 0xe
/* 803946E8  38 BF 00 04 */	addi r5, r31, 4
/* 803946EC  4B FF FF 0D */	bl ClObjPipeAttr_set
/* 803946F0  38 60 00 01 */	li r3, 1
/* 803946F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803946F8  4B D0 68 29 */	bl func_8009AF20
/* 803946FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80394700  7C 08 03 A6 */	mtlr r0
/* 80394704  38 21 00 20 */	addi r1, r1, 0x20
/* 80394708  4E 80 00 20 */	blr 
