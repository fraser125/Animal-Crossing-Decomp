lbl_8056C798:
/* 8056C798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056C79C  7C 08 02 A6 */	mflr r0
/* 8056C7A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056C7A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056C7A8  3B E0 00 00 */	li r31, 0
/* 8056C7AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8056C7B0  7C 7E 1B 78 */	mr r30, r3
/* 8056C7B4  4B FF FD 45 */	bl aPG_set_mail_address
/* 8056C7B8  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 8056C7BC  2C 00 00 01 */	cmpwi r0, 1
/* 8056C7C0  41 82 00 5C */	beq lbl_8056C81C
/* 8056C7C4  40 80 00 78 */	bge lbl_8056C83C
/* 8056C7C8  2C 00 00 00 */	cmpwi r0, 0
/* 8056C7CC  40 80 00 08 */	bge lbl_8056C7D4
/* 8056C7D0  48 00 00 6C */	b lbl_8056C83C
lbl_8056C7D4:
/* 8056C7D4  7F C3 F3 78 */	mr r3, r30
/* 8056C7D8  4B E5 03 0D */	bl mMl_hunt_for_send_address
/* 8056C7DC  7C 7E 1B 78 */	mr r30, r3
/* 8056C7E0  2C 1E FF FF */	cmpwi r30, -1
/* 8056C7E4  40 82 00 0C */	bne lbl_8056C7F0
/* 8056C7E8  3B E0 00 01 */	li r31, 1
/* 8056C7EC  48 00 00 50 */	b lbl_8056C83C
lbl_8056C7F0:
/* 8056C7F0  4B FF FF 51 */	bl aPG_check_destination_mailbox
/* 8056C7F4  2C 03 00 00 */	cmpwi r3, 0
/* 8056C7F8  40 82 00 0C */	bne lbl_8056C804
/* 8056C7FC  3B E0 00 02 */	li r31, 2
/* 8056C800  48 00 00 3C */	b lbl_8056C83C
lbl_8056C804:
/* 8056C804  7F C3 F3 78 */	mr r3, r30
/* 8056C808  4B E7 25 CD */	bl mPO_count_mail
/* 8056C80C  2C 03 00 0A */	cmpwi r3, 0xa
/* 8056C810  41 80 00 2C */	blt lbl_8056C83C
/* 8056C814  3B E0 00 03 */	li r31, 3
/* 8056C818  48 00 00 24 */	b lbl_8056C83C
lbl_8056C81C:
/* 8056C81C  7F C4 F3 78 */	mr r4, r30
/* 8056C820  38 61 00 08 */	addi r3, r1, 8
/* 8056C824  4B E5 02 41 */	bl mMl_get_npcinfo_from_mail_name
/* 8056C828  38 61 00 08 */	addi r3, r1, 8
/* 8056C82C  4B E5 FF 5D */	bl mNpc_SearchAnimalPersonalID
/* 8056C830  2C 03 FF FF */	cmpwi r3, -1
/* 8056C834  40 82 00 08 */	bne lbl_8056C83C
/* 8056C838  3B E0 00 01 */	li r31, 1
lbl_8056C83C:
/* 8056C83C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056C840  7F E3 FB 78 */	mr r3, r31
/* 8056C844  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056C848  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8056C84C  7C 08 03 A6 */	mtlr r0
/* 8056C850  38 21 00 20 */	addi r1, r1, 0x20
/* 8056C854  4E 80 00 20 */	blr 
