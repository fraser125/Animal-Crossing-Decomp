lbl_803B1224:
/* 803B1224  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B1228  7C 08 02 A6 */	mflr r0
/* 803B122C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B1230  39 61 00 20 */	addi r11, r1, 0x20
/* 803B1234  4B CE 9C A1 */	bl func_8009AED4
/* 803B1238  7C BF 2B 78 */	mr r31, r5
/* 803B123C  7C 9E 23 78 */	mr r30, r4
/* 803B1240  7C 7D 1B 78 */	mr r29, r3
/* 803B1244  7F E4 FB 78 */	mr r4, r31
/* 803B1248  4B FF FD F9 */	bl mFontSentence_gppDraw_before
/* 803B124C  48 00 00 14 */	b lbl_803B1260
lbl_803B1250:
/* 803B1250  7F A3 EB 78 */	mr r3, r29
/* 803B1254  7F C4 F3 78 */	mr r4, r30
/* 803B1258  7F E5 FB 78 */	mr r5, r31
/* 803B125C  4B FF FE 75 */	bl mFontSentence_gppDraw_main
lbl_803B1260:
/* 803B1260  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 803B1264  80 1D 00 04 */	lwz r0, 4(r29)
/* 803B1268  7C 03 00 00 */	cmpw r3, r0
/* 803B126C  41 80 FF E4 */	blt lbl_803B1250
/* 803B1270  7F A3 EB 78 */	mr r3, r29
/* 803B1274  7F E4 FB 78 */	mr r4, r31
/* 803B1278  4B FF FF A9 */	bl mFontSentence_gppDraw_after
/* 803B127C  39 61 00 20 */	addi r11, r1, 0x20
/* 803B1280  4B CE 9C A1 */	bl func_8009AF20
/* 803B1284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B1288  7C 08 03 A6 */	mtlr r0
/* 803B128C  38 21 00 20 */	addi r1, r1, 0x20
/* 803B1290  4E 80 00 20 */	blr 
