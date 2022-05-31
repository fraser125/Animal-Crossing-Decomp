lbl_8051D670:
/* 8051D670  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051D674  7C 08 02 A6 */	mflr r0
/* 8051D678  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051D67C  39 61 00 30 */	addi r11, r1, 0x30
/* 8051D680  4B B7 D8 4D */	bl func_8009AECC
/* 8051D684  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051D688  7C 7F 1B 78 */	mr r31, r3
/* 8051D68C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8051D690  3F 64 00 02 */	addis r27, r4, 2
/* 8051D694  3B 7B 04 A4 */	addi r27, r27, 0x4a4
/* 8051D698  4B FF F9 D1 */	bl aEDSN_check_present
/* 8051D69C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051D6A0  7C 7D 1B 78 */	mr r29, r3
/* 8051D6A4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8051D6A8  3B C0 00 05 */	li r30, 5
/* 8051D6AC  3F 83 00 02 */	addis r28, r3, 2
/* 8051D6B0  38 80 00 02 */	li r4, 2
/* 8051D6B4  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 8051D6B8  38 A0 00 03 */	li r5, 3
/* 8051D6BC  38 C0 00 00 */	li r6, 0
/* 8051D6C0  A0 63 10 8A */	lhz r3, 0x108a(r3)
/* 8051D6C4  4B EC B1 FD */	bl mSP_SearchItemCategoryPriority
/* 8051D6C8  2C 03 00 01 */	cmpwi r3, 1
/* 8051D6CC  40 82 00 10 */	bne lbl_8051D6DC
/* 8051D6D0  38 00 00 01 */	li r0, 1
/* 8051D6D4  98 1F 09 A2 */	stb r0, 0x9a2(r31)
/* 8051D6D8  48 00 00 0C */	b lbl_8051D6E4
lbl_8051D6DC:
/* 8051D6DC  38 00 00 00 */	li r0, 0
/* 8051D6E0  98 1F 09 A2 */	stb r0, 0x9a2(r31)
lbl_8051D6E4:
/* 8051D6E4  88 1F 09 A3 */	lbz r0, 0x9a3(r31)
/* 8051D6E8  28 00 00 01 */	cmplwi r0, 1
/* 8051D6EC  40 82 00 30 */	bne lbl_8051D71C
/* 8051D6F0  4B B3 F6 05 */	bl fqrand
/* 8051D6F4  3C 60 80 65 */	lis r3, data_806490CC@ha /* 0x806490CC@ha */
/* 8051D6F8  38 00 00 00 */	li r0, 0
/* 8051D6FC  C0 03 90 CC */	lfs f0, data_806490CC@l(r3)  /* 0x806490CC@l */
/* 8051D700  98 1F 09 95 */	stb r0, 0x995(r31)
/* 8051D704  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051D708  FC 00 00 1E */	fctiwz f0, f0
/* 8051D70C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051D710  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8051D714  3B 63 00 15 */	addi r27, r3, 0x15
/* 8051D718  48 00 00 C4 */	b lbl_8051D7DC
lbl_8051D71C:
/* 8051D71C  2C 1D FF FF */	cmpwi r29, -1
/* 8051D720  41 82 00 40 */	beq lbl_8051D760
/* 8051D724  57 A0 08 3C */	slwi r0, r29, 1
/* 8051D728  38 80 00 02 */	li r4, 2
/* 8051D72C  7C 7B 02 14 */	add r3, r27, r0
/* 8051D730  38 A0 00 03 */	li r5, 3
/* 8051D734  A0 63 00 40 */	lhz r3, 0x40(r3)
/* 8051D738  38 C0 00 00 */	li r6, 0
/* 8051D73C  4B EC B1 85 */	bl mSP_SearchItemCategoryPriority
/* 8051D740  38 63 FF FF */	addi r3, r3, -1
/* 8051D744  38 00 00 00 */	li r0, 0
/* 8051D748  30 63 FF FF */	addic r3, r3, -1
/* 8051D74C  98 1F 09 95 */	stb r0, 0x995(r31)
/* 8051D750  7C 63 19 10 */	subfe r3, r3, r3
/* 8051D754  38 03 00 12 */	addi r0, r3, 0x12
/* 8051D758  7C 1B 03 78 */	mr r27, r0
/* 8051D75C  48 00 00 80 */	b lbl_8051D7DC
lbl_8051D760:
/* 8051D760  3C 60 C0 00 */	lis r3, 0xc000
/* 8051D764  4B E7 D2 B5 */	bl mEv_CheckEvent
/* 8051D768  2C 03 00 01 */	cmpwi r3, 1
/* 8051D76C  40 82 00 0C */	bne lbl_8051D778
/* 8051D770  38 60 00 08 */	li r3, 8
/* 8051D774  48 00 00 4C */	b lbl_8051D7C0
lbl_8051D778:
/* 8051D778  4B B3 F5 7D */	bl fqrand
/* 8051D77C  3C 60 80 65 */	lis r3, lit_636@ha /* 0x806490D0@ha */
/* 8051D780  80 9C 61 3C */	lwz r4, 0x613c(r28)
/* 8051D784  38 A3 90 D0 */	addi r5, r3, lit_636@l /* 0x806490D0@l */
/* 8051D788  C0 05 00 00 */	lfs f0, 0(r5)
/* 8051D78C  3C 60 80 6A */	lis r3, msg_start_idx@ha /* 0x806A0460@ha */
/* 8051D790  88 04 00 14 */	lbz r0, 0x14(r4)
/* 8051D794  38 63 04 60 */	addi r3, r3, msg_start_idx@l /* 0x806A0460@l */
/* 8051D798  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051D79C  7C 00 07 74 */	extsb r0, r0
/* 8051D7A0  20 00 00 01 */	subfic r0, r0, 1
/* 8051D7A4  FC 00 00 1E */	fctiwz f0, f0
/* 8051D7A8  7C 00 00 34 */	cntlzw r0, r0
/* 8051D7AC  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 8051D7B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8051D7B4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051D7B8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8051D7BC  7C 60 1A 14 */	add r3, r0, r3
lbl_8051D7C0:
/* 8051D7C0  38 00 FF FF */	li r0, -1
/* 8051D7C4  7C 7B 1B 78 */	mr r27, r3
/* 8051D7C8  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 8051D7CC  7F E3 FB 78 */	mr r3, r31
/* 8051D7D0  3B C0 00 00 */	li r30, 0
/* 8051D7D4  38 80 00 01 */	li r4, 1
/* 8051D7D8  4B FF F8 35 */	bl func_8051D00C
lbl_8051D7DC:
/* 8051D7DC  7F E3 FB 78 */	mr r3, r31
/* 8051D7E0  7F 64 DB 78 */	mr r4, r27
/* 8051D7E4  4B FF F8 F9 */	bl aEDSN_get_msg_no
/* 8051D7E8  4B E7 AD 2D */	bl mDemo_Set_msg_num
/* 8051D7EC  7F E3 FB 78 */	mr r3, r31
/* 8051D7F0  7F C4 F3 78 */	mr r4, r30
/* 8051D7F4  4B FF FD A5 */	bl aEDSN_change_talk_proc
/* 8051D7F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8051D7FC  4B B7 D7 1D */	bl func_8009AF18
/* 8051D800  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051D804  7C 08 03 A6 */	mtlr r0
/* 8051D808  38 21 00 30 */	addi r1, r1, 0x30
/* 8051D80C  4E 80 00 20 */	blr 
