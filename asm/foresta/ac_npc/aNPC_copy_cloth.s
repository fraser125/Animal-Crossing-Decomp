lbl_805324F0:
/* 805324F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805324F4  7C 08 02 A6 */	mflr r0
/* 805324F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805324FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80532500  4B B6 89 C1 */	bl func_8009AEC0
/* 80532504  7C 78 1B 78 */	mr r24, r3
/* 80532508  7C 99 23 78 */	mr r25, r4
/* 8053250C  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 80532510  7C BA 2B 78 */	mr r26, r5
/* 80532514  80 84 01 7C */	lwz r4, 0x17c(r4)
/* 80532518  A3 C3 08 E4 */	lhz r30, 0x8e4(r3)
/* 8053251C  8B A3 08 EB */	lbz r29, 0x8eb(r3)
/* 80532520  A0 64 08 E4 */	lhz r3, 0x8e4(r4)
/* 80532524  7F C5 F3 78 */	mr r5, r30
/* 80532528  88 84 08 EB */	lbz r4, 0x8eb(r4)
/* 8053252C  7F A6 EB 78 */	mr r6, r29
/* 80532530  4B FF FE B5 */	bl aNPC_chk_same_cloth
/* 80532534  2C 03 00 00 */	cmpwi r3, 0
/* 80532538  40 82 00 18 */	bne lbl_80532550
/* 8053253C  7F 23 CB 78 */	mr r3, r25
/* 80532540  7F C4 F3 78 */	mr r4, r30
/* 80532544  7F A5 EB 78 */	mr r5, r29
/* 80532548  4B FF A2 C9 */	bl aNPC_setup_chg_cloth
/* 8053254C  48 00 00 8C */	b lbl_805325D8
lbl_80532550:
/* 80532550  7F 03 C3 78 */	mr r3, r24
/* 80532554  7F 24 CB 78 */	mr r4, r25
/* 80532558  4B FF FC 41 */	bl aNPC_make_aroundNpcInfoList
/* 8053255C  3C 60 81 1D */	lis r3, aNPC_aroundNpcInfoList@ha /* 0x811D397C@ha */
/* 80532560  3B 9A 1D A8 */	addi r28, r26, 0x1da8
/* 80532564  3B E3 39 7C */	addi r31, r3, aNPC_aroundNpcInfoList@l /* 0x811D397C@l */
/* 80532568  3B 40 00 00 */	li r26, 0
/* 8053256C  3B 7F 00 04 */	addi r27, r31, 4
/* 80532570  48 00 00 5C */	b lbl_805325CC
lbl_80532574:
/* 80532574  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 80532578  7F C5 F3 78 */	mr r5, r30
/* 8053257C  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 80532580  7F A6 EB 78 */	mr r6, r29
/* 80532584  A0 63 00 00 */	lhz r3, 0(r3)
/* 80532588  88 84 00 00 */	lbz r4, 0(r4)
/* 8053258C  4B FF FE 59 */	bl aNPC_chk_same_cloth
/* 80532590  2C 03 00 00 */	cmpwi r3, 0
/* 80532594  40 82 00 30 */	bne lbl_805325C4
/* 80532598  A0 9B 00 00 */	lhz r4, 0(r27)
/* 8053259C  7F 83 E3 78 */	mr r3, r28
/* 805325A0  38 A0 00 04 */	li r5, 4
/* 805325A4  4B E4 37 9D */	bl Actor_info_fgName_search
/* 805325A8  28 03 00 00 */	cmplwi r3, 0
/* 805325AC  40 82 00 18 */	bne lbl_805325C4
/* 805325B0  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 805325B4  B3 C3 00 00 */	sth r30, 0(r3)
/* 805325B8  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 805325BC  9B A3 00 00 */	stb r29, 0(r3)
/* 805325C0  48 00 00 18 */	b lbl_805325D8
lbl_805325C4:
/* 805325C4  3B 7B 00 1C */	addi r27, r27, 0x1c
/* 805325C8  3B 5A 00 01 */	addi r26, r26, 1
lbl_805325CC:
/* 805325CC  80 1F 00 00 */	lwz r0, 0(r31)
/* 805325D0  7C 1A 00 00 */	cmpw r26, r0
/* 805325D4  41 80 FF A0 */	blt lbl_80532574
lbl_805325D8:
/* 805325D8  7F 03 C3 78 */	mr r3, r24
/* 805325DC  7F 24 CB 78 */	mr r4, r25
/* 805325E0  38 A0 00 08 */	li r5, 8
/* 805325E4  4B FF E6 75 */	bl aNPC_set_relation
/* 805325E8  7F 03 C3 78 */	mr r3, r24
/* 805325EC  38 80 00 01 */	li r4, 1
/* 805325F0  38 A0 00 01 */	li r5, 1
/* 805325F4  4B FF E6 D9 */	bl aNPC_set_feel_info
/* 805325F8  7F 23 CB 78 */	mr r3, r25
/* 805325FC  7F 04 C3 78 */	mr r4, r24
/* 80532600  38 A0 00 08 */	li r5, 8
/* 80532604  4B FF E6 55 */	bl aNPC_set_relation
/* 80532608  7F 23 CB 78 */	mr r3, r25
/* 8053260C  38 80 00 01 */	li r4, 1
/* 80532610  38 A0 00 01 */	li r5, 1
/* 80532614  4B FF E6 B9 */	bl aNPC_set_feel_info
/* 80532618  39 61 00 30 */	addi r11, r1, 0x30
/* 8053261C  4B B6 88 F1 */	bl func_8009AF0C
/* 80532620  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80532624  7C 08 03 A6 */	mtlr r0
/* 80532628  38 21 00 30 */	addi r1, r1, 0x30
/* 8053262C  4E 80 00 20 */	blr 
