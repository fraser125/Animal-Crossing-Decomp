lbl_80523B88:
/* 80523B88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80523B8C  7C 08 02 A6 */	mflr r0
/* 80523B90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80523B94  39 61 00 20 */	addi r11, r1, 0x20
/* 80523B98  4B B7 73 3D */	bl func_8009AED4
/* 80523B9C  7C 9E 23 78 */	mr r30, r4
/* 80523BA0  7C 7D 1B 78 */	mr r29, r3
/* 80523BA4  7C BF 2B 78 */	mr r31, r5
/* 80523BA8  7F C3 F3 78 */	mr r3, r30
/* 80523BAC  4B FF FD 19 */	bl aESNT_check_pl_cloth
/* 80523BB0  2C 03 00 01 */	cmpwi r3, 1
/* 80523BB4  40 82 00 98 */	bne lbl_80523C4C
/* 80523BB8  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 80523BBC  28 00 00 0A */	cmplwi r0, 0xa
/* 80523BC0  41 80 00 28 */	blt lbl_80523BE8
/* 80523BC4  4B B3 91 31 */	bl fqrand
/* 80523BC8  3C 60 80 65 */	lis r3, data_8064917C@ha /* 0x8064917C@ha */
/* 80523BCC  C0 03 91 7C */	lfs f0, data_8064917C@l(r3)  /* 0x8064917C@l */
/* 80523BD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80523BD4  FC 00 00 1E */	fctiwz f0, f0
/* 80523BD8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80523BDC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80523BE0  38 63 00 15 */	addi r3, r3, 0x15
/* 80523BE4  48 00 00 8C */	b lbl_80523C70
lbl_80523BE8:
/* 80523BE8  88 1F 00 01 */	lbz r0, 1(r31)
/* 80523BEC  28 00 00 00 */	cmplwi r0, 0
/* 80523BF0  40 82 00 10 */	bne lbl_80523C00
/* 80523BF4  7F E3 FB 78 */	mr r3, r31
/* 80523BF8  4B FF FF 65 */	bl aESNT_after_talk_restart_Q_decide_talk_data_idx
/* 80523BFC  48 00 00 74 */	b lbl_80523C70
lbl_80523C00:
/* 80523C00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80523C04  A0 9F 00 04 */	lhz r4, 4(r31)
/* 80523C08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80523C0C  3C 63 00 02 */	addis r3, r3, 2
/* 80523C10  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80523C14  A0 03 10 8A */	lhz r0, 0x108a(r3)
/* 80523C18  7C 04 00 40 */	cmplw r4, r0
/* 80523C1C  40 82 00 1C */	bne lbl_80523C38
/* 80523C20  7F A3 EB 78 */	mr r3, r29
/* 80523C24  7F C4 F3 78 */	mr r4, r30
/* 80523C28  7F E5 FB 78 */	mr r5, r31
/* 80523C2C  38 C0 00 01 */	li r6, 1
/* 80523C30  4B FF FC E1 */	bl aESNT_before_talk_present_decide_talk_data_idx
/* 80523C34  48 00 00 3C */	b lbl_80523C70
lbl_80523C38:
/* 80523C38  7F E3 FB 78 */	mr r3, r31
/* 80523C3C  4B FF FF 21 */	bl aESNT_after_talk_restart_Q_decide_talk_data_idx
/* 80523C40  38 00 00 01 */	li r0, 1
/* 80523C44  98 1F 00 01 */	stb r0, 1(r31)
/* 80523C48  48 00 00 28 */	b lbl_80523C70
lbl_80523C4C:
/* 80523C4C  38 00 00 00 */	li r0, 0
/* 80523C50  98 1F 00 01 */	stb r0, 1(r31)
/* 80523C54  4B B3 90 A1 */	bl fqrand
/* 80523C58  3C 60 80 65 */	lis r3, data_8064917C@ha /* 0x8064917C@ha */
/* 80523C5C  C0 03 91 7C */	lfs f0, data_8064917C@l(r3)  /* 0x8064917C@l */
/* 80523C60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80523C64  FC 00 00 1E */	fctiwz f0, f0
/* 80523C68  D8 01 00 08 */	stfd f0, 8(r1)
/* 80523C6C  80 61 00 0C */	lwz r3, 0xc(r1)
lbl_80523C70:
/* 80523C70  39 61 00 20 */	addi r11, r1, 0x20
/* 80523C74  4B B7 72 AD */	bl func_8009AF20
/* 80523C78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80523C7C  7C 08 03 A6 */	mtlr r0
/* 80523C80  38 21 00 20 */	addi r1, r1, 0x20
/* 80523C84  4E 80 00 20 */	blr 
