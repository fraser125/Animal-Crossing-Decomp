lbl_805200C4:
/* 805200C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805200C8  7C 08 02 A6 */	mflr r0
/* 805200CC  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 805200D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805200D4  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 805200D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805200DC  7C 7F 1B 78 */	mr r31, r3
/* 805200E0  90 03 09 64 */	stw r0, 0x964(r3)
/* 805200E4  4B E7 A2 D1 */	bl mDemo_Set_ListenAble
/* 805200E8  7F E3 FB 78 */	mr r3, r31
/* 805200EC  4B E7 A1 AD */	bl mDemo_Start
/* 805200F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805200F4  38 60 00 01 */	li r3, 1
/* 805200F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805200FC  7C 08 03 A6 */	mtlr r0
/* 80520100  38 21 00 10 */	addi r1, r1, 0x10
/* 80520104  4E 80 00 20 */	blr 
