lbl_80394A84:
/* 80394A84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80394A88  7C 08 02 A6 */	mflr r0
/* 80394A8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80394A90  39 61 00 20 */	addi r11, r1, 0x20
/* 80394A94  4B D0 64 41 */	bl func_8009AED4
/* 80394A98  7C 7D 1B 78 */	mr r29, r3
/* 80394A9C  7C 9E 23 78 */	mr r30, r4
/* 80394AA0  4B FF FA 45 */	bl ClObj_OCClear
/* 80394AA4  83 FE 00 10 */	lwz r31, 0x10(r30)
/* 80394AA8  48 00 00 14 */	b lbl_80394ABC
lbl_80394AAC:
/* 80394AAC  7F A3 EB 78 */	mr r3, r29
/* 80394AB0  7F E4 FB 78 */	mr r4, r31
/* 80394AB4  4B FF FE 61 */	bl ClObjTrisElem_OCClear
/* 80394AB8  3B FF 00 44 */	addi r31, r31, 0x44
lbl_80394ABC:
/* 80394ABC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80394AC0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80394AC4  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80394AC8  7C 03 02 14 */	add r0, r3, r0
/* 80394ACC  7C 1F 00 40 */	cmplw r31, r0
/* 80394AD0  41 80 FF DC */	blt lbl_80394AAC
/* 80394AD4  38 60 00 01 */	li r3, 1
/* 80394AD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80394ADC  4B D0 64 45 */	bl func_8009AF20
/* 80394AE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80394AE4  7C 08 03 A6 */	mtlr r0
/* 80394AE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80394AEC  4E 80 00 20 */	blr 
