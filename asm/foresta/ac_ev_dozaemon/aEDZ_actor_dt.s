lbl_8051E2FC:
/* 8051E2FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051E300  7C 08 02 A6 */	mflr r0
/* 8051E304  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051E308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051E30C  7C 9F 23 78 */	mr r31, r4
/* 8051E310  38 80 00 04 */	li r4, 4
/* 8051E314  93 C1 00 08 */	stw r30, 8(r1)
/* 8051E318  7C 7E 1B 78 */	mr r30, r3
/* 8051E31C  38 60 00 44 */	li r3, 0x44
/* 8051E320  4B E7 F7 E1 */	bl mEv_check_status
/* 8051E324  2C 03 00 00 */	cmpwi r3, 0
/* 8051E328  41 82 00 10 */	beq lbl_8051E338
/* 8051E32C  7F C4 F3 78 */	mr r4, r30
/* 8051E330  38 60 00 44 */	li r3, 0x44
/* 8051E334  4B E8 02 01 */	bl mEv_actor_dying_message
lbl_8051E338:
/* 8051E338  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051E33C  7F C3 F3 78 */	mr r3, r30
/* 8051E340  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8051E344  7F E4 FB 78 */	mr r4, r31
/* 8051E348  3C A5 00 02 */	addis r5, r5, 2
/* 8051E34C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051E350  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8051E354  7D 89 03 A6 */	mtctr r12
/* 8051E358  4E 80 04 21 */	bctrl 
/* 8051E35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051E360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051E364  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051E368  7C 08 03 A6 */	mtlr r0
/* 8051E36C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051E370  4E 80 00 20 */	blr 
