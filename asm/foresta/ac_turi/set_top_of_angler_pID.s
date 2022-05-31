lbl_805C122C:
/* 805C122C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C1230  7C 08 02 A6 */	mflr r0
/* 805C1234  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C1238  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C123C  7C 7F 1B 78 */	mr r31, r3
/* 805C1240  4B FF FF 69 */	bl get_fish_save_area
/* 805C1244  7F E4 FB 78 */	mr r4, r31
/* 805C1248  38 63 00 04 */	addi r3, r3, 4
/* 805C124C  4B E1 EE D5 */	bl mPr_CopyPersonalID
/* 805C1250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C1254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C1258  7C 08 03 A6 */	mtlr r0
/* 805C125C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C1260  4E 80 00 20 */	blr 
