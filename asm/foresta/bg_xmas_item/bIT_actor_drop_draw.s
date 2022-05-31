lbl_804CA11C:
/* 804CA11C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CA120  7C 08 02 A6 */	mflr r0
/* 804CA124  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CA128  39 61 00 20 */	addi r11, r1, 0x20
/* 804CA12C  4B BD 0D A1 */	bl func_8009AECC
/* 804CA130  7C BD 2B 78 */	mr r29, r5
/* 804CA134  7C 7B 1B 78 */	mr r27, r3
/* 804CA138  83 E5 00 00 */	lwz r31, 0(r5)
/* 804CA13C  7C 9C 23 78 */	mr r28, r4
/* 804CA140  3B C0 00 00 */	li r30, 0
/* 804CA144  48 00 00 2C */	b lbl_804CA170
lbl_804CA148:
/* 804CA148  81 9F 00 04 */	lwz r12, 4(r31)
/* 804CA14C  28 0C 00 00 */	cmplwi r12, 0
/* 804CA150  41 82 00 18 */	beq lbl_804CA168
/* 804CA154  7F 63 DB 78 */	mr r3, r27
/* 804CA158  7F 84 E3 78 */	mr r4, r28
/* 804CA15C  7F E5 FB 78 */	mr r5, r31
/* 804CA160  7D 89 03 A6 */	mtctr r12
/* 804CA164  4E 80 04 21 */	bctrl 
lbl_804CA168:
/* 804CA168  3B DE 00 01 */	addi r30, r30, 1
/* 804CA16C  3B FF 00 A8 */	addi r31, r31, 0xa8
lbl_804CA170:
/* 804CA170  A8 1D 00 04 */	lha r0, 4(r29)
/* 804CA174  7C 1E 00 00 */	cmpw r30, r0
/* 804CA178  41 80 FF D0 */	blt lbl_804CA148
/* 804CA17C  39 61 00 20 */	addi r11, r1, 0x20
/* 804CA180  4B BD 0D 99 */	bl func_8009AF18
/* 804CA184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CA188  7C 08 03 A6 */	mtlr r0
/* 804CA18C  38 21 00 20 */	addi r1, r1, 0x20
/* 804CA190  4E 80 00 20 */	blr 
