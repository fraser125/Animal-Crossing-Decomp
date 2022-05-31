lbl_803C22EC:
/* 803C22EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C22F0  7C 08 02 A6 */	mflr r0
/* 803C22F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C22F8  48 26 BB AD */	bl sAdo_MessageStatus
/* 803C22FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2300  7C 08 03 A6 */	mtlr r0
/* 803C2304  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2308  4E 80 00 20 */	blr 
