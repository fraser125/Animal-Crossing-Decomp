lbl_8051F254:
/* 8051F254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051F258  7C 08 02 A6 */	mflr r0
/* 8051F25C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051F260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051F264  7C 9F 23 78 */	mr r31, r4
/* 8051F268  93 C1 00 08 */	stw r30, 8(r1)
/* 8051F26C  7C 7E 1B 78 */	mr r30, r3
/* 8051F270  7F C4 F3 78 */	mr r4, r30
/* 8051F274  38 60 00 72 */	li r3, 0x72
/* 8051F278  4B E7 F2 BD */	bl mEv_actor_dying_message
/* 8051F27C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051F280  7F C3 F3 78 */	mr r3, r30
/* 8051F284  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8051F288  7F E4 FB 78 */	mr r4, r31
/* 8051F28C  3C A5 00 02 */	addis r5, r5, 2
/* 8051F290  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051F294  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8051F298  7D 89 03 A6 */	mtctr r12
/* 8051F29C  4E 80 04 21 */	bctrl 
/* 8051F2A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051F2A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051F2A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051F2AC  7C 08 03 A6 */	mtlr r0
/* 8051F2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051F2B4  4E 80 00 20 */	blr 
