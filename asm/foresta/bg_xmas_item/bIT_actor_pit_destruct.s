lbl_804CB558:
/* 804CB558  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CB55C  7C 08 02 A6 */	mflr r0
/* 804CB560  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CB564  39 61 00 30 */	addi r11, r1, 0x30
/* 804CB568  4B BC F9 6D */	bl func_8009AED4
/* 804CB56C  7C 7D 1B 78 */	mr r29, r3
/* 804CB570  3B C0 00 00 */	li r30, 0
/* 804CB574  3B E0 00 00 */	li r31, 0
lbl_804CB578:
/* 804CB578  A8 1D 00 10 */	lha r0, 0x10(r29)
/* 804CB57C  2C 00 00 00 */	cmpwi r0, 0
/* 804CB580  41 82 00 30 */	beq lbl_804CB5B0
/* 804CB584  80 DD 00 00 */	lwz r6, 0(r29)
/* 804CB588  38 81 00 08 */	addi r4, r1, 8
/* 804CB58C  80 1D 00 04 */	lwz r0, 4(r29)
/* 804CB590  38 60 00 00 */	li r3, 0
/* 804CB594  38 A0 00 00 */	li r5, 0
/* 804CB598  90 C1 00 08 */	stw r6, 8(r1)
/* 804CB59C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CB5A0  80 1D 00 08 */	lwz r0, 8(r29)
/* 804CB5A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CB5A8  4B ED C2 89 */	bl mFI_SetFG_common
/* 804CB5AC  B3 FD 00 10 */	sth r31, 0x10(r29)
lbl_804CB5B0:
/* 804CB5B0  3B DE 00 01 */	addi r30, r30, 1
/* 804CB5B4  3B BD 00 1C */	addi r29, r29, 0x1c
/* 804CB5B8  2C 1E 00 0D */	cmpwi r30, 0xd
/* 804CB5BC  41 80 FF BC */	blt lbl_804CB578
/* 804CB5C0  39 61 00 30 */	addi r11, r1, 0x30
/* 804CB5C4  4B BC F9 5D */	bl func_8009AF20
/* 804CB5C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CB5CC  7C 08 03 A6 */	mtlr r0
/* 804CB5D0  38 21 00 30 */	addi r1, r1, 0x30
/* 804CB5D4  4E 80 00 20 */	blr 
