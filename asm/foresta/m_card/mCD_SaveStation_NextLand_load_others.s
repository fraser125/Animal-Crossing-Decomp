lbl_80401624:
/* 80401624  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80401628  7C 08 02 A6 */	mflr r0
/* 8040162C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80401630  39 61 00 20 */	addi r11, r1, 0x20
/* 80401634  4B C9 98 99 */	bl func_8009AECC
/* 80401638  7C 7C 1B 78 */	mr r28, r3
/* 8040163C  3C 60 81 1A */	lis r3, l_keepMail@ha /* 0x8119CCB8@ha */
/* 80401640  83 FC 00 0C */	lwz r31, 0xc(r28)
/* 80401644  38 63 CC B8 */	addi r3, r3, l_keepMail@l /* 0x8119CCB8@l */
/* 80401648  83 DC 00 00 */	lwz r30, 0(r28)
/* 8040164C  7C 9D 23 78 */	mr r29, r4
/* 80401650  4B FF 8A 3D */	bl mCD_set_init_mail_data
/* 80401654  3C 60 81 1B */	lis r3, l_keepOriginal@ha /* 0x811A8CB8@ha */
/* 80401658  38 63 8C B8 */	addi r3, r3, l_keepOriginal@l /* 0x811A8CB8@l */
/* 8040165C  4B FF 8A AD */	bl mCD_set_init_original_data
/* 80401660  3C 60 81 1B */	lis r3, l_keepDiary@ha /* 0x811B6CB8@ha */
/* 80401664  38 63 6C B8 */	addi r3, r3, l_keepDiary@l /* 0x811B6CB8@l */
/* 80401668  4B FF 8B 2D */	bl mCD_set_init_diary_data
/* 8040166C  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80401670  28 00 00 00 */	cmplwi r0, 0
/* 80401674  41 82 00 F4 */	beq lbl_80401768
/* 80401678  2C 1E FF FF */	cmpwi r30, -1
/* 8040167C  41 82 00 EC */	beq lbl_80401768
/* 80401680  3C 80 00 02 */	lis r4, 0x0002 /* 0x00026000@ha */
/* 80401684  7F E3 FB 78 */	mr r3, r31
/* 80401688  38 84 60 00 */	addi r4, r4, 0x6000 /* 0x00026000@l */
/* 8040168C  4B C5 B9 DD */	bl bzero
/* 80401690  1C 9E 00 94 */	mulli r4, r30, 0x94
/* 80401694  3C A0 80 66 */	lis r5, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 80401698  7F E3 FB 78 */	mr r3, r31
/* 8040169C  7F C7 F3 78 */	mr r7, r30
/* 804016A0  39 04 00 C8 */	addi r8, r4, 0xc8
/* 804016A4  84 85 E7 08 */	lwzu r4, l_mcd_file_table@l(r5)  /* 0x8065E708@l */
/* 804016A8  7D 1C 42 14 */	add r8, r28, r8
/* 804016AC  38 C0 00 00 */	li r6, 0
/* 804016B0  80 A5 00 08 */	lwz r5, 8(r5)
/* 804016B4  4B FF 74 65 */	bl mCD_read_fg
/* 804016B8  2C 03 00 01 */	cmpwi r3, 1
/* 804016BC  40 82 00 AC */	bne lbl_80401768
/* 804016C0  3C 60 80 66 */	lis r3, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 804016C4  3B FF 14 60 */	addi r31, r31, 0x1460
/* 804016C8  3B 63 E7 74 */	addi r27, r3, l_aram_real_size_32_table@l /* 0x8065E774@l */
/* 804016CC  80 9B 00 04 */	lwz r4, 4(r27)
/* 804016D0  7F E3 FB 78 */	mr r3, r31
/* 804016D4  4B FA AE 29 */	bl mFRm_ReturnCheckSum
/* 804016D8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 804016DC  40 82 00 18 */	bne lbl_804016F4
/* 804016E0  3C 60 81 1A */	lis r3, l_keepMail@ha /* 0x8119CCB8@ha */
/* 804016E4  80 BB 00 04 */	lwz r5, 4(r27)
/* 804016E8  38 83 CC B8 */	addi r4, r3, l_keepMail@l /* 0x8119CCB8@l */
/* 804016EC  7F E3 FB 78 */	mr r3, r31
/* 804016F0  4B C5 B9 2D */	bl func_8005D01C
lbl_804016F4:
/* 804016F4  80 1B 00 04 */	lwz r0, 4(r27)
/* 804016F8  3C 60 80 66 */	lis r3, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 804016FC  80 83 E7 74 */	lwz r4, l_aram_real_size_32_table@l(r3)  /* 0x8065E774@l */
/* 80401700  7F FF 02 14 */	add r31, r31, r0
/* 80401704  7F E3 FB 78 */	mr r3, r31
/* 80401708  4B FA AD F5 */	bl mFRm_ReturnCheckSum
/* 8040170C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80401710  40 82 00 20 */	bne lbl_80401730
/* 80401714  3C 60 80 66 */	lis r3, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 80401718  3C 80 81 1B */	lis r4, l_keepDiary@ha /* 0x811B6CB8@ha */
/* 8040171C  38 A3 E7 74 */	addi r5, r3, l_aram_real_size_32_table@l /* 0x8065E774@l */
/* 80401720  80 A5 00 00 */	lwz r5, 0(r5)
/* 80401724  7F E3 FB 78 */	mr r3, r31
/* 80401728  38 84 6C B8 */	addi r4, r4, l_keepDiary@l /* 0x811B6CB8@l */
/* 8040172C  4B C5 B8 F1 */	bl func_8005D01C
lbl_80401730:
/* 80401730  3C 60 80 66 */	lis r3, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 80401734  3B 63 E7 74 */	addi r27, r3, l_aram_real_size_32_table@l /* 0x8065E774@l */
/* 80401738  80 1B 00 00 */	lwz r0, 0(r27)
/* 8040173C  80 9B 00 08 */	lwz r4, 8(r27)
/* 80401740  7F FF 02 14 */	add r31, r31, r0
/* 80401744  7F E3 FB 78 */	mr r3, r31
/* 80401748  4B FA AD B5 */	bl mFRm_ReturnCheckSum
/* 8040174C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80401750  40 82 00 18 */	bne lbl_80401768
/* 80401754  3C 60 81 1B */	lis r3, l_keepDiary@ha /* 0x811B6CB8@ha */
/* 80401758  80 BB 00 08 */	lwz r5, 8(r27)
/* 8040175C  38 83 6C B8 */	addi r4, r3, l_keepDiary@l /* 0x811B6CB8@l */
/* 80401760  7F E3 FB 78 */	mr r3, r31
/* 80401764  4B C5 B8 B9 */	bl func_8005D01C
lbl_80401768:
/* 80401768  7F C0 F0 F8 */	nor r0, r30, r30
/* 8040176C  38 60 00 01 */	li r3, 1
/* 80401770  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80401774  90 1C 00 00 */	stw r0, 0(r28)
/* 80401778  80 9D 00 00 */	lwz r4, 0(r29)
/* 8040177C  38 04 00 01 */	addi r0, r4, 1
/* 80401780  90 1D 00 00 */	stw r0, 0(r29)
/* 80401784  39 61 00 20 */	addi r11, r1, 0x20
/* 80401788  4B C9 97 91 */	bl func_8009AF18
/* 8040178C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80401790  7C 08 03 A6 */	mtlr r0
/* 80401794  38 21 00 20 */	addi r1, r1, 0x20
/* 80401798  4E 80 00 20 */	blr 
