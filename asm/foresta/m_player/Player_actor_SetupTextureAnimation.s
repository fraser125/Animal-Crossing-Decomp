lbl_804D5600:
/* 804D5600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5604  7C 08 02 A6 */	mflr r0
/* 804D5608  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D560C  38 00 00 00 */	li r0, 0
/* 804D5610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5614  93 C1 00 08 */	stw r30, 8(r1)
/* 804D5618  7C 7E 1B 78 */	mr r30, r3
/* 804D561C  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804D5620  2C 04 00 00 */	cmpwi r4, 0
/* 804D5624  41 80 00 10 */	blt lbl_804D5634
/* 804D5628  2C 04 00 79 */	cmpwi r4, 0x79
/* 804D562C  40 80 00 08 */	bge lbl_804D5634
/* 804D5630  38 00 00 01 */	li r0, 1
lbl_804D5634:
/* 804D5634  2C 00 00 00 */	cmpwi r0, 0
/* 804D5638  41 82 00 3C */	beq lbl_804D5674
/* 804D563C  3C 60 80 64 */	lis r3, data_924@ha /* 0x80646878@ha */
/* 804D5640  38 63 68 78 */	addi r3, r3, data_924@l /* 0x80646878@l */
/* 804D5644  7F E3 20 AE */	lbzx r31, r3, r4
/* 804D5648  7F FF 07 74 */	extsb r31, r31
/* 804D564C  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 804D5650  41 82 00 10 */	beq lbl_804D5660
/* 804D5654  7F C3 F3 78 */	mr r3, r30
/* 804D5658  38 80 00 00 */	li r4, 0
/* 804D565C  4B FF FD B5 */	bl Player_actor_set_eye_pattern
lbl_804D5660:
/* 804D5660  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 804D5664  41 82 00 10 */	beq lbl_804D5674
/* 804D5668  7F C3 F3 78 */	mr r3, r30
/* 804D566C  38 80 00 00 */	li r4, 0
/* 804D5670  4B FF FE A9 */	bl Player_actor_set_mouth_pattern
lbl_804D5674:
/* 804D5674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D567C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D5680  7C 08 03 A6 */	mtlr r0
/* 804D5684  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5688  4E 80 00 20 */	blr 
