lbl_805DBF40:
/* 805DBF40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DBF44  7C 08 02 A6 */	mflr r0
/* 805DBF48  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DBF4C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DBF50  4B AB EF 7D */	bl func_8009AECC
/* 805DBF54  7C 7B 1B 78 */	mr r27, r3
/* 805DBF58  7C 9C 23 78 */	mr r28, r4
/* 805DBF5C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DBF60  7C BD 2B 78 */	mr r29, r5
/* 805DBF64  83 C5 00 00 */	lwz r30, 0(r5)
/* 805DBF68  83 E3 09 8C */	lwz r31, 0x98c(r3)
/* 805DBF6C  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 805DBF70  7F C4 F3 78 */	mr r4, r30
/* 805DBF74  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 805DBF78  7F E3 FB 78 */	mr r3, r31
/* 805DBF7C  4B FF F5 F1 */	bl mED_KeyDraw
/* 805DBF80  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 805DBF84  7F 63 DB 78 */	mr r3, r27
/* 805DBF88  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 805DBF8C  7F E4 FB 78 */	mr r4, r31
/* 805DBF90  7F C5 F3 78 */	mr r5, r30
/* 805DBF94  4B FF F7 6D */	bl mED_InkPotDraw
/* 805DBF98  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 805DBF9C  7F 63 DB 78 */	mr r3, r27
/* 805DBFA0  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 805DBFA4  7F E4 FB 78 */	mr r4, r31
/* 805DBFA8  7F A5 EB 78 */	mr r5, r29
/* 805DBFAC  4B FF FE F9 */	bl mED_StringsDraw
/* 805DBFB0  39 61 00 20 */	addi r11, r1, 0x20
/* 805DBFB4  4B AB EF 65 */	bl func_8009AF18
/* 805DBFB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DBFBC  7C 08 03 A6 */	mtlr r0
/* 805DBFC0  38 21 00 20 */	addi r1, r1, 0x20
/* 805DBFC4  4E 80 00 20 */	blr 
