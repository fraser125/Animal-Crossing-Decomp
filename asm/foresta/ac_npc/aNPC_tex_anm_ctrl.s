lbl_8052D5E0:
/* 8052D5E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052D5E4  7C 08 02 A6 */	mflr r0
/* 8052D5E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052D5EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8052D5F0  4B B6 D8 E1 */	bl func_8009AED0
/* 8052D5F4  7C 7F 1B 78 */	mr r31, r3
/* 8052D5F8  3B 80 00 00 */	li r28, 0
/* 8052D5FC  3B BF 07 1C */	addi r29, r31, 0x71c
lbl_8052D600:
/* 8052D600  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8052D604  8B DD 00 00 */	lbz r30, 0(r29)
/* 8052D608  28 00 00 00 */	cmplwi r0, 0
/* 8052D60C  40 82 00 94 */	bne lbl_8052D6A0
/* 8052D610  2C 1C 00 01 */	cmpwi r28, 1
/* 8052D614  40 82 00 68 */	bne lbl_8052D67C
/* 8052D618  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 8052D61C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8052D620  40 82 00 8C */	bne lbl_8052D6AC
/* 8052D624  7F E3 FB 78 */	mr r3, r31
/* 8052D628  4B FF FA 9D */	bl aNPC_check_kutipaku
/* 8052D62C  2C 03 00 01 */	cmpwi r3, 1
/* 8052D630  40 82 00 28 */	bne lbl_8052D658
/* 8052D634  88 1D 00 00 */	lbz r0, 0(r29)
/* 8052D638  28 00 00 00 */	cmplwi r0, 0
/* 8052D63C  40 82 00 0C */	bne lbl_8052D648
/* 8052D640  38 00 00 01 */	li r0, 1
/* 8052D644  98 1D 00 00 */	stb r0, 0(r29)
lbl_8052D648:
/* 8052D648  7F A3 EB 78 */	mr r3, r29
/* 8052D64C  7F 84 E3 78 */	mr r4, r28
/* 8052D650  4B FF FE 45 */	bl aNPC_tex_anm_ctrl_talk_seq
/* 8052D654  48 00 00 58 */	b lbl_8052D6AC
lbl_8052D658:
/* 8052D658  88 7D 00 0C */	lbz r3, 0xc(r29)
/* 8052D65C  7C 60 07 74 */	extsb r0, r3
/* 8052D660  2C 00 FF FF */	cmpwi r0, -1
/* 8052D664  41 82 00 0C */	beq lbl_8052D670
/* 8052D668  98 7D 00 04 */	stb r3, 4(r29)
/* 8052D66C  48 00 00 40 */	b lbl_8052D6AC
lbl_8052D670:
/* 8052D670  38 00 00 00 */	li r0, 0
/* 8052D674  98 1D 00 04 */	stb r0, 4(r29)
/* 8052D678  48 00 00 34 */	b lbl_8052D6AC
lbl_8052D67C:
/* 8052D67C  28 1E 00 00 */	cmplwi r30, 0
/* 8052D680  40 82 00 10 */	bne lbl_8052D690
/* 8052D684  7F A3 EB 78 */	mr r3, r29
/* 8052D688  4B FF FC 19 */	bl aNPC_tex_anm_ctrl_stop_seq
/* 8052D68C  48 00 00 20 */	b lbl_8052D6AC
lbl_8052D690:
/* 8052D690  7F A3 EB 78 */	mr r3, r29
/* 8052D694  7F 84 E3 78 */	mr r4, r28
/* 8052D698  4B FF FC A9 */	bl aNPC_tex_anm_ctrl_rnd_seq
/* 8052D69C  48 00 00 10 */	b lbl_8052D6AC
lbl_8052D6A0:
/* 8052D6A0  7F E3 FB 78 */	mr r3, r31
/* 8052D6A4  7F A4 EB 78 */	mr r4, r29
/* 8052D6A8  4B FF FF 21 */	bl aNPC_tex_anm_ctrl_fix_seq
lbl_8052D6AC:
/* 8052D6AC  88 1D 00 00 */	lbz r0, 0(r29)
/* 8052D6B0  3B 9C 00 01 */	addi r28, r28, 1
/* 8052D6B4  2C 1C 00 02 */	cmpwi r28, 2
/* 8052D6B8  98 1D 00 01 */	stb r0, 1(r29)
/* 8052D6BC  9B DD 00 00 */	stb r30, 0(r29)
/* 8052D6C0  3B BD 00 14 */	addi r29, r29, 0x14
/* 8052D6C4  41 80 FF 3C */	blt lbl_8052D600
/* 8052D6C8  88 1F 09 70 */	lbz r0, 0x970(r31)
/* 8052D6CC  28 00 00 01 */	cmplwi r0, 1
/* 8052D6D0  40 82 00 74 */	bne lbl_8052D744
/* 8052D6D4  8B 9F 09 7E */	lbz r28, 0x97e(r31)
/* 8052D6D8  7F E3 FB 78 */	mr r3, r31
/* 8052D6DC  4B FF F9 E9 */	bl aNPC_check_kutipaku
/* 8052D6E0  2C 03 00 01 */	cmpwi r3, 1
/* 8052D6E4  40 82 00 24 */	bne lbl_8052D708
/* 8052D6E8  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 8052D6EC  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8052D6F0  40 82 00 18 */	bne lbl_8052D708
/* 8052D6F4  3C 60 80 65 */	lis r3, lit_802@ha /* 0x80649278@ha */
/* 8052D6F8  3B 80 00 08 */	li r28, 8
/* 8052D6FC  C0 03 92 78 */	lfs f0, lit_802@l(r3)  /* 0x80649278@l */
/* 8052D700  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8052D704  48 00 00 3C */	b lbl_8052D740
lbl_8052D708:
/* 8052D708  2C 1C 00 00 */	cmpwi r28, 0
/* 8052D70C  40 81 00 18 */	ble lbl_8052D724
/* 8052D710  3C 60 80 65 */	lis r3, lit_802@ha /* 0x80649278@ha */
/* 8052D714  3B 9C FF FF */	addi r28, r28, -1
/* 8052D718  C0 03 92 78 */	lfs f0, lit_802@l(r3)  /* 0x80649278@l */
/* 8052D71C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8052D720  48 00 00 20 */	b lbl_8052D740
lbl_8052D724:
/* 8052D724  3C 80 80 65 */	lis r4, lit_803@ha /* 0x8064927C@ha */
/* 8052D728  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 8052D72C  C0 24 92 7C */	lfs f1, lit_803@l(r4)  /* 0x8064927C@l */
/* 8052D730  3B 80 00 00 */	li r28, 0
/* 8052D734  C0 03 92 74 */	lfs f0, data_80649274@l(r3)  /* 0x80649274@l */
/* 8052D738  D0 3F 05 30 */	stfs f1, 0x530(r31)
/* 8052D73C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_8052D740:
/* 8052D740  9B 9F 09 7E */	stb r28, 0x97e(r31)
lbl_8052D744:
/* 8052D744  39 61 00 20 */	addi r11, r1, 0x20
/* 8052D748  4B B6 D7 D5 */	bl func_8009AF1C
/* 8052D74C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052D750  7C 08 03 A6 */	mtlr r0
/* 8052D754  38 21 00 20 */	addi r1, r1, 0x20
/* 8052D758  4E 80 00 20 */	blr 
