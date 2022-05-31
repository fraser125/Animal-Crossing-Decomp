lbl_805226C0:
/* 805226C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805226C4  7C 08 02 A6 */	mflr r0
/* 805226C8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805226CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805226D0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805226D4  3C A5 00 02 */	addis r5, r5, 2
/* 805226D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805226DC  7C 7F 1B 78 */	mr r31, r3
/* 805226E0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805226E4  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 805226E8  7D 89 03 A6 */	mtctr r12
/* 805226EC  4E 80 04 21 */	bctrl 
/* 805226F0  7F E4 FB 78 */	mr r4, r31
/* 805226F4  38 60 00 31 */	li r3, 0x31
/* 805226F8  4B E7 BE 3D */	bl mEv_actor_dying_message
/* 805226FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522700  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80522704  7C 08 03 A6 */	mtlr r0
/* 80522708  38 21 00 10 */	addi r1, r1, 0x10
/* 8052270C  4E 80 00 20 */	blr 
