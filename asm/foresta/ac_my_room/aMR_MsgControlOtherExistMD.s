lbl_804752B4:
/* 804752B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804752B8  7C 08 02 A6 */	mflr r0
/* 804752BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804752C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804752C4  7C 7F 1B 78 */	mr r31, r3
/* 804752C8  4B F4 A3 E1 */	bl func_803BF6A8
/* 804752CC  4B F4 BA 31 */	bl mMsg_Check_MainDisappear
/* 804752D0  2C 03 00 00 */	cmpwi r3, 0
/* 804752D4  41 82 00 18 */	beq lbl_804752EC
/* 804752D8  38 00 00 23 */	li r0, 0x23
/* 804752DC  7F E3 FB 78 */	mr r3, r31
/* 804752E0  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 804752E4  A8 9F 03 FA */	lha r4, 0x3fa(r31)
/* 804752E8  48 00 40 35 */	bl aMR_FtrIdx2ChangeFtrSwitch
lbl_804752EC:
/* 804752EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804752F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804752F4  7C 08 03 A6 */	mtlr r0
/* 804752F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804752FC  4E 80 00 20 */	blr 
