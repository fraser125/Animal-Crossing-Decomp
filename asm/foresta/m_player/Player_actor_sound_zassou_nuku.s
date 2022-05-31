lbl_804DF954:
/* 804DF954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF958  7C 08 02 A6 */	mflr r0
/* 804DF95C  7C 64 1B 78 */	mr r4, r3
/* 804DF960  38 60 01 5F */	li r3, 0x15f
/* 804DF964  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF968  48 14 E6 41 */	bl sAdo_OngenTrgStart
/* 804DF96C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF970  7C 08 03 A6 */	mtlr r0
/* 804DF974  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF978  4E 80 00 20 */	blr 
