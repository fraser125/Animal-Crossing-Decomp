lbl_8048308C:
/* 8048308C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80483090  7C 08 02 A6 */	mflr r0
/* 80483094  90 01 00 24 */	stw r0, 0x24(r1)
/* 80483098  39 61 00 20 */	addi r11, r1, 0x20
/* 8048309C  4B C1 7E 39 */	bl func_8009AED4
/* 804830A0  7C 7D 1B 78 */	mr r29, r3
/* 804830A4  3B C0 00 00 */	li r30, 0
/* 804830A8  3B E0 00 00 */	li r31, 0
lbl_804830AC:
/* 804830AC  38 1F 02 1C */	addi r0, r31, 0x21c
/* 804830B0  7C 7D 00 2E */	lwzx r3, r29, r0
/* 804830B4  4B F0 9E 41 */	bl mCoBG_CrossOffMoveBg
/* 804830B8  3B DE 00 01 */	addi r30, r30, 1
/* 804830BC  3B FF 00 38 */	addi r31, r31, 0x38
/* 804830C0  2C 1E 00 04 */	cmpwi r30, 4
/* 804830C4  41 80 FF E8 */	blt lbl_804830AC
/* 804830C8  3B C0 00 00 */	li r30, 0
/* 804830CC  3B E0 00 00 */	li r31, 0
lbl_804830D0:
/* 804830D0  38 1F 02 FC */	addi r0, r31, 0x2fc
/* 804830D4  7C 7D 00 2E */	lwzx r3, r29, r0
/* 804830D8  4B F0 9E 1D */	bl mCoBG_CrossOffMoveBg
/* 804830DC  3B DE 00 01 */	addi r30, r30, 1
/* 804830E0  3B FF 00 38 */	addi r31, r31, 0x38
/* 804830E4  2C 1E 00 04 */	cmpwi r30, 4
/* 804830E8  41 80 FF E8 */	blt lbl_804830D0
/* 804830EC  7F A3 EB 78 */	mr r3, r29
/* 804830F0  4B FF FF 25 */	bl aNI_FreeRam
/* 804830F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804830F8  4B C1 7E 29 */	bl func_8009AF20
/* 804830FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80483100  7C 08 03 A6 */	mtlr r0
/* 80483104  38 21 00 20 */	addi r1, r1, 0x20
/* 80483108  4E 80 00 20 */	blr 
