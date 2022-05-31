lbl_8057D768:
/* 8057D768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D76C  7C 08 02 A6 */	mflr r0
/* 8057D770  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8057D774  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D778  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 8057D77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D780  7C 7F 1B 78 */	mr r31, r3
/* 8057D784  90 03 09 64 */	stw r0, 0x964(r3)
/* 8057D788  4B E1 CC 2D */	bl mDemo_Set_ListenAble
/* 8057D78C  7F E3 FB 78 */	mr r3, r31
/* 8057D790  4B E1 CB 09 */	bl mDemo_Start
/* 8057D794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D798  38 60 00 01 */	li r3, 1
/* 8057D79C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D7A0  7C 08 03 A6 */	mtlr r0
/* 8057D7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D7A8  4E 80 00 20 */	blr 
