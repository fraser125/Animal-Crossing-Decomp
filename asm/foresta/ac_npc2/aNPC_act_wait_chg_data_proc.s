lbl_8053F4FC:
/* 8053F4FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F500  7C 08 02 A6 */	mflr r0
/* 8053F504  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053F50C  7C 7F 1B 78 */	mr r31, r3
/* 8053F510  A0 03 08 0C */	lhz r0, 0x80c(r3)
/* 8053F514  98 03 07 FD */	stb r0, 0x7fd(r3)
/* 8053F518  A0 03 08 0E */	lhz r0, 0x80e(r3)
/* 8053F51C  B0 03 07 FE */	sth r0, 0x7fe(r3)
/* 8053F520  4B FF BF 31 */	bl func_8053B450
/* 8053F524  88 1F 07 FC */	lbz r0, 0x7fc(r31)
/* 8053F528  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8053F52C  7C 00 18 40 */	cmplw r0, r3
/* 8053F530  41 82 00 0C */	beq lbl_8053F53C
/* 8053F534  38 00 00 00 */	li r0, 0
/* 8053F538  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_8053F53C:
/* 8053F53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053F544  7C 08 03 A6 */	mtlr r0
/* 8053F548  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F54C  4E 80 00 20 */	blr 
