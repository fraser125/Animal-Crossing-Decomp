lbl_804B52C4:
/* 804B52C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B52C8  7C 08 02 A6 */	mflr r0
/* 804B52CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B52D0  39 61 00 30 */	addi r11, r1, 0x30
/* 804B52D4  4B BE 5C 01 */	bl func_8009AED4
/* 804B52D8  7C 7D 1B 78 */	mr r29, r3
/* 804B52DC  3B C0 00 00 */	li r30, 0
/* 804B52E0  3B E0 00 00 */	li r31, 0
lbl_804B52E4:
/* 804B52E4  A8 1D 00 10 */	lha r0, 0x10(r29)
/* 804B52E8  2C 00 00 00 */	cmpwi r0, 0
/* 804B52EC  41 82 00 30 */	beq lbl_804B531C
/* 804B52F0  80 DD 00 00 */	lwz r6, 0(r29)
/* 804B52F4  38 81 00 08 */	addi r4, r1, 8
/* 804B52F8  80 1D 00 04 */	lwz r0, 4(r29)
/* 804B52FC  38 60 00 00 */	li r3, 0
/* 804B5300  38 A0 00 00 */	li r5, 0
/* 804B5304  90 C1 00 08 */	stw r6, 8(r1)
/* 804B5308  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B530C  80 1D 00 08 */	lwz r0, 8(r29)
/* 804B5310  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B5314  4B EF 25 1D */	bl mFI_SetFG_common
/* 804B5318  B3 FD 00 10 */	sth r31, 0x10(r29)
lbl_804B531C:
/* 804B531C  3B DE 00 01 */	addi r30, r30, 1
/* 804B5320  3B BD 00 1C */	addi r29, r29, 0x1c
/* 804B5324  2C 1E 00 0D */	cmpwi r30, 0xd
/* 804B5328  41 80 FF BC */	blt lbl_804B52E4
/* 804B532C  39 61 00 30 */	addi r11, r1, 0x30
/* 804B5330  4B BE 5B F1 */	bl func_8009AF20
/* 804B5334  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B5338  7C 08 03 A6 */	mtlr r0
/* 804B533C  38 21 00 30 */	addi r1, r1, 0x30
/* 804B5340  4E 80 00 20 */	blr 
