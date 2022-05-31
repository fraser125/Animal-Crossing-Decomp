lbl_8056C4A8:
/* 8056C4A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056C4AC  7C 08 02 A6 */	mflr r0
/* 8056C4B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056C4B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056C4B8  7C 7F 1B 78 */	mr r31, r3
/* 8056C4BC  93 C1 00 08 */	stw r30, 8(r1)
/* 8056C4C0  7C 9E 23 78 */	mr r30, r4
/* 8056C4C4  4B E5 31 E5 */	bl func_803BF6A8
/* 8056C4C8  88 1F 07 44 */	lbz r0, 0x744(r31)
/* 8056C4CC  7C 7F 1B 78 */	mr r31, r3
/* 8056C4D0  7C 9E 02 14 */	add r4, r30, r0
/* 8056C4D4  4B E5 44 C5 */	bl mMsg_ChangeMsgData
/* 8056C4D8  7F E3 FB 78 */	mr r3, r31
/* 8056C4DC  4B E5 48 4D */	bl mMsg_Set_ForceNext
/* 8056C4E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056C4E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056C4E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056C4EC  7C 08 03 A6 */	mtlr r0
/* 8056C4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056C4F4  4E 80 00 20 */	blr 
