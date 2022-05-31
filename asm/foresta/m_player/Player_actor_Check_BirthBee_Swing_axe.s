lbl_804F03C4:
/* 804F03C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F03C8  7C 08 02 A6 */	mflr r0
/* 804F03CC  2C 05 00 00 */	cmpwi r5, 0
/* 804F03D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F03D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F03D8  7C 9F 23 78 */	mr r31, r4
/* 804F03DC  40 82 00 4C */	bne lbl_804F0428
/* 804F03E0  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 804F03E4  2C 00 00 00 */	cmpwi r0, 0
/* 804F03E8  40 81 00 40 */	ble lbl_804F0428
/* 804F03EC  A0 9F 00 0C */	lhz r4, 0xc(r31)
/* 804F03F0  38 FF 00 1C */	addi r7, r31, 0x1c
/* 804F03F4  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 804F03F8  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 804F03FC  4B FE C7 AD */	bl Player_actor_Check_BirthBee_common
/* 804F0400  2C 03 00 00 */	cmpwi r3, 0
/* 804F0404  41 82 00 18 */	beq lbl_804F041C
/* 804F0408  38 60 00 00 */	li r3, 0
/* 804F040C  38 00 00 01 */	li r0, 1
/* 804F0410  90 7F 00 20 */	stw r3, 0x20(r31)
/* 804F0414  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804F0418  48 00 00 10 */	b lbl_804F0428
lbl_804F041C:
/* 804F041C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 804F0420  38 03 FF FF */	addi r0, r3, -1
/* 804F0424  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_804F0428:
/* 804F0428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F042C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F0430  7C 08 03 A6 */	mtlr r0
/* 804F0434  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0438  4E 80 00 20 */	blr 
