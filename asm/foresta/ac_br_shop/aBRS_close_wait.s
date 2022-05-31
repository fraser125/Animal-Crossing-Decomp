lbl_805A8BF0:
/* 805A8BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8BF4  7C 08 02 A6 */	mflr r0
/* 805A8BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A8C00  7C 7F 1B 78 */	mr r31, r3
/* 805A8C04  38 60 00 07 */	li r3, 7
/* 805A8C08  7F E4 FB 78 */	mr r4, r31
/* 805A8C0C  4B DF 16 59 */	bl mDemo_Check
/* 805A8C10  2C 03 00 01 */	cmpwi r3, 1
/* 805A8C14  41 82 00 68 */	beq lbl_805A8C7C
/* 805A8C18  7F E3 FB 78 */	mr r3, r31
/* 805A8C1C  4B FF FE E1 */	bl aBRS_open_check
/* 805A8C20  2C 03 00 02 */	cmpwi r3, 2
/* 805A8C24  40 82 00 14 */	bne lbl_805A8C38
/* 805A8C28  7F E3 FB 78 */	mr r3, r31
/* 805A8C2C  38 80 00 03 */	li r4, 3
/* 805A8C30  48 00 01 CD */	bl aBRS_setup_action
/* 805A8C34  48 00 00 48 */	b lbl_805A8C7C
lbl_805A8C38:
/* 805A8C38  7F E4 FB 78 */	mr r4, r31
/* 805A8C3C  38 60 00 07 */	li r3, 7
/* 805A8C40  4B DF 16 25 */	bl mDemo_Check
/* 805A8C44  2C 03 00 00 */	cmpwi r3, 0
/* 805A8C48  40 82 00 34 */	bne lbl_805A8C7C
/* 805A8C4C  A8 7F 00 B6 */	lha r3, 0xb6(r31)
/* 805A8C50  7C 60 07 35 */	extsh. r0, r3
/* 805A8C54  7C 03 00 D0 */	neg r0, r3
/* 805A8C58  41 80 00 08 */	blt lbl_805A8C60
/* 805A8C5C  7C 60 1B 78 */	mr r0, r3
lbl_805A8C60:
/* 805A8C60  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805A8C64  40 80 00 18 */	bge lbl_805A8C7C
/* 805A8C68  3C 60 80 5B */	lis r3, aBRS_set_talk_info_close_wait@ha /* 0x805A8B88@ha */
/* 805A8C6C  7F E4 FB 78 */	mr r4, r31
/* 805A8C70  38 A3 8B 88 */	addi r5, r3, aBRS_set_talk_info_close_wait@l /* 0x805A8B88@l */
/* 805A8C74  38 60 00 07 */	li r3, 7
/* 805A8C78  4B DF 14 E5 */	bl mDemo_Request
lbl_805A8C7C:
/* 805A8C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A8C84  7C 08 03 A6 */	mtlr r0
/* 805A8C88  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8C8C  4E 80 00 20 */	blr 
