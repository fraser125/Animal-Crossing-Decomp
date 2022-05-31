lbl_8053C1D8:
/* 8053C1D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053C1DC  7C 08 02 A6 */	mflr r0
/* 8053C1E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053C1E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8053C1E8  4B B5 EC E9 */	bl func_8009AED0
/* 8053C1EC  7C 7F 1B 78 */	mr r31, r3
/* 8053C1F0  3B 80 00 00 */	li r28, 0
/* 8053C1F4  3B BF 07 1C */	addi r29, r31, 0x71c
lbl_8053C1F8:
/* 8053C1F8  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8053C1FC  8B DD 00 00 */	lbz r30, 0(r29)
/* 8053C200  28 00 00 00 */	cmplwi r0, 0
/* 8053C204  40 82 00 94 */	bne lbl_8053C298
/* 8053C208  2C 1C 00 01 */	cmpwi r28, 1
/* 8053C20C  40 82 00 68 */	bne lbl_8053C274
/* 8053C210  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 8053C214  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8053C218  40 82 00 8C */	bne lbl_8053C2A4
/* 8053C21C  7F E3 FB 78 */	mr r3, r31
/* 8053C220  4B FF FA 9D */	bl aNPC_check_kutipaku
/* 8053C224  2C 03 00 01 */	cmpwi r3, 1
/* 8053C228  40 82 00 28 */	bne lbl_8053C250
/* 8053C22C  88 1D 00 00 */	lbz r0, 0(r29)
/* 8053C230  28 00 00 00 */	cmplwi r0, 0
/* 8053C234  40 82 00 0C */	bne lbl_8053C240
/* 8053C238  38 00 00 01 */	li r0, 1
/* 8053C23C  98 1D 00 00 */	stb r0, 0(r29)
lbl_8053C240:
/* 8053C240  7F A3 EB 78 */	mr r3, r29
/* 8053C244  7F 84 E3 78 */	mr r4, r28
/* 8053C248  4B FF FE 45 */	bl aNPC_tex_anm_ctrl_talk_seq
/* 8053C24C  48 00 00 58 */	b lbl_8053C2A4
lbl_8053C250:
/* 8053C250  88 7D 00 0C */	lbz r3, 0xc(r29)
/* 8053C254  7C 60 07 74 */	extsb r0, r3
/* 8053C258  2C 00 FF FF */	cmpwi r0, -1
/* 8053C25C  41 82 00 0C */	beq lbl_8053C268
/* 8053C260  98 7D 00 04 */	stb r3, 4(r29)
/* 8053C264  48 00 00 40 */	b lbl_8053C2A4
lbl_8053C268:
/* 8053C268  38 00 00 00 */	li r0, 0
/* 8053C26C  98 1D 00 04 */	stb r0, 4(r29)
/* 8053C270  48 00 00 34 */	b lbl_8053C2A4
lbl_8053C274:
/* 8053C274  28 1E 00 00 */	cmplwi r30, 0
/* 8053C278  40 82 00 10 */	bne lbl_8053C288
/* 8053C27C  7F A3 EB 78 */	mr r3, r29
/* 8053C280  4B FF FC 19 */	bl aNPC_tex_anm_ctrl_stop_seq
/* 8053C284  48 00 00 20 */	b lbl_8053C2A4
lbl_8053C288:
/* 8053C288  7F A3 EB 78 */	mr r3, r29
/* 8053C28C  7F 84 E3 78 */	mr r4, r28
/* 8053C290  4B FF FC A9 */	bl aNPC_tex_anm_ctrl_rnd_seq
/* 8053C294  48 00 00 10 */	b lbl_8053C2A4
lbl_8053C298:
/* 8053C298  7F E3 FB 78 */	mr r3, r31
/* 8053C29C  7F A4 EB 78 */	mr r4, r29
/* 8053C2A0  4B FF FF 21 */	bl aNPC_tex_anm_ctrl_fix_seq
lbl_8053C2A4:
/* 8053C2A4  88 1D 00 00 */	lbz r0, 0(r29)
/* 8053C2A8  3B 9C 00 01 */	addi r28, r28, 1
/* 8053C2AC  2C 1C 00 02 */	cmpwi r28, 2
/* 8053C2B0  98 1D 00 01 */	stb r0, 1(r29)
/* 8053C2B4  9B DD 00 00 */	stb r30, 0(r29)
/* 8053C2B8  3B BD 00 14 */	addi r29, r29, 0x14
/* 8053C2BC  41 80 FF 3C */	blt lbl_8053C1F8
/* 8053C2C0  88 1F 09 70 */	lbz r0, 0x970(r31)
/* 8053C2C4  28 00 00 01 */	cmplwi r0, 1
/* 8053C2C8  40 82 00 74 */	bne lbl_8053C33C
/* 8053C2CC  8B 9F 09 7E */	lbz r28, 0x97e(r31)
/* 8053C2D0  7F E3 FB 78 */	mr r3, r31
/* 8053C2D4  4B FF F9 E9 */	bl aNPC_check_kutipaku
/* 8053C2D8  2C 03 00 01 */	cmpwi r3, 1
/* 8053C2DC  40 82 00 24 */	bne lbl_8053C300
/* 8053C2E0  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 8053C2E4  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8053C2E8  40 82 00 18 */	bne lbl_8053C300
/* 8053C2EC  3C 60 80 65 */	lis r3, lit_795@ha /* 0x80649378@ha */
/* 8053C2F0  3B 80 00 08 */	li r28, 8
/* 8053C2F4  C0 03 93 78 */	lfs f0, lit_795@l(r3)  /* 0x80649378@l */
/* 8053C2F8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8053C2FC  48 00 00 3C */	b lbl_8053C338
lbl_8053C300:
/* 8053C300  2C 1C 00 00 */	cmpwi r28, 0
/* 8053C304  40 81 00 18 */	ble lbl_8053C31C
/* 8053C308  3C 60 80 65 */	lis r3, lit_795@ha /* 0x80649378@ha */
/* 8053C30C  3B 9C FF FF */	addi r28, r28, -1
/* 8053C310  C0 03 93 78 */	lfs f0, lit_795@l(r3)  /* 0x80649378@l */
/* 8053C314  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8053C318  48 00 00 20 */	b lbl_8053C338
lbl_8053C31C:
/* 8053C31C  3C 80 80 65 */	lis r4, lit_796@ha /* 0x8064937C@ha */
/* 8053C320  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 8053C324  C0 24 93 7C */	lfs f1, lit_796@l(r4)  /* 0x8064937C@l */
/* 8053C328  3B 80 00 00 */	li r28, 0
/* 8053C32C  C0 03 93 74 */	lfs f0, data_80649374@l(r3)  /* 0x80649374@l */
/* 8053C330  D0 3F 05 30 */	stfs f1, 0x530(r31)
/* 8053C334  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_8053C338:
/* 8053C338  9B 9F 09 7E */	stb r28, 0x97e(r31)
lbl_8053C33C:
/* 8053C33C  39 61 00 20 */	addi r11, r1, 0x20
/* 8053C340  4B B5 EB DD */	bl func_8009AF1C
/* 8053C344  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053C348  7C 08 03 A6 */	mtlr r0
/* 8053C34C  38 21 00 20 */	addi r1, r1, 0x20
/* 8053C350  4E 80 00 20 */	blr 
