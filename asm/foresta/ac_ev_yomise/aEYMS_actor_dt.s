lbl_80526240:
/* 80526240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526244  7C 08 02 A6 */	mflr r0
/* 80526248  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052624C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80526250  7C 9F 23 78 */	mr r31, r4
/* 80526254  38 80 00 04 */	li r4, 4
/* 80526258  93 C1 00 08 */	stw r30, 8(r1)
/* 8052625C  7C 7E 1B 78 */	mr r30, r3
/* 80526260  38 60 00 20 */	li r3, 0x20
/* 80526264  4B E7 78 9D */	bl mEv_check_status
/* 80526268  2C 03 00 00 */	cmpwi r3, 0
/* 8052626C  41 82 00 10 */	beq lbl_8052627C
/* 80526270  7F C4 F3 78 */	mr r4, r30
/* 80526274  38 60 00 20 */	li r3, 0x20
/* 80526278  4B E7 82 BD */	bl mEv_actor_dying_message
lbl_8052627C:
/* 8052627C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80526280  7F C3 F3 78 */	mr r3, r30
/* 80526284  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80526288  7F E4 FB 78 */	mr r4, r31
/* 8052628C  3C A5 00 02 */	addis r5, r5, 2
/* 80526290  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80526294  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80526298  7D 89 03 A6 */	mtctr r12
/* 8052629C  4E 80 04 21 */	bctrl 
/* 805262A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805262A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805262A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805262AC  7C 08 03 A6 */	mtlr r0
/* 805262B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805262B4  4E 80 00 20 */	blr 
