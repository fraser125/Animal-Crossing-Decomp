lbl_8056EB44:
/* 8056EB44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056EB48  7C 08 02 A6 */	mflr r0
/* 8056EB4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056EB50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056EB54  7C 9F 23 78 */	mr r31, r4
/* 8056EB58  93 C1 00 08 */	stw r30, 8(r1)
/* 8056EB5C  7C 7E 1B 78 */	mr r30, r3
/* 8056EB60  4B FF FE 85 */	bl aPMAN_clear_xz_spd
/* 8056EB64  88 7E 09 9B */	lbz r3, 0x99b(r30)
/* 8056EB68  7C 63 07 74 */	extsb r3, r3
/* 8056EB6C  4B E7 0C 71 */	bl mPO_delivery_one_address
/* 8056EB70  7F C3 F3 78 */	mr r3, r30
/* 8056EB74  7F E4 FB 78 */	mr r4, r31
/* 8056EB78  4B FF F6 51 */	bl aPMAN_order_open_mailbox
/* 8056EB7C  88 7E 09 9B */	lbz r3, 0x99b(r30)
/* 8056EB80  7C 60 07 74 */	extsb r0, r3
/* 8056EB84  2C 00 00 03 */	cmpwi r0, 3
/* 8056EB88  40 80 00 1C */	bge lbl_8056EBA4
/* 8056EB8C  38 03 00 01 */	addi r0, r3, 1
/* 8056EB90  7F C3 F3 78 */	mr r3, r30
/* 8056EB94  98 1E 09 9B */	stb r0, 0x99b(r30)
/* 8056EB98  4B FF F5 01 */	bl aPMAN_set_delivery_idx
/* 8056EB9C  98 7E 09 9B */	stb r3, 0x99b(r30)
/* 8056EBA0  48 00 00 0C */	b lbl_8056EBAC
lbl_8056EBA4:
/* 8056EBA4  38 00 FF FF */	li r0, -1
/* 8056EBA8  98 1E 09 9B */	stb r0, 0x99b(r30)
lbl_8056EBAC:
/* 8056EBAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056EBB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056EBB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056EBB8  7C 08 03 A6 */	mtlr r0
/* 8056EBBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056EBC0  4E 80 00 20 */	blr 
