lbl_80375558:
/* 80375558  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8037555C  7C 08 02 A6 */	mflr r0
/* 80375560  90 01 00 94 */	stw r0, 0x94(r1)
/* 80375564  39 61 00 90 */	addi r11, r1, 0x90
/* 80375568  4B D2 59 69 */	bl func_8009AED0
/* 8037556C  54 E0 A7 3E */	rlwinm r0, r7, 0x14, 0x1c, 0x1f
/* 80375570  7C FE 3B 78 */	mr r30, r7
/* 80375574  2C 00 00 0D */	cmpwi r0, 0xd
/* 80375578  7C 7C 1B 78 */	mr r28, r3
/* 8037557C  7C BD 2B 78 */	mr r29, r5
/* 80375580  40 80 00 10 */	bge lbl_80375590
/* 80375584  2C 00 00 05 */	cmpwi r0, 5
/* 80375588  41 82 00 58 */	beq lbl_803755E0
/* 8037558C  48 00 00 78 */	b lbl_80375604
lbl_80375590:
/* 80375590  2C 00 00 0F */	cmpwi r0, 0xf
/* 80375594  40 80 00 70 */	bge lbl_80375604
/* 80375598  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8037559C  80 64 00 0C */	lwz r3, 0xc(r4)
/* 803755A0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803755A4  7C C4 33 78 */	mr r4, r6
/* 803755A8  3F E5 00 02 */	addis r31, r5, 2
/* 803755AC  38 A0 00 01 */	li r5, 1
/* 803755B0  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 803755B4  81 86 00 0C */	lwz r12, 0xc(r6)
/* 803755B8  7D 89 03 A6 */	mtctr r12
/* 803755BC  4E 80 04 21 */	bctrl 
/* 803755C0  90 7C 00 00 */	stw r3, 0(r28)
/* 803755C4  7F C4 F3 78 */	mr r4, r30
/* 803755C8  38 61 00 08 */	addi r3, r1, 8
/* 803755CC  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 803755D0  81 85 00 14 */	lwz r12, 0x14(r5)
/* 803755D4  7D 89 03 A6 */	mtctr r12
/* 803755D8  4E 80 04 21 */	bctrl 
/* 803755DC  48 00 00 34 */	b lbl_80375610
lbl_803755E0:
/* 803755E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803755E4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803755E8  3C 63 00 02 */	addis r3, r3, 2
/* 803755EC  80 63 60 98 */	lwz r3, 0x6098(r3)
/* 803755F0  81 83 00 0C */	lwz r12, 0xc(r3)
/* 803755F4  7D 89 03 A6 */	mtctr r12
/* 803755F8  4E 80 04 21 */	bctrl 
/* 803755FC  90 7C 00 00 */	stw r3, 0(r28)
/* 80375600  48 00 00 10 */	b lbl_80375610
lbl_80375604:
/* 80375604  80 64 00 0C */	lwz r3, 0xc(r4)
/* 80375608  48 04 6E 55 */	bl zelda_malloc
/* 8037560C  90 7C 00 00 */	stw r3, 0(r28)
lbl_80375610:
/* 80375610  80 1C 00 00 */	lwz r0, 0(r28)
/* 80375614  28 00 00 00 */	cmplwi r0, 0
/* 80375618  40 82 00 18 */	bne lbl_80375630
/* 8037561C  7F A3 EB 78 */	mr r3, r29
/* 80375620  7F C4 F3 78 */	mr r4, r30
/* 80375624  4B FF FD F9 */	bl actor_free_check
/* 80375628  38 60 00 00 */	li r3, 0
/* 8037562C  48 00 00 08 */	b lbl_80375634
lbl_80375630:
/* 80375630  38 60 00 01 */	li r3, 1
lbl_80375634:
/* 80375634  39 61 00 90 */	addi r11, r1, 0x90
/* 80375638  4B D2 58 E5 */	bl func_8009AF1C
/* 8037563C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80375640  7C 08 03 A6 */	mtlr r0
/* 80375644  38 21 00 90 */	addi r1, r1, 0x90
/* 80375648  4E 80 00 20 */	blr 
