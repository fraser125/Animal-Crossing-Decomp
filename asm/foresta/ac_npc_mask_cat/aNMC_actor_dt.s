lbl_8055EF20:
/* 8055EF20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EF24  7C 08 02 A6 */	mflr r0
/* 8055EF28  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055EF2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EF30  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055EF34  3C A5 00 02 */	addis r5, r5, 2
/* 8055EF38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055EF3C  7C 7F 1B 78 */	mr r31, r3
/* 8055EF40  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8055EF44  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8055EF48  7D 89 03 A6 */	mtctr r12
/* 8055EF4C  4E 80 04 21 */	bctrl 
/* 8055EF50  7F E4 FB 78 */	mr r4, r31
/* 8055EF54  38 60 00 73 */	li r3, 0x73
/* 8055EF58  4B E3 F5 DD */	bl mEv_actor_dying_message
/* 8055EF5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EF60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055EF64  7C 08 03 A6 */	mtlr r0
/* 8055EF68  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EF6C  4E 80 00 20 */	blr 
