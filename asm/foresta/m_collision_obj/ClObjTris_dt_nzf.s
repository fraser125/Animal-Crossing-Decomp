lbl_80394974:
/* 80394974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80394978  7C 08 02 A6 */	mflr r0
/* 8039497C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80394980  39 61 00 20 */	addi r11, r1, 0x20
/* 80394984  4B D0 65 51 */	bl func_8009AED4
/* 80394988  7C 7D 1B 78 */	mr r29, r3
/* 8039498C  7C 9E 23 78 */	mr r30, r4
/* 80394990  4B FF FB 29 */	bl ClObj_dt
/* 80394994  83 FE 00 10 */	lwz r31, 0x10(r30)
/* 80394998  48 00 00 14 */	b lbl_803949AC
lbl_8039499C:
/* 8039499C  7F A3 EB 78 */	mr r3, r29
/* 803949A0  7F E4 FB 78 */	mr r4, r31
/* 803949A4  4B FF FE F1 */	bl ClObjTrisElem_dt
/* 803949A8  3B FF 00 44 */	addi r31, r31, 0x44
lbl_803949AC:
/* 803949AC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 803949B0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 803949B4  1C 00 00 44 */	mulli r0, r0, 0x44
/* 803949B8  7C 03 02 14 */	add r0, r3, r0
/* 803949BC  7C 1F 00 40 */	cmplw r31, r0
/* 803949C0  41 80 FF DC */	blt lbl_8039499C
/* 803949C4  38 00 00 00 */	li r0, 0
/* 803949C8  38 60 00 01 */	li r3, 1
/* 803949CC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 803949D0  90 1E 00 10 */	stw r0, 0x10(r30)
/* 803949D4  39 61 00 20 */	addi r11, r1, 0x20
/* 803949D8  4B D0 65 49 */	bl func_8009AF20
/* 803949DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803949E0  7C 08 03 A6 */	mtlr r0
/* 803949E4  38 21 00 20 */	addi r1, r1, 0x20
/* 803949E8  4E 80 00 20 */	blr 