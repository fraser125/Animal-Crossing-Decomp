lbl_8052FAB8:
/* 8052FAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052FABC  7C 08 02 A6 */	mflr r0
/* 8052FAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052FAC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052FAC8  7C 9F 23 78 */	mr r31, r4
/* 8052FACC  93 C1 00 08 */	stw r30, 8(r1)
/* 8052FAD0  7C 7E 1B 78 */	mr r30, r3
/* 8052FAD4  88 03 09 40 */	lbz r0, 0x940(r3)
/* 8052FAD8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8052FADC  41 82 00 84 */	beq lbl_8052FB60
/* 8052FAE0  80 9E 09 3C */	lwz r4, 0x93c(r30)
/* 8052FAE4  80 1E 09 2C */	lwz r0, 0x92c(r30)
/* 8052FAE8  7C 04 00 40 */	cmplw r4, r0
/* 8052FAEC  41 82 00 74 */	beq lbl_8052FB60
/* 8052FAF0  38 7F 00 28 */	addi r3, r31, 0x28
/* 8052FAF4  38 84 00 28 */	addi r4, r4, 0x28
/* 8052FAF8  4B E8 B6 39 */	bl search_position_angleY
/* 8052FAFC  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8052FB00  7C 80 18 50 */	subf r4, r0, r3
/* 8052FB04  7C 80 07 35 */	extsh. r0, r4
/* 8052FB08  7C 80 07 34 */	extsh r0, r4
/* 8052FB0C  7C 60 00 D0 */	neg r3, r0
/* 8052FB10  41 80 00 08 */	blt lbl_8052FB18
/* 8052FB14  7C 03 03 78 */	mr r3, r0
lbl_8052FB18:
/* 8052FB18  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8052FB1C  40 80 00 44 */	bge lbl_8052FB60
/* 8052FB20  7C 80 07 35 */	extsh. r0, r4
/* 8052FB24  7C 80 07 34 */	extsh r0, r4
/* 8052FB28  88 BE 09 58 */	lbz r5, 0x958(r30)
/* 8052FB2C  7C 60 00 D0 */	neg r3, r0
/* 8052FB30  41 80 00 08 */	blt lbl_8052FB38
/* 8052FB34  7C 03 03 78 */	mr r3, r0
lbl_8052FB38:
/* 8052FB38  2C 03 10 00 */	cmpwi r3, 0x1000
/* 8052FB3C  40 80 00 0C */	bge lbl_8052FB48
/* 8052FB40  60 A5 00 03 */	ori r5, r5, 3
/* 8052FB44  48 00 00 18 */	b lbl_8052FB5C
lbl_8052FB48:
/* 8052FB48  7C 80 07 35 */	extsh. r0, r4
/* 8052FB4C  40 80 00 0C */	bge lbl_8052FB58
/* 8052FB50  60 A5 00 02 */	ori r5, r5, 2
/* 8052FB54  48 00 00 08 */	b lbl_8052FB5C
lbl_8052FB58:
/* 8052FB58  60 A5 00 01 */	ori r5, r5, 1
lbl_8052FB5C:
/* 8052FB5C  98 BE 09 58 */	stb r5, 0x958(r30)
lbl_8052FB60:
/* 8052FB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052FB64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052FB68  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052FB6C  7C 08 03 A6 */	mtlr r0
/* 8052FB70  38 21 00 10 */	addi r1, r1, 0x10
/* 8052FB74  4E 80 00 20 */	blr 
