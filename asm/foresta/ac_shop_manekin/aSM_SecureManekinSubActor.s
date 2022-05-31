lbl_804A0284:
/* 804A0284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A0288  7C 08 02 A6 */	mflr r0
/* 804A028C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A0290  38 00 00 00 */	li r0, 0
/* 804A0294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A0298  7C 7F 1B 78 */	mr r31, r3
/* 804A029C  80 63 01 74 */	lwz r3, 0x174(r3)
/* 804A02A0  1C 63 00 58 */	mulli r3, r3, 0x58
/* 804A02A4  90 1F 01 78 */	stw r0, 0x178(r31)
/* 804A02A8  4B F1 C1 B5 */	bl zelda_malloc
/* 804A02AC  90 7F 01 78 */	stw r3, 0x178(r31)
/* 804A02B0  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 804A02B4  28 00 00 00 */	cmplwi r0, 0
/* 804A02B8  41 82 00 0C */	beq lbl_804A02C4
/* 804A02BC  7F E3 FB 78 */	mr r3, r31
/* 804A02C0  4B FF FD 81 */	bl aSM_ManekinCt
lbl_804A02C4:
/* 804A02C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A02C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A02CC  7C 08 03 A6 */	mtlr r0
/* 804A02D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A02D4  4E 80 00 20 */	blr 
