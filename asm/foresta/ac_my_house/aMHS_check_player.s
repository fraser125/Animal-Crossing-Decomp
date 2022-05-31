lbl_805B54D4:
/* 805B54D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B54D8  7C 08 02 A6 */	mflr r0
/* 805B54DC  3C A0 80 65 */	lis r5, lit_457@ha /* 0x8064A970@ha */
/* 805B54E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B54E4  C0 05 A9 70 */	lfs f0, lit_457@l(r5)  /* 0x8064A970@l */
/* 805B54E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B54EC  7C 9F 23 78 */	mr r31, r4
/* 805B54F0  93 C1 00 08 */	stw r30, 8(r1)
/* 805B54F4  7C 7E 1B 78 */	mr r30, r3
/* 805B54F8  C0 23 02 D0 */	lfs f1, 0x2d0(r3)
/* 805B54FC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805B5500  41 82 00 54 */	beq lbl_805B5554
/* 805B5504  3C 60 80 65 */	lis r3, lit_601@ha /* 0x8064A980@ha */
/* 805B5508  C0 03 A9 80 */	lfs f0, lit_601@l(r3)  /* 0x8064A980@l */
/* 805B550C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805B5510  40 82 00 3C */	bne lbl_805B554C
/* 805B5514  7F C4 F3 78 */	mr r4, r30
/* 805B5518  38 60 00 06 */	li r3, 6
/* 805B551C  4B DE 4D 49 */	bl mDemo_Check
/* 805B5520  2C 03 00 00 */	cmpwi r3, 0
/* 805B5524  41 82 00 0C */	beq lbl_805B5530
/* 805B5528  38 60 00 01 */	li r3, 1
/* 805B552C  48 00 00 BC */	b lbl_805B55E8
lbl_805B5530:
/* 805B5530  3C 60 80 5B */	lis r3, aMHS_set_demo_info_save@ha /* 0x805B54AC@ha */
/* 805B5534  7F C4 F3 78 */	mr r4, r30
/* 805B5538  38 A3 54 AC */	addi r5, r3, aMHS_set_demo_info_save@l /* 0x805B54AC@l */
/* 805B553C  38 60 00 06 */	li r3, 6
/* 805B5540  4B DE 4C 1D */	bl mDemo_Request
/* 805B5544  38 60 00 00 */	li r3, 0
/* 805B5548  48 00 00 A0 */	b lbl_805B55E8
lbl_805B554C:
/* 805B554C  38 60 00 04 */	li r3, 4
/* 805B5550  48 00 00 98 */	b lbl_805B55E8
lbl_805B5554:
/* 805B5554  4B FF FD E5 */	bl aMHS_check_player_in_intro_demo
/* 805B5558  2C 03 00 02 */	cmpwi r3, 2
/* 805B555C  41 82 00 88 */	beq lbl_805B55E4
/* 805B5560  2C 03 00 01 */	cmpwi r3, 1
/* 805B5564  40 82 00 3C */	bne lbl_805B55A0
/* 805B5568  7F C4 F3 78 */	mr r4, r30
/* 805B556C  38 60 00 06 */	li r3, 6
/* 805B5570  4B DE 4C F5 */	bl mDemo_Check
/* 805B5574  2C 03 00 00 */	cmpwi r3, 0
/* 805B5578  41 82 00 0C */	beq lbl_805B5584
/* 805B557C  38 60 00 01 */	li r3, 1
/* 805B5580  48 00 00 68 */	b lbl_805B55E8
lbl_805B5584:
/* 805B5584  3C 60 80 5B */	lis r3, aMHS_set_demo_info@ha /* 0x805B5468@ha */
/* 805B5588  7F C4 F3 78 */	mr r4, r30
/* 805B558C  38 A3 54 68 */	addi r5, r3, aMHS_set_demo_info@l /* 0x805B5468@l */
/* 805B5590  38 60 00 06 */	li r3, 6
/* 805B5594  4B DE 4B C9 */	bl mDemo_Request
/* 805B5598  38 60 00 00 */	li r3, 0
/* 805B559C  48 00 00 4C */	b lbl_805B55E8
lbl_805B55A0:
/* 805B55A0  7F C4 F3 78 */	mr r4, r30
/* 805B55A4  38 60 00 03 */	li r3, 3
/* 805B55A8  4B DE 4C BD */	bl mDemo_Check
/* 805B55AC  2C 03 00 00 */	cmpwi r3, 0
/* 805B55B0  41 82 00 0C */	beq lbl_805B55BC
/* 805B55B4  38 60 00 01 */	li r3, 1
/* 805B55B8  48 00 00 30 */	b lbl_805B55E8
lbl_805B55BC:
/* 805B55BC  7F C3 F3 78 */	mr r3, r30
/* 805B55C0  7F E4 FB 78 */	mr r4, r31
/* 805B55C4  4B FF FC 4D */	bl aMHS_check_player_sub
/* 805B55C8  2C 03 00 00 */	cmpwi r3, 0
/* 805B55CC  41 82 00 18 */	beq lbl_805B55E4
/* 805B55D0  3C 60 80 5B */	lis r3, aMHS_set_demo_info@ha /* 0x805B5468@ha */
/* 805B55D4  7F C4 F3 78 */	mr r4, r30
/* 805B55D8  38 A3 54 68 */	addi r5, r3, aMHS_set_demo_info@l /* 0x805B5468@l */
/* 805B55DC  38 60 00 03 */	li r3, 3
/* 805B55E0  4B DE 4B 7D */	bl mDemo_Request
lbl_805B55E4:
/* 805B55E4  38 60 00 00 */	li r3, 0
lbl_805B55E8:
/* 805B55E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B55EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B55F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B55F4  7C 08 03 A6 */	mtlr r0
/* 805B55F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B55FC  4E 80 00 20 */	blr 
