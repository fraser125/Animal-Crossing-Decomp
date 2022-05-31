lbl_8057EC98:
/* 8057EC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EC9C  7C 08 02 A6 */	mflr r0
/* 8057ECA0  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8057ECA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057ECA8  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 8057ECAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057ECB0  7C 7F 1B 78 */	mr r31, r3
/* 8057ECB4  90 03 09 64 */	stw r0, 0x964(r3)
/* 8057ECB8  4B E1 B6 FD */	bl mDemo_Set_ListenAble
/* 8057ECBC  7F E3 FB 78 */	mr r3, r31
/* 8057ECC0  4B E1 B5 D9 */	bl mDemo_Start
/* 8057ECC4  38 60 00 20 */	li r3, 0x20
/* 8057ECC8  4B E6 D7 A9 */	bl mSC_trophy_set
/* 8057ECCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057ECD0  38 60 00 01 */	li r3, 1
/* 8057ECD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057ECD8  7C 08 03 A6 */	mtlr r0
/* 8057ECDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8057ECE0  4E 80 00 20 */	blr 
