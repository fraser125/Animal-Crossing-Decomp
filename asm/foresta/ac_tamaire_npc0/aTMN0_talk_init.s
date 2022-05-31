lbl_805899A0:
/* 805899A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805899A4  7C 08 02 A6 */	mflr r0
/* 805899A8  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 805899AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805899B0  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 805899B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805899B8  7C 7F 1B 78 */	mr r31, r3
/* 805899BC  90 03 09 64 */	stw r0, 0x964(r3)
/* 805899C0  4B E1 09 F5 */	bl mDemo_Set_ListenAble
/* 805899C4  7F E3 FB 78 */	mr r3, r31
/* 805899C8  4B E1 08 D1 */	bl mDemo_Start
/* 805899CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805899D0  38 60 00 01 */	li r3, 1
/* 805899D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805899D8  7C 08 03 A6 */	mtlr r0
/* 805899DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805899E0  4E 80 00 20 */	blr 
