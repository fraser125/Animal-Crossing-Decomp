lbl_8052AF3C:
/* 8052AF3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052AF40  7C 08 02 A6 */	mflr r0
/* 8052AF44  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8052AF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052AF4C  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 8052AF50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052AF54  7C 7F 1B 78 */	mr r31, r3
/* 8052AF58  90 03 09 64 */	stw r0, 0x964(r3)
/* 8052AF5C  4B E6 F4 59 */	bl mDemo_Set_ListenAble
/* 8052AF60  7F E3 FB 78 */	mr r3, r31
/* 8052AF64  4B E6 F3 35 */	bl mDemo_Start
/* 8052AF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052AF6C  38 60 00 01 */	li r3, 1
/* 8052AF70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052AF74  7C 08 03 A6 */	mtlr r0
/* 8052AF78  38 21 00 10 */	addi r1, r1, 0x10
/* 8052AF7C  4E 80 00 20 */	blr 
