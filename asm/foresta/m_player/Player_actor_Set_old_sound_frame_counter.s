lbl_804DF008:
/* 804DF008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF00C  7C 08 02 A6 */	mflr r0
/* 804DF010  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DF018  7C 7F 1B 78 */	mr r31, r3
/* 804DF01C  48 14 F7 99 */	bl sAdo_GetSoundFrameCounter
/* 804DF020  90 7F 12 44 */	stw r3, 0x1244(r31)
/* 804DF024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DF02C  7C 08 03 A6 */	mtlr r0
/* 804DF030  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF034  4E 80 00 20 */	blr 
