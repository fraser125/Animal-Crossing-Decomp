lbl_805BDD34:
/* 805BDD34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BDD38  7C 08 02 A6 */	mflr r0
/* 805BDD3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BDD40  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805BDD44  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805BDD48  7C 7E 1B 78 */	mr r30, r3
/* 805BDD4C  7C 83 23 78 */	mr r3, r4
/* 805BDD50  4B E1 B8 F1 */	bl get_player_actor_withoutCheck
/* 805BDD54  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805BDD58  7C 7F 1B 78 */	mr r31, r3
/* 805BDD5C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805BDD60  38 61 00 14 */	addi r3, r1, 0x14
/* 805BDD64  38 81 00 10 */	addi r4, r1, 0x10
/* 805BDD68  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805BDD6C  38 A1 00 24 */	addi r5, r1, 0x24
/* 805BDD70  90 01 00 28 */	stw r0, 0x28(r1)
/* 805BDD74  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805BDD78  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805BDD7C  4B DE 79 E5 */	bl mFI_Wpos2BlockNum
/* 805BDD80  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 805BDD84  38 61 00 0C */	addi r3, r1, 0xc
/* 805BDD88  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805BDD8C  38 81 00 08 */	addi r4, r1, 8
/* 805BDD90  38 A1 00 18 */	addi r5, r1, 0x18
/* 805BDD94  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805BDD98  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805BDD9C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805BDDA0  90 01 00 20 */	stw r0, 0x20(r1)
/* 805BDDA4  4B DE 79 BD */	bl mFI_Wpos2BlockNum
/* 805BDDA8  7F E4 FB 78 */	mr r4, r31
/* 805BDDAC  38 60 00 01 */	li r3, 1
/* 805BDDB0  4B DD C4 B5 */	bl mDemo_Check
/* 805BDDB4  2C 03 00 00 */	cmpwi r3, 0
/* 805BDDB8  40 82 00 54 */	bne lbl_805BDE0C
/* 805BDDBC  7F E4 FB 78 */	mr r4, r31
/* 805BDDC0  38 60 00 05 */	li r3, 5
/* 805BDDC4  4B DD C4 A1 */	bl mDemo_Check
/* 805BDDC8  2C 03 00 00 */	cmpwi r3, 0
/* 805BDDCC  40 82 00 40 */	bne lbl_805BDE0C
/* 805BDDD0  7F E4 FB 78 */	mr r4, r31
/* 805BDDD4  38 60 00 10 */	li r3, 0x10
/* 805BDDD8  4B DD C4 8D */	bl mDemo_Check
/* 805BDDDC  2C 03 00 00 */	cmpwi r3, 0
/* 805BDDE0  40 82 00 2C */	bne lbl_805BDE0C
/* 805BDDE4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805BDDE8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805BDDEC  7C 03 00 00 */	cmpw r3, r0
/* 805BDDF0  40 82 00 14 */	bne lbl_805BDE04
/* 805BDDF4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805BDDF8  80 01 00 08 */	lwz r0, 8(r1)
/* 805BDDFC  7C 03 00 00 */	cmpw r3, r0
/* 805BDE00  41 82 00 0C */	beq lbl_805BDE0C
lbl_805BDE04:
/* 805BDE04  7F C3 F3 78 */	mr r3, r30
/* 805BDE08  4B DB 66 39 */	bl Actor_delete
lbl_805BDE0C:
/* 805BDE0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BDE10  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805BDE14  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805BDE18  7C 08 03 A6 */	mtlr r0
/* 805BDE1C  38 21 00 40 */	addi r1, r1, 0x40
/* 805BDE20  4E 80 00 20 */	blr 
