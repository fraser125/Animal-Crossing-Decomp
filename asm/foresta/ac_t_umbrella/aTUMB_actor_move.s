lbl_804AA15C:
/* 804AA15C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA160  7C 08 02 A6 */	mflr r0
/* 804AA164  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AA16C  7C 7F 1B 78 */	mr r31, r3
/* 804AA170  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804AA174  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804AA178  7C 04 00 00 */	cmpw r4, r0
/* 804AA17C  41 82 00 08 */	beq lbl_804AA184
/* 804AA180  4B FF FF 61 */	bl aTUMB_setupAction
lbl_804AA184:
/* 804AA184  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 804AA188  2C 00 00 03 */	cmpwi r0, 3
/* 804AA18C  41 82 00 0C */	beq lbl_804AA198
/* 804AA190  7F E3 FB 78 */	mr r3, r31
/* 804AA194  4B FF FE 8D */	bl aTUMB_anime_proc
lbl_804AA198:
/* 804AA198  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804AA19C  7F E3 FB 78 */	mr r3, r31
/* 804AA1A0  7D 89 03 A6 */	mtctr r12
/* 804AA1A4  4E 80 04 21 */	bctrl 
/* 804AA1A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA1AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AA1B0  7C 08 03 A6 */	mtlr r0
/* 804AA1B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA1B8  4E 80 00 20 */	blr 
