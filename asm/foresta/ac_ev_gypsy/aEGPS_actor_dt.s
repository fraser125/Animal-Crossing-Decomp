lbl_80520D78:
/* 80520D78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80520D7C  7C 08 02 A6 */	mflr r0
/* 80520D80  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80520D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80520D88  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80520D8C  3C A5 00 02 */	addis r5, r5, 2
/* 80520D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80520D94  7C 7F 1B 78 */	mr r31, r3
/* 80520D98  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80520D9C  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80520DA0  7D 89 03 A6 */	mtctr r12
/* 80520DA4  4E 80 04 21 */	bctrl 
/* 80520DA8  7F E4 FB 78 */	mr r4, r31
/* 80520DAC  38 60 00 4D */	li r3, 0x4d
/* 80520DB0  4B E7 D7 85 */	bl mEv_actor_dying_message
/* 80520DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80520DB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80520DBC  7C 08 03 A6 */	mtlr r0
/* 80520DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80520DC4  4E 80 00 20 */	blr 
