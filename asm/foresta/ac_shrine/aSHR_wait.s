lbl_805BAA44:
/* 805BAA44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BAA48  7C 08 02 A6 */	mflr r0
/* 805BAA4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BAA50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BAA54  7C 9F 23 78 */	mr r31, r4
/* 805BAA58  93 C1 00 08 */	stw r30, 8(r1)
/* 805BAA5C  7C 7E 1B 78 */	mr r30, r3
/* 805BAA60  7F C4 F3 78 */	mr r4, r30
/* 805BAA64  38 60 00 07 */	li r3, 7
/* 805BAA68  4B DD F7 FD */	bl mDemo_Check
/* 805BAA6C  2C 03 00 01 */	cmpwi r3, 1
/* 805BAA70  40 82 00 1C */	bne lbl_805BAA8C
/* 805BAA74  4B DD F9 41 */	bl mDemo_Set_ListenAble
/* 805BAA78  7F C3 F3 78 */	mr r3, r30
/* 805BAA7C  7F E4 FB 78 */	mr r4, r31
/* 805BAA80  38 A0 00 01 */	li r5, 1
/* 805BAA84  48 00 06 4D */	bl aSHR_setup_action
/* 805BAA88  48 00 00 2C */	b lbl_805BAAB4
lbl_805BAA8C:
/* 805BAA8C  7F C3 F3 78 */	mr r3, r30
/* 805BAA90  7F E4 FB 78 */	mr r4, r31
/* 805BAA94  4B FF FC 95 */	bl aSHR_talk_check
/* 805BAA98  2C 03 00 00 */	cmpwi r3, 0
/* 805BAA9C  41 82 00 18 */	beq lbl_805BAAB4
/* 805BAAA0  3C 60 80 5C */	lis r3, aSHR_set_talk_info@ha /* 0x805BA7E0@ha */
/* 805BAAA4  7F C4 F3 78 */	mr r4, r30
/* 805BAAA8  38 A3 A7 E0 */	addi r5, r3, aSHR_set_talk_info@l /* 0x805BA7E0@l */
/* 805BAAAC  38 60 00 07 */	li r3, 7
/* 805BAAB0  4B DD F6 AD */	bl mDemo_Request
lbl_805BAAB4:
/* 805BAAB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BAAB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BAABC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BAAC0  7C 08 03 A6 */	mtlr r0
/* 805BAAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 805BAAC8  4E 80 00 20 */	blr 
