lbl_803C66E0:
/* 803C66E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803C66E4  7C 08 02 A6 */	mflr r0
/* 803C66E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 803C66EC  39 61 00 60 */	addi r11, r1, 0x60
/* 803C66F0  4B CD 47 B5 */	bl func_8009AEA4
/* 803C66F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C66F8  38 00 00 00 */	li r0, 0
/* 803C66FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803C6700  B0 01 00 08 */	sth r0, 8(r1)
/* 803C6704  3B E3 00 20 */	addi r31, r3, 0x20
/* 803C6708  38 61 00 0C */	addi r3, r1, 0xc
/* 803C670C  7F FE FB 78 */	mr r30, r31
/* 803C6710  3B 80 00 0F */	li r28, 0xf
/* 803C6714  38 80 00 10 */	li r4, 0x10
/* 803C6718  4B C9 69 51 */	bl bzero
/* 803C671C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C6720  3B 20 00 00 */	li r25, 0
/* 803C6724  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803C6728  3B 00 00 00 */	li r24, 0
/* 803C672C  3E 83 00 01 */	addis r20, r3, 1
/* 803C6730  3A 94 91 20 */	addi r20, r20, -28384
lbl_803C6734:
/* 803C6734  7F C3 F3 78 */	mr r3, r30
/* 803C6738  48 01 99 0D */	bl mPr_NullCheckPersonalID
/* 803C673C  2C 03 00 00 */	cmpwi r3, 0
/* 803C6740  40 82 01 5C */	bne lbl_803C689C
/* 803C6744  38 BE 00 18 */	addi r5, r30, 0x18
/* 803C6748  88 1E 00 18 */	lbz r0, 0x18(r30)
/* 803C674C  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 803C6750  28 00 00 01 */	cmplwi r0, 1
/* 803C6754  40 82 01 34 */	bne lbl_803C6888
/* 803C6758  3C 80 80 66 */	lis r4, remail_no_table@ha /* 0x8065A1F4@ha */
/* 803C675C  3C 60 80 66 */	lis r3, data_8065A180@ha /* 0x8065A180@ha */
/* 803C6760  3B 65 00 02 */	addi r27, r5, 2
/* 803C6764  3A A1 00 0C */	addi r21, r1, 0xc
/* 803C6768  3A 44 A1 F4 */	addi r18, r4, remail_no_table@l /* 0x8065A1F4@l */
/* 803C676C  3A 23 A1 80 */	addi r17, r3, data_8065A180@l /* 0x8065A180@l */
/* 803C6770  3B 40 00 00 */	li r26, 0
/* 803C6774  3A E0 00 00 */	li r23, 0
lbl_803C6778:
/* 803C6778  7F 63 DB 78 */	mr r3, r27
/* 803C677C  7F 44 D3 78 */	mr r4, r26
/* 803C6780  3B A0 00 00 */	li r29, 0
/* 803C6784  4B FF FC 29 */	bl mMsm_Idx2RemailKind
/* 803C6788  7C 76 1B 79 */	or. r22, r3, r3
/* 803C678C  40 81 00 F0 */	ble lbl_803C687C
/* 803C6790  2C 16 00 05 */	cmpwi r22, 5
/* 803C6794  40 80 00 E8 */	bge lbl_803C687C
/* 803C6798  7E 83 A3 78 */	mr r3, r20
/* 803C679C  38 80 00 08 */	li r4, 8
/* 803C67A0  4B FF A4 C5 */	bl mMsg_Get_Length_String
/* 803C67A4  7C 65 1B 78 */	mr r5, r3
/* 803C67A8  7E 84 A3 78 */	mr r4, r20
/* 803C67AC  38 60 00 00 */	li r3, 0
/* 803C67B0  4B FE B1 A9 */	bl mHandbill_Set_free_str
/* 803C67B4  3A 77 00 10 */	addi r19, r23, 0x10
/* 803C67B8  7C 9B 9A 2E */	lhzx r4, r27, r19
/* 803C67BC  28 04 00 00 */	cmplwi r4, 0
/* 803C67C0  41 82 00 30 */	beq lbl_803C67F0
/* 803C67C4  3C 60 81 17 */	lis r3, present_name@ha /* 0x8116AC64@ha */
/* 803C67C8  38 63 AC 64 */	addi r3, r3, present_name@l /* 0x8116AC64@l */
/* 803C67CC  4B FE F1 D9 */	bl mIN_copy_name_str
/* 803C67D0  3C 80 81 17 */	lis r4, present_name@ha /* 0x8116AC64@ha */
/* 803C67D4  38 60 00 01 */	li r3, 1
/* 803C67D8  38 84 AC 64 */	addi r4, r4, present_name@l /* 0x8116AC64@l */
/* 803C67DC  38 A0 00 10 */	li r5, 0x10
/* 803C67E0  4B FE B1 79 */	bl mHandbill_Set_free_str
/* 803C67E4  2C 16 00 02 */	cmpwi r22, 2
/* 803C67E8  41 82 00 08 */	beq lbl_803C67F0
/* 803C67EC  7F BB 9A 2E */	lhzx r29, r27, r19
lbl_803C67F0:
/* 803C67F0  56 C0 10 3A */	slwi r0, r22, 2
/* 803C67F4  7F C3 F3 78 */	mr r3, r30
/* 803C67F8  7C B2 02 14 */	add r5, r18, r0
/* 803C67FC  7F 24 CB 78 */	mr r4, r25
/* 803C6800  80 E5 FF FC */	lwz r7, -4(r5)
/* 803C6804  7F A5 EB 78 */	mr r5, r29
/* 803C6808  7E 28 8B 78 */	mr r8, r17
/* 803C680C  38 C0 20 18 */	li r6, 0x2018
/* 803C6810  39 20 00 01 */	li r9, 1
/* 803C6814  4B FF 67 E5 */	bl mMl_send_mail
/* 803C6818  2C 03 00 00 */	cmpwi r3, 0
/* 803C681C  41 82 00 3C */	beq lbl_803C6858
/* 803C6820  7F 63 DB 78 */	mr r3, r27
/* 803C6824  7F 44 D3 78 */	mr r4, r26
/* 803C6828  4B FF FD 15 */	bl mMsm_Idx2ClearRemailInfo
/* 803C682C  7C 75 C0 2E */	lwzx r3, r21, r24
/* 803C6830  38 03 00 01 */	addi r0, r3, 1
/* 803C6834  7C 15 C1 2E */	stwx r0, r21, r24
/* 803C6838  7C 15 C0 2E */	lwzx r0, r21, r24
/* 803C683C  2C 00 00 03 */	cmpwi r0, 3
/* 803C6840  41 80 00 2C */	blt lbl_803C686C
/* 803C6844  38 00 00 01 */	li r0, 1
/* 803C6848  7C 00 C8 30 */	slw r0, r0, r25
/* 803C684C  7F 80 00 78 */	andc r0, r28, r0
/* 803C6850  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 803C6854  48 00 00 28 */	b lbl_803C687C
lbl_803C6858:
/* 803C6858  38 00 00 01 */	li r0, 1
/* 803C685C  7C 00 C8 30 */	slw r0, r0, r25
/* 803C6860  7F 80 00 78 */	andc r0, r28, r0
/* 803C6864  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 803C6868  48 00 00 14 */	b lbl_803C687C
lbl_803C686C:
/* 803C686C  3B 5A 00 01 */	addi r26, r26, 1
/* 803C6870  3A F7 00 02 */	addi r23, r23, 2
/* 803C6874  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 803C6878  41 80 FF 00 */	blt lbl_803C6778
lbl_803C687C:
/* 803C687C  7F 63 DB 78 */	mr r3, r27
/* 803C6880  4B FF FC E5 */	bl mMsm_PushRemailInfo
/* 803C6884  48 00 00 28 */	b lbl_803C68AC
lbl_803C6888:
/* 803C6888  38 00 00 01 */	li r0, 1
/* 803C688C  7C 00 C8 30 */	slw r0, r0, r25
/* 803C6890  7F 80 00 78 */	andc r0, r28, r0
/* 803C6894  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 803C6898  48 00 00 14 */	b lbl_803C68AC
lbl_803C689C:
/* 803C689C  38 00 00 01 */	li r0, 1
/* 803C68A0  7C 00 C8 30 */	slw r0, r0, r25
/* 803C68A4  7F 80 00 78 */	andc r0, r28, r0
/* 803C68A8  54 1C 06 3E */	clrlwi r28, r0, 0x18
lbl_803C68AC:
/* 803C68AC  3B 39 00 01 */	addi r25, r25, 1
/* 803C68B0  3B 18 00 04 */	addi r24, r24, 4
/* 803C68B4  2C 19 00 04 */	cmpwi r25, 4
/* 803C68B8  3B DE 24 40 */	addi r30, r30, 0x2440
/* 803C68BC  41 80 FE 78 */	blt lbl_803C6734
/* 803C68C0  48 00 00 EC */	b lbl_803C69AC
lbl_803C68C4:
/* 803C68C4  7F F1 FB 78 */	mr r17, r31
/* 803C68C8  3A 40 00 00 */	li r18, 0
/* 803C68CC  3A 80 00 00 */	li r20, 0
lbl_803C68D0:
/* 803C68D0  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 803C68D4  7C 00 96 30 */	sraw r0, r0, r18
/* 803C68D8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803C68DC  2C 00 00 01 */	cmpwi r0, 1
/* 803C68E0  40 82 00 B8 */	bne lbl_803C6998
/* 803C68E4  88 11 00 18 */	lbz r0, 0x18(r17)
/* 803C68E8  3A 71 00 18 */	addi r19, r17, 0x18
/* 803C68EC  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 803C68F0  41 82 00 98 */	beq lbl_803C6988
/* 803C68F4  38 61 00 08 */	addi r3, r1, 8
/* 803C68F8  4B FF F9 ED */	bl mMsm_GetFossil
/* 803C68FC  A0 61 00 08 */	lhz r3, 8(r1)
/* 803C6900  4B FF FA 41 */	bl mMsm_GetFossilMailNo
/* 803C6904  3C 80 80 66 */	lis r4, data_8065A180@ha /* 0x8065A180@ha */
/* 803C6908  A0 A1 00 08 */	lhz r5, 8(r1)
/* 803C690C  7C 67 1B 78 */	mr r7, r3
/* 803C6910  7E 23 8B 78 */	mr r3, r17
/* 803C6914  39 04 A1 80 */	addi r8, r4, data_8065A180@l /* 0x8065A180@l */
/* 803C6918  7E 44 93 78 */	mr r4, r18
/* 803C691C  38 C0 20 18 */	li r6, 0x2018
/* 803C6920  39 20 00 01 */	li r9, 1
/* 803C6924  4B FF 66 D5 */	bl mMl_send_mail
/* 803C6928  2C 03 00 00 */	cmpwi r3, 0
/* 803C692C  41 82 00 48 */	beq lbl_803C6974
/* 803C6930  38 C1 00 0C */	addi r6, r1, 0xc
/* 803C6934  88 B3 00 00 */	lbz r5, 0(r19)
/* 803C6938  7C 66 A0 2E */	lwzx r3, r6, r20
/* 803C693C  54 A4 06 FE */	clrlwi r4, r5, 0x1b
/* 803C6940  38 03 00 01 */	addi r0, r3, 1
/* 803C6944  7C 06 A1 2E */	stwx r0, r6, r20
/* 803C6948  38 04 FF FF */	addi r0, r4, -1
/* 803C694C  50 05 06 FE */	rlwimi r5, r0, 0, 0x1b, 0x1f
/* 803C6950  7C 06 A0 2E */	lwzx r0, r6, r20
/* 803C6954  98 B3 00 00 */	stb r5, 0(r19)
/* 803C6958  2C 00 00 03 */	cmpwi r0, 3
/* 803C695C  41 80 00 3C */	blt lbl_803C6998
/* 803C6960  38 00 00 01 */	li r0, 1
/* 803C6964  7C 00 90 30 */	slw r0, r0, r18
/* 803C6968  7F 80 00 78 */	andc r0, r28, r0
/* 803C696C  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 803C6970  48 00 00 28 */	b lbl_803C6998
lbl_803C6974:
/* 803C6974  38 00 00 01 */	li r0, 1
/* 803C6978  7C 00 90 30 */	slw r0, r0, r18
/* 803C697C  7F 80 00 78 */	andc r0, r28, r0
/* 803C6980  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 803C6984  48 00 00 14 */	b lbl_803C6998
lbl_803C6988:
/* 803C6988  38 00 00 01 */	li r0, 1
/* 803C698C  7C 00 90 30 */	slw r0, r0, r18
/* 803C6990  7F 80 00 78 */	andc r0, r28, r0
/* 803C6994  54 1C 06 3E */	clrlwi r28, r0, 0x18
lbl_803C6998:
/* 803C6998  3A 52 00 01 */	addi r18, r18, 1
/* 803C699C  3A 94 00 04 */	addi r20, r20, 4
/* 803C69A0  2C 12 00 04 */	cmpwi r18, 4
/* 803C69A4  3A 31 24 40 */	addi r17, r17, 0x2440
/* 803C69A8  41 80 FF 28 */	blt lbl_803C68D0
lbl_803C69AC:
/* 803C69AC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 803C69B0  40 82 FF 14 */	bne lbl_803C68C4
/* 803C69B4  39 61 00 60 */	addi r11, r1, 0x60
/* 803C69B8  4B CD 45 39 */	bl func_8009AEF0
/* 803C69BC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803C69C0  7C 08 03 A6 */	mtlr r0
/* 803C69C4  38 21 00 60 */	addi r1, r1, 0x60
/* 803C69C8  4E 80 00 20 */	blr 
