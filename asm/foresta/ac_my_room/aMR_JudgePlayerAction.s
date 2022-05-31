lbl_8047D924:
/* 8047D924  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 8047D928  7C 08 02 A6 */	mflr r0
/* 8047D92C  90 01 01 74 */	stw r0, 0x174(r1)
/* 8047D930  39 61 01 70 */	addi r11, r1, 0x170
/* 8047D934  4B C1 D5 A1 */	bl func_8009AED4
/* 8047D938  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8047D93C  7C 7D 1B 78 */	mr r29, r3
/* 8047D940  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8047D944  7C 9E 23 78 */	mr r30, r4
/* 8047D948  3C 86 00 02 */	addis r4, r6, 2
/* 8047D94C  80 84 60 8C */	lwz r4, 0x608c(r4)
/* 8047D950  83 E4 00 00 */	lwz r31, 0(r4)
/* 8047D954  28 1F 00 00 */	cmplwi r31, 0
/* 8047D958  41 82 04 C4 */	beq lbl_8047DE1C
/* 8047D95C  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047D960  38 84 DF E8 */	addi r4, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047D964  80 C4 00 00 */	lwz r6, 0(r4)
/* 8047D968  28 06 00 00 */	cmplwi r6, 0
/* 8047D96C  41 82 04 B0 */	beq lbl_8047DE1C
/* 8047D970  80 04 00 04 */	lwz r0, 4(r4)
/* 8047D974  28 00 00 00 */	cmplwi r0, 0
/* 8047D978  41 82 04 A4 */	beq lbl_8047DE1C
/* 8047D97C  1C 85 08 58 */	mulli r4, r5, 0x858
/* 8047D980  A8 1F 03 F8 */	lha r0, 0x3f8(r31)
/* 8047D984  2C 00 00 01 */	cmpwi r0, 1
/* 8047D988  38 04 00 3C */	addi r0, r4, 0x3c
/* 8047D98C  7C A6 02 AE */	lhax r5, r6, r0
/* 8047D990  40 82 01 8C */	bne lbl_8047DB1C
/* 8047D994  A8 1F 01 74 */	lha r0, 0x174(r31)
/* 8047D998  2C 00 00 08 */	cmpwi r0, 8
/* 8047D99C  40 82 04 30 */	bne lbl_8047DDCC
/* 8047D9A0  A8 1F 03 FA */	lha r0, 0x3fa(r31)
/* 8047D9A4  1C 00 08 58 */	mulli r0, r0, 0x858
/* 8047D9A8  7C 66 02 2E */	lhzx r3, r6, r0
/* 8047D9AC  4B FF 27 F5 */	bl func_804701A0
/* 8047D9B0  28 03 00 00 */	cmplwi r3, 0
/* 8047D9B4  41 82 04 18 */	beq lbl_8047DDCC
/* 8047D9B8  A0 63 00 2E */	lhz r3, 0x2e(r3)
/* 8047D9BC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8047D9C0  41 82 00 54 */	beq lbl_8047DA14
/* 8047D9C4  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047D9C8  7F A3 EB 78 */	mr r3, r29
/* 8047D9CC  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047D9D0  38 81 01 4C */	addi r4, r1, 0x14c
/* 8047D9D4  90 A1 01 4C */	stw r5, 0x14c(r1)
/* 8047D9D8  90 01 01 50 */	stw r0, 0x150(r1)
/* 8047D9DC  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047D9E0  90 01 01 54 */	stw r0, 0x154(r1)
/* 8047D9E4  4B FF FF 1D */	bl aMR_SetNowPosition
/* 8047D9E8  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047D9EC  7F C3 F3 78 */	mr r3, r30
/* 8047D9F0  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047D9F4  38 81 01 40 */	addi r4, r1, 0x140
/* 8047D9F8  90 A1 01 40 */	stw r5, 0x140(r1)
/* 8047D9FC  90 01 01 44 */	stw r0, 0x144(r1)
/* 8047DA00  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DA04  90 01 01 48 */	stw r0, 0x148(r1)
/* 8047DA08  4B FF FE F9 */	bl aMR_SetNowPosition
/* 8047DA0C  38 60 00 08 */	li r3, 8
/* 8047DA10  48 00 04 68 */	b lbl_8047DE78
lbl_8047DA14:
/* 8047DA14  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 8047DA18  41 82 00 54 */	beq lbl_8047DA6C
/* 8047DA1C  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DA20  7F A3 EB 78 */	mr r3, r29
/* 8047DA24  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DA28  38 81 01 34 */	addi r4, r1, 0x134
/* 8047DA2C  90 A1 01 34 */	stw r5, 0x134(r1)
/* 8047DA30  90 01 01 38 */	stw r0, 0x138(r1)
/* 8047DA34  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DA38  90 01 01 3C */	stw r0, 0x13c(r1)
/* 8047DA3C  4B FF FE C5 */	bl aMR_SetNowPosition
/* 8047DA40  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DA44  7F C3 F3 78 */	mr r3, r30
/* 8047DA48  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DA4C  38 81 01 28 */	addi r4, r1, 0x128
/* 8047DA50  90 A1 01 28 */	stw r5, 0x128(r1)
/* 8047DA54  90 01 01 2C */	stw r0, 0x12c(r1)
/* 8047DA58  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DA5C  90 01 01 30 */	stw r0, 0x130(r1)
/* 8047DA60  4B FF FE A1 */	bl aMR_SetNowPosition
/* 8047DA64  38 60 00 06 */	li r3, 6
/* 8047DA68  48 00 04 10 */	b lbl_8047DE78
lbl_8047DA6C:
/* 8047DA6C  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 8047DA70  41 82 00 54 */	beq lbl_8047DAC4
/* 8047DA74  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DA78  7F A3 EB 78 */	mr r3, r29
/* 8047DA7C  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DA80  38 81 01 1C */	addi r4, r1, 0x11c
/* 8047DA84  90 A1 01 1C */	stw r5, 0x11c(r1)
/* 8047DA88  90 01 01 20 */	stw r0, 0x120(r1)
/* 8047DA8C  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DA90  90 01 01 24 */	stw r0, 0x124(r1)
/* 8047DA94  4B FF FE 6D */	bl aMR_SetNowPosition
/* 8047DA98  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DA9C  7F C3 F3 78 */	mr r3, r30
/* 8047DAA0  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DAA4  38 81 01 10 */	addi r4, r1, 0x110
/* 8047DAA8  90 A1 01 10 */	stw r5, 0x110(r1)
/* 8047DAAC  90 01 01 14 */	stw r0, 0x114(r1)
/* 8047DAB0  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DAB4  90 01 01 18 */	stw r0, 0x118(r1)
/* 8047DAB8  4B FF FE 49 */	bl aMR_SetNowPosition
/* 8047DABC  38 60 00 07 */	li r3, 7
/* 8047DAC0  48 00 03 B8 */	b lbl_8047DE78
lbl_8047DAC4:
/* 8047DAC4  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 8047DAC8  41 82 03 04 */	beq lbl_8047DDCC
/* 8047DACC  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DAD0  7F A3 EB 78 */	mr r3, r29
/* 8047DAD4  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DAD8  38 81 01 04 */	addi r4, r1, 0x104
/* 8047DADC  90 A1 01 04 */	stw r5, 0x104(r1)
/* 8047DAE0  90 01 01 08 */	stw r0, 0x108(r1)
/* 8047DAE4  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DAE8  90 01 01 0C */	stw r0, 0x10c(r1)
/* 8047DAEC  4B FF FE 15 */	bl aMR_SetNowPosition
/* 8047DAF0  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DAF4  7F C3 F3 78 */	mr r3, r30
/* 8047DAF8  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DAFC  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8047DB00  90 A1 00 F8 */	stw r5, 0xf8(r1)
/* 8047DB04  90 01 00 FC */	stw r0, 0xfc(r1)
/* 8047DB08  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DB0C  90 01 01 00 */	stw r0, 0x100(r1)
/* 8047DB10  4B FF FD F1 */	bl aMR_SetNowPosition
/* 8047DB14  38 60 00 01 */	li r3, 1
/* 8047DB18  48 00 03 60 */	b lbl_8047DE78
lbl_8047DB1C:
/* 8047DB1C  A8 1F 01 74 */	lha r0, 0x174(r31)
/* 8047DB20  28 00 00 08 */	cmplwi r0, 8
/* 8047DB24  41 81 02 A8 */	bgt lbl_8047DDCC
/* 8047DB28  3C 80 80 69 */	lis r4, lit_5895@ha /* 0x8068A214@ha */
/* 8047DB2C  54 00 10 3A */	slwi r0, r0, 2
/* 8047DB30  38 84 A2 14 */	addi r4, r4, lit_5895@l /* 0x8068A214@l */
/* 8047DB34  7C 04 00 2E */	lwzx r0, r4, r0
/* 8047DB38  7C 09 03 A6 */	mtctr r0
/* 8047DB3C  4E 80 04 20 */	bctr 
lbl_8047DB40:
/* 8047DB40  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DB44  38 81 00 EC */	addi r4, r1, 0xec
/* 8047DB48  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DB4C  90 A1 00 EC */	stw r5, 0xec(r1)
/* 8047DB50  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 8047DB54  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DB58  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8047DB5C  4B FF FD A5 */	bl aMR_SetNowPosition
/* 8047DB60  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DB64  7F C3 F3 78 */	mr r3, r30
/* 8047DB68  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DB6C  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8047DB70  90 A1 00 E0 */	stw r5, 0xe0(r1)
/* 8047DB74  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8047DB78  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DB7C  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 8047DB80  4B FF FD 81 */	bl aMR_SetNowPosition
/* 8047DB84  38 60 00 09 */	li r3, 9
/* 8047DB88  48 00 02 F0 */	b lbl_8047DE78
lbl_8047DB8C:
/* 8047DB8C  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DB90  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8047DB94  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DB98  90 A1 00 D4 */	stw r5, 0xd4(r1)
/* 8047DB9C  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 8047DBA0  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DBA4  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8047DBA8  4B FF FD 59 */	bl aMR_SetNowPosition
/* 8047DBAC  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DBB0  7F C3 F3 78 */	mr r3, r30
/* 8047DBB4  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DBB8  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8047DBBC  90 A1 00 C8 */	stw r5, 0xc8(r1)
/* 8047DBC0  90 01 00 CC */	stw r0, 0xcc(r1)
/* 8047DBC4  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DBC8  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 8047DBCC  4B FF FD 35 */	bl aMR_SetNowPosition
/* 8047DBD0  38 60 00 0A */	li r3, 0xa
/* 8047DBD4  48 00 02 A4 */	b lbl_8047DE78
lbl_8047DBD8:
/* 8047DBD8  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DBDC  38 81 00 BC */	addi r4, r1, 0xbc
/* 8047DBE0  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DBE4  90 A1 00 BC */	stw r5, 0xbc(r1)
/* 8047DBE8  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8047DBEC  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DBF0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8047DBF4  4B FF FD 0D */	bl aMR_SetNowPosition
/* 8047DBF8  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DBFC  7F C3 F3 78 */	mr r3, r30
/* 8047DC00  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DC04  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8047DC08  90 A1 00 B0 */	stw r5, 0xb0(r1)
/* 8047DC0C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8047DC10  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DC14  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8047DC18  4B FF FC E9 */	bl aMR_SetNowPosition
/* 8047DC1C  38 60 00 02 */	li r3, 2
/* 8047DC20  48 00 02 58 */	b lbl_8047DE78
lbl_8047DC24:
/* 8047DC24  80 BF 04 14 */	lwz r5, 0x414(r31)
/* 8047DC28  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8047DC2C  80 1F 04 18 */	lwz r0, 0x418(r31)
/* 8047DC30  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 8047DC34  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8047DC38  80 1F 04 1C */	lwz r0, 0x41c(r31)
/* 8047DC3C  90 01 00 AC */	stw r0, 0xac(r1)
/* 8047DC40  4B FF FC C1 */	bl aMR_SetNowPosition
/* 8047DC44  80 BF 04 20 */	lwz r5, 0x420(r31)
/* 8047DC48  7F C3 F3 78 */	mr r3, r30
/* 8047DC4C  80 1F 04 24 */	lwz r0, 0x424(r31)
/* 8047DC50  38 81 00 98 */	addi r4, r1, 0x98
/* 8047DC54  90 A1 00 98 */	stw r5, 0x98(r1)
/* 8047DC58  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8047DC5C  80 1F 04 28 */	lwz r0, 0x428(r31)
/* 8047DC60  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8047DC64  4B FF FC 9D */	bl aMR_SetNowPosition
/* 8047DC68  38 60 00 03 */	li r3, 3
/* 8047DC6C  48 00 02 0C */	b lbl_8047DE78
lbl_8047DC70:
/* 8047DC70  2C 05 00 09 */	cmpwi r5, 9
/* 8047DC74  41 82 00 0C */	beq lbl_8047DC80
/* 8047DC78  2C 05 00 08 */	cmpwi r5, 8
/* 8047DC7C  40 82 00 54 */	bne lbl_8047DCD0
lbl_8047DC80:
/* 8047DC80  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DC84  7F A3 EB 78 */	mr r3, r29
/* 8047DC88  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DC8C  38 81 00 8C */	addi r4, r1, 0x8c
/* 8047DC90  90 A1 00 8C */	stw r5, 0x8c(r1)
/* 8047DC94  90 01 00 90 */	stw r0, 0x90(r1)
/* 8047DC98  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DC9C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8047DCA0  4B FF FC 61 */	bl aMR_SetNowPosition
/* 8047DCA4  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DCA8  7F C3 F3 78 */	mr r3, r30
/* 8047DCAC  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DCB0  38 81 00 80 */	addi r4, r1, 0x80
/* 8047DCB4  90 A1 00 80 */	stw r5, 0x80(r1)
/* 8047DCB8  90 01 00 84 */	stw r0, 0x84(r1)
/* 8047DCBC  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DCC0  90 01 00 88 */	stw r0, 0x88(r1)
/* 8047DCC4  4B FF FC 3D */	bl aMR_SetNowPosition
/* 8047DCC8  38 60 00 05 */	li r3, 5
/* 8047DCCC  48 00 01 AC */	b lbl_8047DE78
lbl_8047DCD0:
/* 8047DCD0  2C 05 00 0B */	cmpwi r5, 0xb
/* 8047DCD4  41 82 00 0C */	beq lbl_8047DCE0
/* 8047DCD8  2C 05 00 0A */	cmpwi r5, 0xa
/* 8047DCDC  40 82 00 54 */	bne lbl_8047DD30
lbl_8047DCE0:
/* 8047DCE0  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DCE4  7F A3 EB 78 */	mr r3, r29
/* 8047DCE8  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DCEC  38 81 00 74 */	addi r4, r1, 0x74
/* 8047DCF0  90 A1 00 74 */	stw r5, 0x74(r1)
/* 8047DCF4  90 01 00 78 */	stw r0, 0x78(r1)
/* 8047DCF8  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DCFC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8047DD00  4B FF FC 01 */	bl aMR_SetNowPosition
/* 8047DD04  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DD08  7F C3 F3 78 */	mr r3, r30
/* 8047DD0C  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DD10  38 81 00 68 */	addi r4, r1, 0x68
/* 8047DD14  90 A1 00 68 */	stw r5, 0x68(r1)
/* 8047DD18  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8047DD1C  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DD20  90 01 00 70 */	stw r0, 0x70(r1)
/* 8047DD24  4B FF FB DD */	bl aMR_SetNowPosition
/* 8047DD28  38 60 00 04 */	li r3, 4
/* 8047DD2C  48 00 01 4C */	b lbl_8047DE78
lbl_8047DD30:
/* 8047DD30  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DD34  7F A3 EB 78 */	mr r3, r29
/* 8047DD38  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DD3C  38 81 00 5C */	addi r4, r1, 0x5c
/* 8047DD40  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 8047DD44  90 01 00 60 */	stw r0, 0x60(r1)
/* 8047DD48  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DD4C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8047DD50  4B FF FB B1 */	bl aMR_SetNowPosition
/* 8047DD54  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DD58  7F C3 F3 78 */	mr r3, r30
/* 8047DD5C  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DD60  38 81 00 50 */	addi r4, r1, 0x50
/* 8047DD64  90 A1 00 50 */	stw r5, 0x50(r1)
/* 8047DD68  90 01 00 54 */	stw r0, 0x54(r1)
/* 8047DD6C  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DD70  90 01 00 58 */	stw r0, 0x58(r1)
/* 8047DD74  4B FF FB 8D */	bl aMR_SetNowPosition
/* 8047DD78  38 60 00 00 */	li r3, 0
/* 8047DD7C  48 00 00 FC */	b lbl_8047DE78
lbl_8047DD80:
/* 8047DD80  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DD84  38 81 00 44 */	addi r4, r1, 0x44
/* 8047DD88  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DD8C  90 A1 00 44 */	stw r5, 0x44(r1)
/* 8047DD90  90 01 00 48 */	stw r0, 0x48(r1)
/* 8047DD94  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DD98  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8047DD9C  4B FF FB 65 */	bl aMR_SetNowPosition
/* 8047DDA0  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DDA4  7F C3 F3 78 */	mr r3, r30
/* 8047DDA8  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DDAC  38 81 00 38 */	addi r4, r1, 0x38
/* 8047DDB0  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8047DDB4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8047DDB8  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DDBC  90 01 00 40 */	stw r0, 0x40(r1)
/* 8047DDC0  4B FF FB 41 */	bl aMR_SetNowPosition
/* 8047DDC4  38 60 00 01 */	li r3, 1
/* 8047DDC8  48 00 00 B0 */	b lbl_8047DE78
lbl_8047DDCC:
/* 8047DDCC  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DDD0  7F A3 EB 78 */	mr r3, r29
/* 8047DDD4  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DDD8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8047DDDC  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8047DDE0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8047DDE4  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DDE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047DDEC  4B FF FB 15 */	bl aMR_SetNowPosition
/* 8047DDF0  80 BF 02 DC */	lwz r5, 0x2dc(r31)
/* 8047DDF4  7F C3 F3 78 */	mr r3, r30
/* 8047DDF8  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 8047DDFC  38 81 00 20 */	addi r4, r1, 0x20
/* 8047DE00  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8047DE04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047DE08  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 8047DE0C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8047DE10  4B FF FA F1 */	bl aMR_SetNowPosition
/* 8047DE14  38 60 00 01 */	li r3, 1
/* 8047DE18  48 00 00 60 */	b lbl_8047DE78
lbl_8047DE1C:
/* 8047DE1C  3C 80 80 69 */	lis r4, pos0_5769@ha /* 0x8068A208@ha */
/* 8047DE20  7F A3 EB 78 */	mr r3, r29
/* 8047DE24  38 E4 A2 08 */	addi r7, r4, pos0_5769@l /* 0x8068A208@l */
/* 8047DE28  38 81 00 14 */	addi r4, r1, 0x14
/* 8047DE2C  80 C7 00 00 */	lwz r6, 0(r7)
/* 8047DE30  80 A7 00 04 */	lwz r5, 4(r7)
/* 8047DE34  80 07 00 08 */	lwz r0, 8(r7)
/* 8047DE38  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8047DE3C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8047DE40  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8047DE44  4B FF FA BD */	bl aMR_SetNowPosition
/* 8047DE48  3C 80 80 69 */	lis r4, pos0_5769@ha /* 0x8068A208@ha */
/* 8047DE4C  7F C3 F3 78 */	mr r3, r30
/* 8047DE50  38 E4 A2 08 */	addi r7, r4, pos0_5769@l /* 0x8068A208@l */
/* 8047DE54  38 81 00 08 */	addi r4, r1, 8
/* 8047DE58  80 C7 00 00 */	lwz r6, 0(r7)
/* 8047DE5C  80 A7 00 04 */	lwz r5, 4(r7)
/* 8047DE60  80 07 00 08 */	lwz r0, 8(r7)
/* 8047DE64  90 C1 00 08 */	stw r6, 8(r1)
/* 8047DE68  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8047DE6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8047DE70  4B FF FA 91 */	bl aMR_SetNowPosition
/* 8047DE74  38 60 00 01 */	li r3, 1
lbl_8047DE78:
/* 8047DE78  39 61 01 70 */	addi r11, r1, 0x170
/* 8047DE7C  4B C1 D0 A5 */	bl func_8009AF20
/* 8047DE80  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8047DE84  7C 08 03 A6 */	mtlr r0
/* 8047DE88  38 21 01 70 */	addi r1, r1, 0x170
/* 8047DE8C  4E 80 00 20 */	blr 
