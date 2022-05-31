lbl_8052FC4C:
/* 8052FC4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052FC50  7C 08 02 A6 */	mflr r0
/* 8052FC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052FC58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052FC5C  7C 7F 1B 78 */	mr r31, r3
/* 8052FC60  4B FF FF 19 */	bl aNPC_chk_avoid_and_search
/* 8052FC64  2C 03 00 00 */	cmpwi r3, 0
/* 8052FC68  40 82 00 3C */	bne lbl_8052FCA4
/* 8052FC6C  88 1F 08 32 */	lbz r0, 0x832(r31)
/* 8052FC70  3C 60 80 6A */	lis r3, fatigue_add_table@ha /* 0x806A20BC@ha */
/* 8052FC74  38 63 20 BC */	addi r3, r3, fatigue_add_table@l /* 0x806A20BC@l */
/* 8052FC78  A0 9F 08 36 */	lhz r4, 0x836(r31)
/* 8052FC7C  54 00 10 3A */	slwi r0, r0, 2
/* 8052FC80  7C 03 00 2E */	lwzx r0, r3, r0
/* 8052FC84  7C 84 02 15 */	add. r4, r4, r0
/* 8052FC88  40 80 00 0C */	bge lbl_8052FC94
/* 8052FC8C  38 80 00 00 */	li r4, 0
/* 8052FC90  48 00 00 10 */	b lbl_8052FCA0
lbl_8052FC94:
/* 8052FC94  2C 04 06 40 */	cmpwi r4, 0x640
/* 8052FC98  40 81 00 08 */	ble lbl_8052FCA0
/* 8052FC9C  38 80 06 40 */	li r4, 0x640
lbl_8052FCA0:
/* 8052FCA0  B0 9F 08 36 */	sth r4, 0x836(r31)
lbl_8052FCA4:
/* 8052FCA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052FCA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052FCAC  7C 08 03 A6 */	mtlr r0
/* 8052FCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8052FCB4  4E 80 00 20 */	blr 
