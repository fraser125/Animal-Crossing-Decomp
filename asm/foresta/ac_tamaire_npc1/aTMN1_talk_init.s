lbl_8058A5C8:
/* 8058A5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A5CC  7C 08 02 A6 */	mflr r0
/* 8058A5D0  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8058A5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A5D8  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 8058A5DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058A5E0  7C 7F 1B 78 */	mr r31, r3
/* 8058A5E4  90 03 09 64 */	stw r0, 0x964(r3)
/* 8058A5E8  4B E0 FD CD */	bl mDemo_Set_ListenAble
/* 8058A5EC  7F E3 FB 78 */	mr r3, r31
/* 8058A5F0  4B E0 FC A9 */	bl mDemo_Start
/* 8058A5F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A5F8  38 60 00 01 */	li r3, 1
/* 8058A5FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058A600  7C 08 03 A6 */	mtlr r0
/* 8058A604  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A608  4E 80 00 20 */	blr 
