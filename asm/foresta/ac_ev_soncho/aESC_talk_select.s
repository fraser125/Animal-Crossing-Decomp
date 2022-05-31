lbl_805242B0:
/* 805242B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805242B4  7C 08 02 A6 */	mflr r0
/* 805242B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805242BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805242C0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805242C4  3C C4 00 02 */	addis r6, r4, 2
/* 805242C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805242CC  7C 7F 1B 78 */	mr r31, r3
/* 805242D0  38 60 00 04 */	li r3, 4
/* 805242D4  38 80 00 09 */	li r4, 9
/* 805242D8  80 A6 61 20 */	lwz r5, 0x6120(r6)
/* 805242DC  80 06 61 24 */	lwz r0, 0x6124(r6)
/* 805242E0  90 A1 00 08 */	stw r5, 8(r1)
/* 805242E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805242E8  4B E7 41 95 */	bl mDemo_Get_OrderValue
/* 805242EC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805242F0  2C 00 00 01 */	cmpwi r0, 1
/* 805242F4  40 82 00 D4 */	bne lbl_805243C8
/* 805242F8  4B E9 B3 B1 */	bl func_803BF6A8
/* 805242FC  4B E9 C9 9D */	bl mMsg_Check_MainNormalContinue
/* 80524300  2C 03 00 00 */	cmpwi r3, 0
/* 80524304  41 82 00 C4 */	beq lbl_805243C8
/* 80524308  38 60 00 04 */	li r3, 4
/* 8052430C  38 80 00 09 */	li r4, 9
/* 80524310  38 A0 00 00 */	li r5, 0
/* 80524314  4B E7 41 25 */	bl mDemo_Set_OrderValue
/* 80524318  7F E3 FB 78 */	mr r3, r31
/* 8052431C  38 80 00 00 */	li r4, 0
/* 80524320  4B FF FF 85 */	bl aEGH_change_talk_proc
/* 80524324  4B E5 F2 1D */	bl func_80383540
/* 80524328  4B E5 F8 45 */	bl mChoice_Get_ChoseNum
/* 8052432C  2C 03 00 01 */	cmpwi r3, 1
/* 80524330  41 82 00 14 */	beq lbl_80524344
/* 80524334  40 80 00 94 */	bge lbl_805243C8
/* 80524338  2C 03 00 00 */	cmpwi r3, 0
/* 8052433C  40 80 00 6C */	bge lbl_805243A8
/* 80524340  48 00 00 88 */	b lbl_805243C8
lbl_80524344:
/* 80524344  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80524348  38 C0 00 01 */	li r6, 1
/* 8052434C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80524350  38 61 00 08 */	addi r3, r1, 8
/* 80524354  3C A4 00 02 */	addis r5, r4, 2
/* 80524358  38 80 00 01 */	li r4, 1
/* 8052435C  88 05 13 F2 */	lbz r0, 0x13f2(r5)
/* 80524360  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 80524364  98 05 13 F2 */	stb r0, 0x13f2(r5)
/* 80524368  4B EE 29 BD */	bl lbRTC_Add_DD
/* 8052436C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80524370  A0 A1 00 0E */	lhz r5, 0xe(r1)
/* 80524374  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80524378  88 61 00 0D */	lbz r3, 0xd(r1)
/* 8052437C  3C 84 00 02 */	addis r4, r4, 2
/* 80524380  88 01 00 0B */	lbz r0, 0xb(r1)
/* 80524384  B0 A4 13 F4 */	sth r5, 0x13f4(r4)
/* 80524388  98 64 13 F6 */	stb r3, 0x13f6(r4)
/* 8052438C  98 04 13 F7 */	stb r0, 0x13f7(r4)
/* 80524390  88 1F 00 08 */	lbz r0, 8(r31)
/* 80524394  98 04 13 F0 */	stb r0, 0x13f0(r4)
/* 80524398  88 1F 00 09 */	lbz r0, 9(r31)
/* 8052439C  98 04 13 F1 */	stb r0, 0x13f1(r4)
/* 805243A0  4B FF FE 9D */	bl aESC_set_day
/* 805243A4  48 00 00 24 */	b lbl_805243C8
lbl_805243A8:
/* 805243A8  88 1F 09 95 */	lbz r0, 0x995(r31)
/* 805243AC  28 00 00 00 */	cmplwi r0, 0
/* 805243B0  41 82 00 0C */	beq lbl_805243BC
/* 805243B4  4B FF FD E5 */	bl aESC_owari_message
/* 805243B8  48 00 00 10 */	b lbl_805243C8
lbl_805243BC:
/* 805243BC  7F E3 FB 78 */	mr r3, r31
/* 805243C0  38 80 00 02 */	li r4, 2
/* 805243C4  4B FF FE E1 */	bl aEGH_change_talk_proc
lbl_805243C8:
/* 805243C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805243CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805243D0  7C 08 03 A6 */	mtlr r0
/* 805243D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805243D8  4E 80 00 20 */	blr 
