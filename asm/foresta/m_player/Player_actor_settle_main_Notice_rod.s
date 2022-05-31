lbl_804F665C:
/* 804F665C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F6660  7C 08 02 A6 */	mflr r0
/* 804F6664  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F6668  80 03 0D 2C */	lwz r0, 0xd2c(r3)
/* 804F666C  2C 00 00 00 */	cmpwi r0, 0
/* 804F6670  40 82 00 14 */	bne lbl_804F6684
/* 804F6674  38 60 00 28 */	li r3, 0x28
/* 804F6678  38 80 01 68 */	li r4, 0x168
/* 804F667C  4B E8 5B B5 */	bl mBGMPsComp_delete_ps_fanfare
/* 804F6680  48 00 00 10 */	b lbl_804F6690
lbl_804F6684:
/* 804F6684  38 60 00 4C */	li r3, 0x4c
/* 804F6688  38 80 01 68 */	li r4, 0x168
/* 804F668C  4B E8 5B A5 */	bl mBGMPsComp_delete_ps_fanfare
lbl_804F6690:
/* 804F6690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F6694  7C 08 03 A6 */	mtlr r0
/* 804F6698  38 21 00 10 */	addi r1, r1, 0x10
/* 804F669C  4E 80 00 20 */	blr 
