lbl_80566D88:
/* 80566D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566D8C  7C 08 02 A6 */	mflr r0
/* 80566D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566D98  7C 7F 1B 78 */	mr r31, r3
/* 80566D9C  4B E3 36 19 */	bl mDemo_Set_ListenAble
/* 80566DA0  7F E3 FB 78 */	mr r3, r31
/* 80566DA4  38 80 00 00 */	li r4, 0
/* 80566DA8  4B FF FF 59 */	bl aNPS_change_talk_proc
/* 80566DAC  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80566DB0  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80566DB4  90 1F 09 64 */	stw r0, 0x964(r31)
/* 80566DB8  4B E5 88 F1 */	bl func_803BF6A8
/* 80566DBC  4B E5 9F 9D */	bl mMsg_Set_idling_req
/* 80566DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566DC4  38 60 00 01 */	li r3, 1
/* 80566DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566DCC  7C 08 03 A6 */	mtlr r0
/* 80566DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80566DD4  4E 80 00 20 */	blr 
