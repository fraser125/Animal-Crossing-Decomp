lbl_80593DF4:
/* 80593DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593DF8  7C 08 02 A6 */	mflr r0
/* 80593DFC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80593E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593E04  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80593E08  3C A5 00 02 */	addis r5, r5, 2
/* 80593E0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80593E10  7C 7F 1B 78 */	mr r31, r3
/* 80593E14  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80593E18  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80593E1C  7D 89 03 A6 */	mtctr r12
/* 80593E20  4E 80 04 21 */	bctrl 
/* 80593E24  7F E4 FB 78 */	mr r4, r31
/* 80593E28  38 60 00 6C */	li r3, 0x6c
/* 80593E2C  4B E0 A7 09 */	bl mEv_actor_dying_message
/* 80593E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593E34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80593E38  7C 08 03 A6 */	mtlr r0
/* 80593E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80593E40  4E 80 00 20 */	blr 
