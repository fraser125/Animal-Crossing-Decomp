lbl_8051BD34:
/* 8051BD34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BD38  7C 08 02 A6 */	mflr r0
/* 8051BD3C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051BD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BD44  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051BD48  3C A5 00 02 */	addis r5, r5, 2
/* 8051BD4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051BD50  7C 7F 1B 78 */	mr r31, r3
/* 8051BD54  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051BD58  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8051BD5C  7D 89 03 A6 */	mtctr r12
/* 8051BD60  4E 80 04 21 */	bctrl 
/* 8051BD64  7F E4 FB 78 */	mr r4, r31
/* 8051BD68  38 60 00 4F */	li r3, 0x4f
/* 8051BD6C  4B E8 27 C9 */	bl mEv_actor_dying_message
/* 8051BD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BD74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051BD78  7C 08 03 A6 */	mtlr r0
/* 8051BD7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BD80  4E 80 00 20 */	blr 
