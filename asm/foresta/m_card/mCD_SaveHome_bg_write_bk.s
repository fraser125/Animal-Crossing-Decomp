lbl_803FCFF4:
/* 803FCFF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FCFF8  7C 08 02 A6 */	mflr r0
/* 803FCFFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FD000  39 61 00 30 */	addi r11, r1, 0x30
/* 803FD004  4B C9 DE C1 */	bl func_8009AEC4
/* 803FD008  7C 7C 1B 78 */	mr r28, r3
/* 803FD00C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FD010  80 1C 01 9C */	lwz r0, 0x19c(r28)
/* 803FD014  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FD018  3C A0 80 66 */	lis r5, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FD01C  80 DC 00 0C */	lwz r6, 0xc(r28)
/* 803FD020  3B C5 E7 08 */	addi r30, r5, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FD024  3C 63 00 02 */	addis r3, r3, 2
/* 803FD028  2C 00 00 01 */	cmpwi r0, 1
/* 803FD02C  83 7E 00 18 */	lwz r27, 0x18(r30)
/* 803FD030  83 5C 00 00 */	lwz r26, 0(r28)
/* 803FD034  7C 9D 23 78 */	mr r29, r4
/* 803FD038  83 E3 61 3C */	lwz r31, 0x613c(r3)
/* 803FD03C  7C D9 33 78 */	mr r25, r6
/* 803FD040  40 82 00 10 */	bne lbl_803FD050
/* 803FD044  3C 60 80 66 */	lis r3, l_mCD_land_file_name_dummy@ha /* 0x8065E6A8@ha */
/* 803FD048  38 03 E6 A8 */	addi r0, r3, l_mCD_land_file_name_dummy@l /* 0x8065E6A8@l */
/* 803FD04C  7C 1B 03 78 */	mr r27, r0
lbl_803FD050:
/* 803FD050  28 06 00 00 */	cmplwi r6, 0
/* 803FD054  41 82 00 DC */	beq lbl_803FD130
/* 803FD058  2C 1A FF FF */	cmpwi r26, -1
/* 803FD05C  41 82 00 D4 */	beq lbl_803FD130
/* 803FD060  38 00 00 02 */	li r0, 2
/* 803FD064  90 1C 00 04 */	stw r0, 4(r28)
/* 803FD068  80 7C 00 04 */	lwz r3, 4(r28)
/* 803FD06C  4B FF D3 A5 */	bl mCD_get_offset
/* 803FD070  1C 9A 00 94 */	mulli r4, r26, 0x94
/* 803FD074  7C 60 1B 78 */	mr r0, r3
/* 803FD078  7F 23 CB 78 */	mr r3, r25
/* 803FD07C  80 BC 00 08 */	lwz r5, 8(r28)
/* 803FD080  80 DE 00 1C */	lwz r6, 0x1c(r30)
/* 803FD084  7C 07 03 78 */	mr r7, r0
/* 803FD088  3B 24 00 54 */	addi r25, r4, 0x54
/* 803FD08C  7F 64 DB 78 */	mr r4, r27
/* 803FD090  7F 3C CA 14 */	add r25, r28, r25
/* 803FD094  7F 48 D3 78 */	mr r8, r26
/* 803FD098  39 39 00 74 */	addi r9, r25, 0x74
/* 803FD09C  4B FF B7 4D */	bl mCD_write_comp_bg
/* 803FD0A0  7C 60 1B 78 */	mr r0, r3
/* 803FD0A4  80 79 00 74 */	lwz r3, 0x74(r25)
/* 803FD0A8  7C 1E 03 78 */	mr r30, r0
/* 803FD0AC  4B FF D2 09 */	bl mCD_TransErrorCode
/* 803FD0B0  2C 1E 00 01 */	cmpwi r30, 1
/* 803FD0B4  90 79 00 78 */	stw r3, 0x78(r25)
/* 803FD0B8  40 82 00 68 */	bne lbl_803FD120
/* 803FD0BC  80 1D 00 04 */	lwz r0, 4(r29)
/* 803FD0C0  2C 00 00 01 */	cmpwi r0, 1
/* 803FD0C4  40 82 00 30 */	bne lbl_803FD0F4
/* 803FD0C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FD0CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FD0D0  3C 63 00 03 */	addis r3, r3, 3
/* 803FD0D4  88 03 85 C0 */	lbz r0, -0x7a40(r3)
/* 803FD0D8  2C 00 00 01 */	cmpwi r0, 1
/* 803FD0DC  40 82 00 2C */	bne lbl_803FD108
/* 803FD0E0  28 1F 00 00 */	cmplwi r31, 0
/* 803FD0E4  41 82 00 24 */	beq lbl_803FD108
/* 803FD0E8  38 00 00 01 */	li r0, 1
/* 803FD0EC  98 1F 10 86 */	stb r0, 0x1086(r31)
/* 803FD0F0  48 00 00 18 */	b lbl_803FD108
lbl_803FD0F4:
/* 803FD0F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FD0F8  38 00 00 00 */	li r0, 0
/* 803FD0FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FD100  3C 63 00 03 */	addis r3, r3, 3
/* 803FD104  98 03 85 C0 */	stb r0, -0x7a40(r3)
lbl_803FD108:
/* 803FD108  38 00 00 02 */	li r0, 2
/* 803FD10C  90 1C 00 04 */	stw r0, 4(r28)
/* 803FD110  80 7D 00 00 */	lwz r3, 0(r29)
/* 803FD114  38 03 00 01 */	addi r0, r3, 1
/* 803FD118  90 1D 00 00 */	stw r0, 0(r29)
/* 803FD11C  48 00 00 18 */	b lbl_803FD134
lbl_803FD120:
/* 803FD120  2C 1E 00 00 */	cmpwi r30, 0
/* 803FD124  41 82 00 10 */	beq lbl_803FD134
/* 803FD128  3B C0 FF FF */	li r30, -1
/* 803FD12C  48 00 00 08 */	b lbl_803FD134
lbl_803FD130:
/* 803FD130  3B C0 FF FF */	li r30, -1
lbl_803FD134:
/* 803FD134  7F C3 F3 78 */	mr r3, r30
/* 803FD138  39 61 00 30 */	addi r11, r1, 0x30
/* 803FD13C  4B C9 DD D5 */	bl func_8009AF10
/* 803FD140  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FD144  7C 08 03 A6 */	mtlr r0
/* 803FD148  38 21 00 30 */	addi r1, r1, 0x30
/* 803FD14C  4E 80 00 20 */	blr 
