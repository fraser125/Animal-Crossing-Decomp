lbl_80519D9C:
/* 80519D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519DA0  7C 08 02 A6 */	mflr r0
/* 80519DA4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80519DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519DAC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80519DB0  3C A5 00 02 */	addis r5, r5, 2
/* 80519DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80519DB8  7C 7F 1B 78 */	mr r31, r3
/* 80519DBC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80519DC0  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80519DC4  7D 89 03 A6 */	mtctr r12
/* 80519DC8  4E 80 04 21 */	bctrl 
/* 80519DCC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80519DD0  38 00 00 00 */	li r0, 0
/* 80519DD4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80519DD8  7F E4 FB 78 */	mr r4, r31
/* 80519DDC  3C A3 00 02 */	addis r5, r3, 2
/* 80519DE0  38 60 00 4B */	li r3, 0x4b
/* 80519DE4  90 05 66 98 */	stw r0, 0x6698(r5)
/* 80519DE8  4B E8 47 4D */	bl mEv_actor_dying_message
/* 80519DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80519DF4  7C 08 03 A6 */	mtlr r0
/* 80519DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80519DFC  4E 80 00 20 */	blr 
