lbl_805900F0:
/* 805900F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805900F4  7C 08 02 A6 */	mflr r0
/* 805900F8  3C A0 81 1F */	lis r5, data_811ED3E8@ha /* 0x811ED3E8@ha */
/* 805900FC  3C E0 81 1F */	lis r7, turiActorx@ha /* 0x811ED3EC@ha */
/* 80590100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590104  38 C5 D3 E8 */	addi r6, r5, data_811ED3E8@l /* 0x811ED3E8@l */
/* 80590108  39 20 00 00 */	li r9, 0
/* 8059010C  38 E7 D3 EC */	addi r7, r7, turiActorx@l /* 0x811ED3EC@l */
/* 80590110  A1 03 00 06 */	lhz r8, 6(r3)
/* 80590114  80 A6 00 00 */	lwz r5, 0(r6)
/* 80590118  3D 08 FF FF */	addis r8, r8, 0xffff
/* 8059011C  38 08 2F B7 */	addi r0, r8, 0x2fb7
/* 80590120  2C 05 00 00 */	cmpwi r5, 0
/* 80590124  54 00 10 3A */	slwi r0, r0, 2
/* 80590128  7D 27 01 2E */	stwx r9, r7, r0
/* 8059012C  40 81 00 0C */	ble lbl_80590138
/* 80590130  38 05 FF FF */	addi r0, r5, -1
/* 80590134  90 06 00 00 */	stw r0, 0(r6)
lbl_80590138:
/* 80590138  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8059013C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80590140  3C A5 00 02 */	addis r5, r5, 2
/* 80590144  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80590148  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8059014C  7D 89 03 A6 */	mtctr r12
/* 80590150  4E 80 04 21 */	bctrl 
/* 80590154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590158  7C 08 03 A6 */	mtlr r0
/* 8059015C  38 21 00 10 */	addi r1, r1, 0x10
/* 80590160  4E 80 00 20 */	blr 
