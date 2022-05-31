lbl_805E5528:
/* 805E5528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E552C  7C 08 02 A6 */	mflr r0
/* 805E5530  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E5534  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E5538  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E553C  3C 63 00 02 */	addis r3, r3, 2
/* 805E5540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E5544  93 C1 00 08 */	stw r30, 8(r1)
/* 805E5548  3B C0 00 0A */	li r30, 0xa
/* 805E554C  80 63 61 40 */	lwz r3, 0x6140(r3)
/* 805E5550  3B E3 25 D4 */	addi r31, r3, 0x25d4
lbl_805E5554:
/* 805E5554  3B FF FE D6 */	addi r31, r31, -298
/* 805E5558  3B DE FF FF */	addi r30, r30, -1
/* 805E555C  7F E3 FB 78 */	mr r3, r31
/* 805E5560  4B DD 72 41 */	bl mMl_check_not_used_mail
/* 805E5564  2C 03 00 00 */	cmpwi r3, 0
/* 805E5568  41 82 00 0C */	beq lbl_805E5574
/* 805E556C  2C 1E 00 00 */	cmpwi r30, 0
/* 805E5570  40 82 FF E4 */	bne lbl_805E5554
lbl_805E5574:
/* 805E5574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E5578  7F C3 F3 78 */	mr r3, r30
/* 805E557C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E5580  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E5584  7C 08 03 A6 */	mtlr r0
/* 805E5588  38 21 00 10 */	addi r1, r1, 0x10
/* 805E558C  4E 80 00 20 */	blr 
