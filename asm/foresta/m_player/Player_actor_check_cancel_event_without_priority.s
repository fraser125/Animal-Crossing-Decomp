lbl_804DE234:
/* 804DE234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE238  7C 08 02 A6 */	mflr r0
/* 804DE23C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE240  4B EF B4 01 */	bl get_player_actor_withoutCheck
/* 804DE244  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804DE248  38 00 00 00 */	li r0, 0
/* 804DE24C  2C 04 00 00 */	cmpwi r4, 0
/* 804DE250  41 80 00 10 */	blt lbl_804DE260
/* 804DE254  2C 04 00 79 */	cmpwi r4, 0x79
/* 804DE258  40 80 00 08 */	bge lbl_804DE260
/* 804DE25C  38 00 00 01 */	li r0, 1
lbl_804DE260:
/* 804DE260  2C 00 00 00 */	cmpwi r0, 0
/* 804DE264  41 82 00 18 */	beq lbl_804DE27C
/* 804DE268  3C 60 80 64 */	lis r3, data_4951@ha /* 0x80647C58@ha */
/* 804DE26C  38 63 7C 58 */	addi r3, r3, data_4951@l /* 0x80647C58@l */
/* 804DE270  7C 63 20 AE */	lbzx r3, r3, r4
/* 804DE274  7C 63 07 74 */	extsb r3, r3
/* 804DE278  48 00 00 08 */	b lbl_804DE280
lbl_804DE27C:
/* 804DE27C  38 60 00 00 */	li r3, 0
lbl_804DE280:
/* 804DE280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE284  7C 08 03 A6 */	mtlr r0
/* 804DE288  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE28C  4E 80 00 20 */	blr 
