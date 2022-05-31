lbl_805590E4:
/* 805590E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805590E8  7C 08 02 A6 */	mflr r0
/* 805590EC  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 805590F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805590F4  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 805590F8  90 03 09 64 */	stw r0, 0x964(r3)
/* 805590FC  4B E4 12 B9 */	bl mDemo_Set_ListenAble
/* 80559100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559104  38 60 00 01 */	li r3, 1
/* 80559108  7C 08 03 A6 */	mtlr r0
/* 8055910C  38 21 00 10 */	addi r1, r1, 0x10
/* 80559110  4E 80 00 20 */	blr 
