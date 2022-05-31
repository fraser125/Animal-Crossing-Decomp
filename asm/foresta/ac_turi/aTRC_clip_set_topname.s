lbl_805C153C:
/* 805C153C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C1540  7C 08 02 A6 */	mflr r0
/* 805C1544  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C1548  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805C154C  4B DF E1 5D */	bl func_803BF6A8
/* 805C1550  7C 7F 1B 78 */	mr r31, r3
/* 805C1554  4B FF FC B5 */	bl get_top_of_angler_size
/* 805C1558  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 805C155C  38 61 00 08 */	addi r3, r1, 8
/* 805C1560  38 A0 02 9E */	li r5, 0x29e
/* 805C1564  4B E2 DB C1 */	bl mString_Load_NumberStringAddUnitFromRom
/* 805C1568  7C 60 1B 78 */	mr r0, r3
/* 805C156C  7F E3 FB 78 */	mr r3, r31
/* 805C1570  7C 06 03 78 */	mr r6, r0
/* 805C1574  38 A1 00 08 */	addi r5, r1, 8
/* 805C1578  38 80 00 01 */	li r4, 1
/* 805C157C  4B DF E6 D9 */	bl mMsg_Set_free_str
/* 805C1580  4B FF FC E5 */	bl getP_top_of_angler_pID
/* 805C1584  7C 60 1B 78 */	mr r0, r3
/* 805C1588  7F E3 FB 78 */	mr r3, r31
/* 805C158C  7C 05 03 78 */	mr r5, r0
/* 805C1590  38 80 00 00 */	li r4, 0
/* 805C1594  38 C0 00 08 */	li r6, 8
/* 805C1598  4B DF E6 BD */	bl mMsg_Set_free_str
/* 805C159C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C15A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805C15A4  7C 08 03 A6 */	mtlr r0
/* 805C15A8  38 21 00 20 */	addi r1, r1, 0x20
/* 805C15AC  4E 80 00 20 */	blr 
