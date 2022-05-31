lbl_80521DA0:
/* 80521DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80521DA4  7C 08 02 A6 */	mflr r0
/* 80521DA8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80521DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521DB0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80521DB4  3C A5 00 02 */	addis r5, r5, 2
/* 80521DB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80521DBC  7C 7F 1B 78 */	mr r31, r3
/* 80521DC0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80521DC4  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80521DC8  7D 89 03 A6 */	mtctr r12
/* 80521DCC  4E 80 04 21 */	bctrl 
/* 80521DD0  7F E4 FB 78 */	mr r4, r31
/* 80521DD4  38 60 00 01 */	li r3, 1
/* 80521DD8  4B E7 C7 5D */	bl mEv_actor_dying_message
/* 80521DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521DE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80521DE4  7C 08 03 A6 */	mtlr r0
/* 80521DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80521DEC  4E 80 00 20 */	blr 
