lbl_80572EA0:
/* 80572EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80572EA4  7C 08 02 A6 */	mflr r0
/* 80572EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80572EAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80572EB0  7C 7F 1B 78 */	mr r31, r3
/* 80572EB4  4B E2 75 01 */	bl mDemo_Set_ListenAble
/* 80572EB8  7F E3 FB 78 */	mr r3, r31
/* 80572EBC  38 80 00 00 */	li r4, 0
/* 80572EC0  4B FF FF 61 */	bl aNRST_change_talk_proc
/* 80572EC4  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 80572EC8  38 60 00 01 */	li r3, 1
/* 80572ECC  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 80572ED0  90 1F 09 64 */	stw r0, 0x964(r31)
/* 80572ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80572ED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80572EDC  7C 08 03 A6 */	mtlr r0
/* 80572EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80572EE4  4E 80 00 20 */	blr 
