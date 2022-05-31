lbl_803CDB74:
/* 803CDB74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CDB78  7C 08 02 A6 */	mflr r0
/* 803CDB7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CDB80  39 61 00 20 */	addi r11, r1, 0x20
/* 803CDB84  4B CC D3 49 */	bl func_8009AECC
/* 803CDB88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CDB8C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803CDB90  3C 64 00 02 */	addis r3, r4, 2
/* 803CDB94  83 A3 61 3C */	lwz r29, 0x613c(r3)
/* 803CDB98  3F E4 00 01 */	addis r31, r4, 1
/* 803CDB9C  3B 83 61 20 */	addi r28, r3, 0x6120
/* 803CDBA0  7F A3 EB 78 */	mr r3, r29
/* 803CDBA4  3B FF 74 38 */	addi r31, r31, 0x7438
/* 803CDBA8  48 01 24 9D */	bl mPr_NullCheckPersonalID
/* 803CDBAC  2C 03 00 00 */	cmpwi r3, 0
/* 803CDBB0  40 82 00 E8 */	bne lbl_803CDC98
/* 803CDBB4  4B FE 5F 55 */	bl mLd_PlayerManKindCheck
/* 803CDBB8  2C 03 00 00 */	cmpwi r3, 0
/* 803CDBBC  40 82 00 DC */	bne lbl_803CDC98
/* 803CDBC0  3B 60 00 00 */	li r27, 0
lbl_803CDBC4:
/* 803CDBC4  7F E3 FB 78 */	mr r3, r31
/* 803CDBC8  4B FF D8 15 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803CDBCC  2C 03 00 00 */	cmpwi r3, 0
/* 803CDBD0  40 82 00 7C */	bne lbl_803CDC4C
/* 803CDBD4  7F A3 EB 78 */	mr r3, r29
/* 803CDBD8  38 9F 00 10 */	addi r4, r31, 0x10
/* 803CDBDC  38 A0 00 07 */	li r5, 7
/* 803CDBE0  4B FF E1 99 */	bl mNpc_GetAnimalMemoryIdx
/* 803CDBE4  2C 03 FF FF */	cmpwi r3, -1
/* 803CDBE8  41 82 00 64 */	beq lbl_803CDC4C
/* 803CDBEC  1C 63 01 38 */	mulli r3, r3, 0x138
/* 803CDBF0  3B C3 00 10 */	addi r30, r3, 0x10
/* 803CDBF4  7F DF F2 14 */	add r30, r31, r30
/* 803CDBF8  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CDBFC  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 803CDC00  41 82 00 4C */	beq lbl_803CDC4C
/* 803CDC04  7F 84 E3 78 */	mr r4, r28
/* 803CDC08  38 7E 01 30 */	addi r3, r30, 0x130
/* 803CDC0C  4B FF FF 21 */	bl mNpc_CheckLetterTime
/* 803CDC10  2C 03 00 01 */	cmpwi r3, 1
/* 803CDC14  40 82 00 38 */	bne lbl_803CDC4C
/* 803CDC18  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CDC1C  7F A3 EB 78 */	mr r3, r29
/* 803CDC20  7F E4 FB 78 */	mr r4, r31
/* 803CDC24  38 A0 00 00 */	li r5, 0
/* 803CDC28  54 06 D7 FE */	rlwinm r6, r0, 0x1a, 0x1f, 0x1f
/* 803CDC2C  38 E0 00 00 */	li r7, 0
/* 803CDC30  4B FF FE 69 */	bl mNpc_SendRemailPostOffice
/* 803CDC34  2C 03 00 01 */	cmpwi r3, 1
/* 803CDC38  40 82 00 24 */	bne lbl_803CDC5C
/* 803CDC3C  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CDC40  38 60 00 00 */	li r3, 0
/* 803CDC44  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 803CDC48  98 1E 00 31 */	stb r0, 0x31(r30)
lbl_803CDC4C:
/* 803CDC4C  3B 7B 00 01 */	addi r27, r27, 1
/* 803CDC50  3B FF 09 88 */	addi r31, r31, 0x988
/* 803CDC54  2C 1B 00 0F */	cmpwi r27, 0xf
/* 803CDC58  41 80 FF 6C */	blt lbl_803CDBC4
lbl_803CDC5C:
/* 803CDC5C  3B DD 10 DC */	addi r30, r29, 0x10dc
/* 803CDC60  88 DD 10 F0 */	lbz r6, 0x10f0(r29)
/* 803CDC64  54 C0 06 7E */	clrlwi r0, r6, 0x19
/* 803CDC68  28 00 00 7F */	cmplwi r0, 0x7f
/* 803CDC6C  41 82 00 2C */	beq lbl_803CDC98
/* 803CDC70  7F A3 EB 78 */	mr r3, r29
/* 803CDC74  7F E4 FB 78 */	mr r4, r31
/* 803CDC78  7F C5 F3 78 */	mr r5, r30
/* 803CDC7C  54 C6 CF FE */	rlwinm r6, r6, 0x19, 0x1f, 0x1f
/* 803CDC80  38 E0 00 01 */	li r7, 1
/* 803CDC84  4B FF FE 15 */	bl mNpc_SendRemailPostOffice
/* 803CDC88  2C 03 00 01 */	cmpwi r3, 1
/* 803CDC8C  40 82 00 0C */	bne lbl_803CDC98
/* 803CDC90  7F C3 F3 78 */	mr r3, r30
/* 803CDC94  4B FF F7 BD */	bl mNpc_ClearRemail
lbl_803CDC98:
/* 803CDC98  39 61 00 20 */	addi r11, r1, 0x20
/* 803CDC9C  4B CC D2 7D */	bl func_8009AF18
/* 803CDCA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CDCA4  7C 08 03 A6 */	mtlr r0
/* 803CDCA8  38 21 00 20 */	addi r1, r1, 0x20
/* 803CDCAC  4E 80 00 20 */	blr 
