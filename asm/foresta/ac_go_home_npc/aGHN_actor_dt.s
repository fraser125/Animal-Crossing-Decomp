lbl_80526EF8:
/* 80526EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526EFC  7C 08 02 A6 */	mflr r0
/* 80526F00  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80526F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526F08  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80526F0C  3C A5 00 02 */	addis r5, r5, 2
/* 80526F10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80526F14  7C 7F 1B 78 */	mr r31, r3
/* 80526F18  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80526F1C  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80526F20  7D 89 03 A6 */	mtctr r12
/* 80526F24  4E 80 04 21 */	bctrl 
/* 80526F28  7F E4 FB 78 */	mr r4, r31
/* 80526F2C  38 60 00 73 */	li r3, 0x73
/* 80526F30  4B E7 76 05 */	bl mEv_actor_dying_message
/* 80526F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526F38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80526F3C  7C 08 03 A6 */	mtlr r0
/* 80526F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80526F44  4E 80 00 20 */	blr 
