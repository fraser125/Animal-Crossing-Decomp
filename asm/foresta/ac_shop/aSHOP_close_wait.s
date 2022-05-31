lbl_805B9C34:
/* 805B9C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B9C38  7C 08 02 A6 */	mflr r0
/* 805B9C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B9C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B9C44  7C 7F 1B 78 */	mr r31, r3
/* 805B9C48  38 60 00 07 */	li r3, 7
/* 805B9C4C  93 C1 00 08 */	stw r30, 8(r1)
/* 805B9C50  7C 9E 23 78 */	mr r30, r4
/* 805B9C54  7F E4 FB 78 */	mr r4, r31
/* 805B9C58  4B DE 06 0D */	bl mDemo_Check
/* 805B9C5C  2C 03 00 01 */	cmpwi r3, 1
/* 805B9C60  41 82 00 54 */	beq lbl_805B9CB4
/* 805B9C64  4B E3 0A AD */	bl mSP_ShopOpen
/* 805B9C68  2C 03 00 02 */	cmpwi r3, 2
/* 805B9C6C  41 82 00 10 */	beq lbl_805B9C7C
/* 805B9C70  4B E3 0A A1 */	bl mSP_ShopOpen
/* 805B9C74  2C 03 00 06 */	cmpwi r3, 6
/* 805B9C78  40 82 00 14 */	bne lbl_805B9C8C
lbl_805B9C7C:
/* 805B9C7C  7F E3 FB 78 */	mr r3, r31
/* 805B9C80  38 80 00 03 */	li r4, 3
/* 805B9C84  48 00 02 49 */	bl aSHOP_setup_action
/* 805B9C88  48 00 00 2C */	b lbl_805B9CB4
lbl_805B9C8C:
/* 805B9C8C  7F E3 FB 78 */	mr r3, r31
/* 805B9C90  7F C4 F3 78 */	mr r4, r30
/* 805B9C94  4B FF FD 15 */	bl aSHOP_check_player
/* 805B9C98  2C 03 00 00 */	cmpwi r3, 0
/* 805B9C9C  41 82 00 18 */	beq lbl_805B9CB4
/* 805B9CA0  3C 60 80 5C */	lis r3, aSHOP_set_talk_info_close_wait@ha /* 0x805B9A58@ha */
/* 805B9CA4  7F E4 FB 78 */	mr r4, r31
/* 805B9CA8  38 A3 9A 58 */	addi r5, r3, aSHOP_set_talk_info_close_wait@l /* 0x805B9A58@l */
/* 805B9CAC  38 60 00 07 */	li r3, 7
/* 805B9CB0  4B DE 04 AD */	bl mDemo_Request
lbl_805B9CB4:
/* 805B9CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B9CBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B9CC0  7C 08 03 A6 */	mtlr r0
/* 805B9CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9CC8  4E 80 00 20 */	blr 
