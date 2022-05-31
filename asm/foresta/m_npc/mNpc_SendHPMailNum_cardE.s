lbl_803D658C:
/* 803D658C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D6590  7C 08 02 A6 */	mflr r0
/* 803D6594  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D6598  39 61 00 40 */	addi r11, r1, 0x40
/* 803D659C  4B CC 49 15 */	bl func_8009AEB0
/* 803D65A0  3C C0 81 17 */	lis r6, data_8116B378@ha /* 0x8116B378@ha */
/* 803D65A4  7C 75 1B 78 */	mr r21, r3
/* 803D65A8  3B E6 B3 78 */	addi r31, r6, data_8116B378@l /* 0x8116B378@l */
/* 803D65AC  7C 96 23 78 */	mr r22, r4
/* 803D65B0  7C B7 2B 78 */	mr r23, r5
/* 803D65B4  3B 80 00 00 */	li r28, 0
/* 803D65B8  3B DF 38 3C */	addi r30, r31, 0x383c
/* 803D65BC  3A 80 00 00 */	li r20, 0
/* 803D65C0  3B 60 00 00 */	li r27, 0
/* 803D65C4  3B 40 00 00 */	li r26, 0
/* 803D65C8  48 00 88 9D */	bl mPO_get_keep_mail_sum
/* 803D65CC  2C 03 00 05 */	cmpwi r3, 5
/* 803D65D0  40 80 03 C4 */	bge lbl_803D6994
/* 803D65D4  7F C3 F3 78 */	mr r3, r30
/* 803D65D8  4B FE 61 29 */	bl mMl_clear_mail
/* 803D65DC  7E E3 BB 78 */	mr r3, r23
/* 803D65E0  4B FE 7C C1 */	bl mMpswd_password_zuru_check
/* 803D65E4  2C 03 00 00 */	cmpwi r3, 0
/* 803D65E8  40 82 02 9C */	bne lbl_803D6884
/* 803D65EC  7E E3 BB 78 */	mr r3, r23
/* 803D65F0  4B FE 84 81 */	bl mMpswd_check_present
/* 803D65F4  2C 03 00 01 */	cmpwi r3, 1
/* 803D65F8  40 82 02 8C */	bne lbl_803D6884
/* 803D65FC  7E E3 BB 78 */	mr r3, r23
/* 803D6600  4B FE 85 05 */	bl mMpswd_check_npc_code
/* 803D6604  2C 03 00 01 */	cmpwi r3, 1
/* 803D6608  40 82 02 7C */	bne lbl_803D6884
/* 803D660C  38 7F 39 98 */	addi r3, r31, 0x3998
/* 803D6610  3B 20 00 00 */	li r25, 0
/* 803D6614  38 80 00 08 */	li r4, 8
/* 803D6618  4B FF 4D 19 */	bl mNpc_ClearBufSpace1
/* 803D661C  38 7F 39 A8 */	addi r3, r31, 0x39a8
/* 803D6620  38 80 00 08 */	li r4, 8
/* 803D6624  4B FF 4D 0D */	bl mNpc_ClearBufSpace1
/* 803D6628  38 7F 39 B8 */	addi r3, r31, 0x39b8
/* 803D662C  38 80 00 0A */	li r4, 0xa
/* 803D6630  4B FF 4D 01 */	bl mNpc_ClearBufSpace1
/* 803D6634  88 17 00 02 */	lbz r0, 2(r23)
/* 803D6638  28 00 00 00 */	cmplwi r0, 0
/* 803D663C  40 82 01 70 */	bne lbl_803D67AC
/* 803D6640  88 17 00 03 */	lbz r0, 3(r23)
/* 803D6644  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D6648  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D664C  38 A0 00 0F */	li r5, 0xf
/* 803D6650  60 00 E0 00 */	ori r0, r0, 0xe000
/* 803D6654  54 18 04 3E */	clrlwi r24, r0, 0x10
/* 803D6658  3C 63 00 01 */	addis r3, r3, 1
/* 803D665C  7F 04 C3 78 */	mr r4, r24
/* 803D6660  38 63 74 38 */	addi r3, r3, 0x7438
/* 803D6664  4B FF 60 79 */	bl mNpc_SearchAnimalinfo
/* 803D6668  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D666C  7C 74 1B 78 */	mr r20, r3
/* 803D6670  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803D6674  7F 04 C3 78 */	mr r4, r24
/* 803D6678  3C 63 00 02 */	addis r3, r3, 2
/* 803D667C  38 A0 00 01 */	li r5, 1
/* 803D6680  38 63 34 40 */	addi r3, r3, 0x3440
/* 803D6684  4B FF 60 59 */	bl mNpc_SearchAnimalinfo
/* 803D6688  2C 14 FF FF */	cmpwi r20, -1
/* 803D668C  40 82 00 0C */	bne lbl_803D6698
/* 803D6690  2C 03 FF FF */	cmpwi r3, -1
/* 803D6694  41 82 00 C0 */	beq lbl_803D6754
lbl_803D6698:
/* 803D6698  1C 14 09 88 */	mulli r0, r20, 0x988
/* 803D669C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D66A0  38 A0 00 07 */	li r5, 7
/* 803D66A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D66A8  3E 83 00 02 */	addis r20, r3, 2
/* 803D66AC  7C 83 02 14 */	add r4, r3, r0
/* 803D66B0  80 74 61 3C */	lwz r3, 0x613c(r20)
/* 803D66B4  3C 84 00 01 */	addis r4, r4, 1
/* 803D66B8  38 84 74 48 */	addi r4, r4, 0x7448
/* 803D66BC  4B FF 56 BD */	bl mNpc_GetAnimalMemoryIdx
/* 803D66C0  2C 03 FF FF */	cmpwi r3, -1
/* 803D66C4  40 82 00 28 */	bne lbl_803D66EC
/* 803D66C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D66CC  80 74 61 3C */	lwz r3, 0x613c(r20)
/* 803D66D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D66D4  38 A0 00 07 */	li r5, 7
/* 803D66D8  3C 84 00 02 */	addis r4, r4, 2
/* 803D66DC  38 84 34 50 */	addi r4, r4, 0x3450
/* 803D66E0  4B FF 56 99 */	bl mNpc_GetAnimalMemoryIdx
/* 803D66E4  2C 03 FF FF */	cmpwi r3, -1
/* 803D66E8  41 82 00 6C */	beq lbl_803D6754
lbl_803D66EC:
/* 803D66EC  7F 03 C3 78 */	mr r3, r24
/* 803D66F0  4B FF 87 6D */	bl mNpc_GetLooks
/* 803D66F4  54 74 06 3E */	clrlwi r20, r3, 0x18
/* 803D66F8  88 77 00 05 */	lbz r3, 5(r23)
/* 803D66FC  4B FF FE 11 */	bl mNpc_GetHit_cardE
/* 803D6700  2C 03 00 00 */	cmpwi r3, 0
/* 803D6704  41 82 00 50 */	beq lbl_803D6754
/* 803D6708  7F 03 C3 78 */	mr r3, r24
/* 803D670C  3B 20 00 01 */	li r25, 1
/* 803D6710  4B FF F5 59 */	bl mNpc_CheckIslandAnimalTableNo
/* 803D6714  2C 03 00 01 */	cmpwi r3, 1
/* 803D6718  38 74 03 C4 */	addi r3, r20, 0x3c4
/* 803D671C  40 82 00 08 */	bne lbl_803D6724
/* 803D6720  38 74 03 CA */	addi r3, r20, 0x3ca
lbl_803D6724:
/* 803D6724  88 17 00 03 */	lbz r0, 3(r23)
/* 803D6728  7C 7D 1B 78 */	mr r29, r3
/* 803D672C  38 7F 39 A8 */	addi r3, r31, 0x39a8
/* 803D6730  60 00 E0 00 */	ori r0, r0, 0xe000
/* 803D6734  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803D6738  4B FF B0 D5 */	bl mNpc_GetNpcWorldNameTableNo
/* 803D673C  88 17 00 03 */	lbz r0, 3(r23)
/* 803D6740  38 7F 39 98 */	addi r3, r31, 0x3998
/* 803D6744  60 00 E0 00 */	ori r0, r0, 0xe000
/* 803D6748  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803D674C  4B FF B0 C1 */	bl mNpc_GetNpcWorldNameTableNo
/* 803D6750  3B 60 00 01 */	li r27, 1
lbl_803D6754:
/* 803D6754  2C 19 00 00 */	cmpwi r25, 0
/* 803D6758  40 82 00 34 */	bne lbl_803D678C
/* 803D675C  88 97 00 03 */	lbz r4, 3(r23)
/* 803D6760  38 7F 39 A8 */	addi r3, r31, 0x39a8
/* 803D6764  60 80 E0 00 */	ori r0, r4, 0xe000
/* 803D6768  3B A4 02 B2 */	addi r29, r4, 0x2b2
/* 803D676C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803D6770  4B FF B0 9D */	bl mNpc_GetNpcWorldNameTableNo
/* 803D6774  88 17 00 03 */	lbz r0, 3(r23)
/* 803D6778  38 7F 39 98 */	addi r3, r31, 0x3998
/* 803D677C  60 00 E0 00 */	ori r0, r0, 0xe000
/* 803D6780  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803D6784  4B FF B0 89 */	bl mNpc_GetNpcWorldNameTableNo
/* 803D6788  3B 60 00 01 */	li r27, 1
lbl_803D678C:
/* 803D678C  7F 04 C3 78 */	mr r4, r24
/* 803D6790  38 7F 39 B8 */	addi r3, r31, 0x39b8
/* 803D6794  4B FF FD 15 */	bl mNPC_get_gobi_str_from_name
/* 803D6798  38 9F 39 B8 */	addi r4, r31, 0x39b8
/* 803D679C  38 60 00 05 */	li r3, 5
/* 803D67A0  38 A0 00 0A */	li r5, 0xa
/* 803D67A4  4B FD B1 B5 */	bl mHandbill_Set_free_str
/* 803D67A8  48 00 00 60 */	b lbl_803D6808
lbl_803D67AC:
/* 803D67AC  88 77 00 03 */	lbz r3, 3(r23)
/* 803D67B0  3B A3 03 9E */	addi r29, r3, 0x39e
/* 803D67B4  4B FE 83 29 */	bl mMpswd_get_sp_npc_num
/* 803D67B8  7C 60 1B 78 */	mr r0, r3
/* 803D67BC  38 7F 39 A8 */	addi r3, r31, 0x39a8
/* 803D67C0  7C 14 03 78 */	mr r20, r0
/* 803D67C4  7E 84 A3 78 */	mr r4, r20
/* 803D67C8  4B FF B3 31 */	bl mNpc_GetActorWorldName
/* 803D67CC  7E 84 A3 78 */	mr r4, r20
/* 803D67D0  38 7F 39 98 */	addi r3, r31, 0x3998
/* 803D67D4  4B FF B3 25 */	bl mNpc_GetActorWorldName
/* 803D67D8  38 7F 39 98 */	addi r3, r31, 0x3998
/* 803D67DC  88 03 00 04 */	lbz r0, 4(r3)
/* 803D67E0  28 00 00 0A */	cmplwi r0, 0xa
/* 803D67E4  40 82 00 1C */	bne lbl_803D6800
/* 803D67E8  88 03 00 05 */	lbz r0, 5(r3)
/* 803D67EC  28 00 00 C3 */	cmplwi r0, 0xc3
/* 803D67F0  40 82 00 10 */	bne lbl_803D6800
/* 803D67F4  38 00 00 20 */	li r0, 0x20
/* 803D67F8  98 03 00 04 */	stb r0, 4(r3)
/* 803D67FC  98 03 00 05 */	stb r0, 5(r3)
lbl_803D6800:
/* 803D6800  3B 60 00 01 */	li r27, 1
/* 803D6804  3B 40 00 01 */	li r26, 1
lbl_803D6808:
/* 803D6808  2C 19 00 00 */	cmpwi r25, 0
/* 803D680C  40 82 00 30 */	bne lbl_803D683C
/* 803D6810  7E E3 BB 78 */	mr r3, r23
/* 803D6814  4B FE 82 5D */	bl mMpswd_check_present
/* 803D6818  2C 03 00 01 */	cmpwi r3, 1
/* 803D681C  40 82 00 20 */	bne lbl_803D683C
/* 803D6820  A0 17 00 00 */	lhz r0, 0(r23)
/* 803D6824  28 00 FF FF */	cmplwi r0, 0xffff
/* 803D6828  40 82 00 0C */	bne lbl_803D6834
/* 803D682C  3B 80 00 00 */	li r28, 0
/* 803D6830  48 00 00 5C */	b lbl_803D688C
lbl_803D6834:
/* 803D6834  7C 1C 03 78 */	mr r28, r0
/* 803D6838  48 00 00 54 */	b lbl_803D688C
lbl_803D683C:
/* 803D683C  2C 19 00 01 */	cmpwi r25, 1
/* 803D6840  40 82 00 4C */	bne lbl_803D688C
/* 803D6844  4B C8 64 B1 */	bl fqrand
/* 803D6848  3C 80 80 64 */	lis r4, lit_4880@ha /* 0x80642900@ha */
/* 803D684C  3C 60 80 98 */	lis r3, pswd_famicom_list@ha /* 0x80980E04@ha */
/* 803D6850  38 A4 29 00 */	addi r5, r4, lit_4880@l /* 0x80642900@l */
/* 803D6854  38 80 00 00 */	li r4, 0
/* 803D6858  C0 05 00 00 */	lfs f0, 0(r5)
/* 803D685C  38 63 0E 04 */	addi r3, r3, pswd_famicom_list@l /* 0x80980E04@l */
/* 803D6860  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D6864  FC 00 00 1E */	fctiwz f0, f0
/* 803D6868  D8 01 00 08 */	stfd f0, 8(r1)
/* 803D686C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803D6870  54 00 08 3C */	slwi r0, r0, 1
/* 803D6874  7C 63 02 2E */	lhzx r3, r3, r0
/* 803D6878  48 01 0F 5D */	bl mRmTp_FtrIdx2FtrItemNo
/* 803D687C  7C 7C 1B 78 */	mr r28, r3
/* 803D6880  48 00 00 0C */	b lbl_803D688C
lbl_803D6884:
/* 803D6884  88 76 00 0D */	lbz r3, 0xd(r22)
/* 803D6888  3B A3 03 BE */	addi r29, r3, 0x3be
lbl_803D688C:
/* 803D688C  7E A4 AB 78 */	mr r4, r21
/* 803D6890  38 60 00 00 */	li r3, 0
/* 803D6894  38 A0 00 08 */	li r5, 8
/* 803D6898  4B FD B0 C1 */	bl mHandbill_Set_free_str
/* 803D689C  38 9F 39 A8 */	addi r4, r31, 0x39a8
/* 803D68A0  38 60 00 01 */	li r3, 1
/* 803D68A4  38 A0 00 08 */	li r5, 8
/* 803D68A8  4B FD B0 B1 */	bl mHandbill_Set_free_str
/* 803D68AC  38 97 00 0F */	addi r4, r23, 0xf
/* 803D68B0  38 60 00 02 */	li r3, 2
/* 803D68B4  38 A0 00 08 */	li r5, 8
/* 803D68B8  4B FD B0 A1 */	bl mHandbill_Set_free_str
/* 803D68BC  38 97 00 07 */	addi r4, r23, 7
/* 803D68C0  38 60 00 03 */	li r3, 3
/* 803D68C4  38 A0 00 08 */	li r5, 8
/* 803D68C8  4B FD B0 91 */	bl mHandbill_Set_free_str
/* 803D68CC  57 80 04 3F */	clrlwi. r0, r28, 0x10
/* 803D68D0  41 82 00 2C */	beq lbl_803D68FC
/* 803D68D4  38 7F 39 A8 */	addi r3, r31, 0x39a8
/* 803D68D8  38 80 00 10 */	li r4, 0x10
/* 803D68DC  4B FF 4A 55 */	bl mNpc_ClearBufSpace1
/* 803D68E0  7F 84 E3 78 */	mr r4, r28
/* 803D68E4  38 7F 39 A8 */	addi r3, r31, 0x39a8
/* 803D68E8  4B FD F0 BD */	bl mIN_copy_name_str
/* 803D68EC  38 9F 39 A8 */	addi r4, r31, 0x39a8
/* 803D68F0  38 60 00 04 */	li r3, 4
/* 803D68F4  38 A0 00 10 */	li r5, 0x10
/* 803D68F8  4B FD B0 61 */	bl mHandbill_Set_free_str
lbl_803D68FC:
/* 803D68FC  38 7F 39 A8 */	addi r3, r31, 0x39a8
/* 803D6900  38 80 00 08 */	li r4, 8
/* 803D6904  4B FF 4A 2D */	bl mNpc_ClearBufSpace1
/* 803D6908  7E C4 B3 78 */	mr r4, r22
/* 803D690C  38 7F 39 A8 */	addi r3, r31, 0x39a8
/* 803D6910  4B FF B0 41 */	bl mNpc_GetNpcWorldNameAnm
/* 803D6914  38 9F 39 A8 */	addi r4, r31, 0x39a8
/* 803D6918  38 60 00 06 */	li r3, 6
/* 803D691C  38 A0 00 08 */	li r5, 8
/* 803D6920  4B FD B0 39 */	bl mHandbill_Set_free_str
/* 803D6924  4B FF 73 8D */	bl mNpc_GetPaperType
/* 803D6928  7C 67 1B 78 */	mr r7, r3
/* 803D692C  7F C3 F3 78 */	mr r3, r30
/* 803D6930  7E A4 AB 78 */	mr r4, r21
/* 803D6934  7E C5 B3 78 */	mr r5, r22
/* 803D6938  7F 86 E3 78 */	mr r6, r28
/* 803D693C  7F A8 EB 78 */	mr r8, r29
/* 803D6940  4B FF 73 D1 */	bl mNpc_LoadMailDataCommon2
/* 803D6944  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 803D6948  28 00 00 01 */	cmplwi r0, 1
/* 803D694C  40 82 00 38 */	bne lbl_803D6984
/* 803D6950  38 7F 39 98 */	addi r3, r31, 0x3998
/* 803D6954  38 9E 00 16 */	addi r4, r30, 0x16
/* 803D6958  38 A0 00 08 */	li r5, 8
/* 803D695C  4B C8 66 C1 */	bl func_8005D01C
/* 803D6960  7E A3 AB 78 */	mr r3, r21
/* 803D6964  7F C4 F3 78 */	mr r4, r30
/* 803D6968  38 A0 00 08 */	li r5, 8
/* 803D696C  4B C8 66 B1 */	bl func_8005D01C
/* 803D6970  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 803D6974  28 00 00 01 */	cmplwi r0, 1
/* 803D6978  40 82 00 0C */	bne lbl_803D6984
/* 803D697C  38 00 00 0B */	li r0, 0xb
/* 803D6980  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_803D6984:
/* 803D6984  7F C3 F3 78 */	mr r3, r30
/* 803D6988  38 80 00 00 */	li r4, 0
/* 803D698C  48 00 86 D5 */	bl mPO_receipt_proc
/* 803D6990  7C 74 1B 78 */	mr r20, r3
lbl_803D6994:
/* 803D6994  7E 83 A3 78 */	mr r3, r20
/* 803D6998  39 61 00 40 */	addi r11, r1, 0x40
/* 803D699C  4B CC 45 61 */	bl func_8009AEFC
/* 803D69A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D69A4  7C 08 03 A6 */	mtlr r0
/* 803D69A8  38 21 00 40 */	addi r1, r1, 0x40
/* 803D69AC  4E 80 00 20 */	blr 
