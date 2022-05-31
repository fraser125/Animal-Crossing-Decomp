lbl_803FD880:
/* 803FD880  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FD884  7C 08 02 A6 */	mflr r0
/* 803FD888  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FD88C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FD890  4B C9 D6 41 */	bl func_8009AED0
/* 803FD894  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 803FD898  3C E0 00 02 */	lis r7, 0x0002 /* 0x00026000@ha */
/* 803FD89C  7C 9C 23 78 */	mr r28, r4
/* 803FD8A0  7C BF 2B 78 */	mr r31, r5
/* 803FD8A4  7C DD 33 78 */	mr r29, r6
/* 803FD8A8  7F C3 F3 78 */	mr r3, r30
/* 803FD8AC  38 87 60 00 */	addi r4, r7, 0x6000 /* 0x00026000@l */
/* 803FD8B0  4B C5 F7 B9 */	bl bzero
/* 803FD8B4  3C 80 80 66 */	lis r4, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FD8B8  7F C3 F3 78 */	mr r3, r30
/* 803FD8BC  38 A4 E7 08 */	addi r5, r4, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FD8C0  7F E7 FB 78 */	mr r7, r31
/* 803FD8C4  80 85 00 00 */	lwz r4, 0(r5)
/* 803FD8C8  39 1C 00 74 */	addi r8, r28, 0x74
/* 803FD8CC  80 A5 00 08 */	lwz r5, 8(r5)
/* 803FD8D0  38 C0 00 00 */	li r6, 0
/* 803FD8D4  4B FF B2 45 */	bl mCD_read_fg
/* 803FD8D8  2C 03 00 01 */	cmpwi r3, 1
/* 803FD8DC  40 82 00 A8 */	bne lbl_803FD984
/* 803FD8E0  3C 60 80 66 */	lis r3, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 803FD8E4  3B DE 14 60 */	addi r30, r30, 0x1460
/* 803FD8E8  3B E3 E7 74 */	addi r31, r3, l_aram_real_size_32_table@l /* 0x8065E774@l */
/* 803FD8EC  80 9F 00 04 */	lwz r4, 4(r31)
/* 803FD8F0  7F C3 F3 78 */	mr r3, r30
/* 803FD8F4  4B FA EC 09 */	bl mFRm_ReturnCheckSum
/* 803FD8F8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FD8FC  40 82 00 14 */	bne lbl_803FD910
/* 803FD900  80 9F 00 04 */	lwz r4, 4(r31)
/* 803FD904  7F C3 F3 78 */	mr r3, r30
/* 803FD908  38 A0 00 01 */	li r5, 1
/* 803FD90C  4B FF C6 D1 */	bl mCD_save_data_main_to_aram
lbl_803FD910:
/* 803FD910  80 1F 00 04 */	lwz r0, 4(r31)
/* 803FD914  3C 60 80 66 */	lis r3, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 803FD918  80 83 E7 74 */	lwz r4, l_aram_real_size_32_table@l(r3)  /* 0x8065E774@l */
/* 803FD91C  7F DE 02 14 */	add r30, r30, r0
/* 803FD920  7F C3 F3 78 */	mr r3, r30
/* 803FD924  4B FA EB D9 */	bl mFRm_ReturnCheckSum
/* 803FD928  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FD92C  40 82 00 1C */	bne lbl_803FD948
/* 803FD930  3C 80 80 66 */	lis r4, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 803FD934  7F C3 F3 78 */	mr r3, r30
/* 803FD938  38 84 E7 74 */	addi r4, r4, l_aram_real_size_32_table@l /* 0x8065E774@l */
/* 803FD93C  38 A0 00 00 */	li r5, 0
/* 803FD940  80 84 00 00 */	lwz r4, 0(r4)
/* 803FD944  4B FF C6 99 */	bl mCD_save_data_main_to_aram
lbl_803FD948:
/* 803FD948  3C 60 80 66 */	lis r3, l_aram_real_size_32_table@ha /* 0x8065E774@ha */
/* 803FD94C  2C 1D 00 00 */	cmpwi r29, 0
/* 803FD950  3B E3 E7 74 */	addi r31, r3, l_aram_real_size_32_table@l /* 0x8065E774@l */
/* 803FD954  80 1F 00 00 */	lwz r0, 0(r31)
/* 803FD958  7F DE 02 14 */	add r30, r30, r0
/* 803FD95C  41 82 00 28 */	beq lbl_803FD984
/* 803FD960  80 9F 00 08 */	lwz r4, 8(r31)
/* 803FD964  7F C3 F3 78 */	mr r3, r30
/* 803FD968  4B FA EB 95 */	bl mFRm_ReturnCheckSum
/* 803FD96C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FD970  40 82 00 14 */	bne lbl_803FD984
/* 803FD974  80 9F 00 08 */	lwz r4, 8(r31)
/* 803FD978  7F C3 F3 78 */	mr r3, r30
/* 803FD97C  38 A0 00 02 */	li r5, 2
/* 803FD980  4B FF C6 5D */	bl mCD_save_data_main_to_aram
lbl_803FD984:
/* 803FD984  39 61 00 20 */	addi r11, r1, 0x20
/* 803FD988  4B C9 D5 95 */	bl func_8009AF1C
/* 803FD98C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FD990  7C 08 03 A6 */	mtlr r0
/* 803FD994  38 21 00 20 */	addi r1, r1, 0x20
/* 803FD998  4E 80 00 20 */	blr 
