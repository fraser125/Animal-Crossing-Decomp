lbl_80588B3C:
/* 80588B3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80588B40  7C 08 02 A6 */	mflr r0
/* 80588B44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80588B48  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80588B4C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80588B50  39 61 00 20 */	addi r11, r1, 0x20
/* 80588B54  4B B1 23 81 */	bl func_8009AED4
/* 80588B58  7C 7F 1B 78 */	mr r31, r3
/* 80588B5C  A0 63 00 06 */	lhz r3, 6(r3)
/* 80588B60  3F C3 FF FF */	addis r30, r3, 0xffff
/* 80588B64  3B DE 2F B2 */	addi r30, r30, 0x2fb2
/* 80588B68  2C 1E 00 04 */	cmpwi r30, 4
/* 80588B6C  40 81 00 08 */	ble lbl_80588B74
/* 80588B70  3B C0 00 00 */	li r30, 0
lbl_80588B74:
/* 80588B74  88 1F 09 95 */	lbz r0, 0x995(r31)
/* 80588B78  28 00 00 01 */	cmplwi r0, 1
/* 80588B7C  40 82 00 10 */	bne lbl_80588B8C
/* 80588B80  38 00 00 00 */	li r0, 0
/* 80588B84  98 1F 09 95 */	stb r0, 0x995(r31)
/* 80588B88  48 00 01 20 */	b lbl_80588CA8
lbl_80588B8C:
/* 80588B8C  88 9F 09 98 */	lbz r4, 0x998(r31)
/* 80588B90  3C 60 80 6C */	lis r3, aTS0_endRatio@ha /* 0x806C1E70@ha */
/* 80588B94  38 63 1E 70 */	addi r3, r3, aTS0_endRatio@l /* 0x806C1E70@l */
/* 80588B98  C0 3F 09 9C */	lfs f1, 0x99c(r31)
/* 80588B9C  7C 84 07 74 */	extsb r4, r4
/* 80588BA0  54 80 10 3A */	slwi r0, r4, 2
/* 80588BA4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80588BA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588BAC  4C 41 13 82 */	cror 2, 1, 2
/* 80588BB0  40 82 00 F8 */	bne lbl_80588CA8
/* 80588BB4  38 C4 00 01 */	addi r6, r4, 1
/* 80588BB8  38 A0 00 0A */	li r5, 0xa
/* 80588BBC  7C 86 2B D6 */	divw r4, r6, r5
/* 80588BC0  3C 60 81 1F */	lis r3, aTS0_failure_actor_p@ha /* 0x811ED3D8@ha */
/* 80588BC4  80 03 D3 D8 */	lwz r0, aTS0_failure_actor_p@l(r3)  /* 0x811ED3D8@l */
/* 80588BC8  28 00 00 00 */	cmplwi r0, 0
/* 80588BCC  7C 04 29 D6 */	mullw r0, r4, r5
/* 80588BD0  7C 00 30 50 */	subf r0, r0, r6
/* 80588BD4  7C 1D 07 74 */	extsb r29, r0
/* 80588BD8  40 82 00 7C */	bne lbl_80588C54
/* 80588BDC  7F A0 07 75 */	extsb. r0, r29
/* 80588BE0  41 82 00 74 */	beq lbl_80588C54
/* 80588BE4  2C 1D 00 09 */	cmpwi r29, 9
/* 80588BE8  41 82 00 6C */	beq lbl_80588C54
/* 80588BEC  4B AD 41 09 */	bl fqrand
/* 80588BF0  3C 60 80 6C */	lis r3, chk_failure_rate@ha /* 0x806C1F98@ha */
/* 80588BF4  57 C0 10 3A */	slwi r0, r30, 2
/* 80588BF8  38 63 1F 98 */	addi r3, r3, chk_failure_rate@l /* 0x806C1F98@l */
/* 80588BFC  7C 03 04 2E */	lfsx f0, r3, r0
/* 80588C00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588C04  40 80 00 50 */	bge lbl_80588C54
/* 80588C08  3C 60 80 65 */	lis r3, lit_601@ha /* 0x80649B28@ha */
/* 80588C0C  C3 E3 9B 28 */	lfs f31, lit_601@l(r3)  /* 0x80649B28@l */
lbl_80588C10:
/* 80588C10  4B AD 40 E5 */	bl fqrand
/* 80588C14  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80588C18  FC 00 00 1E */	fctiwz f0, f0
/* 80588C1C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80588C20  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80588C24  38 03 00 01 */	addi r0, r3, 1
/* 80588C28  7C 04 07 74 */	extsb r4, r0
/* 80588C2C  7C 04 E8 00 */	cmpw r4, r29
/* 80588C30  41 82 FF E0 */	beq lbl_80588C10
/* 80588C34  38 00 00 02 */	li r0, 2
/* 80588C38  7F E3 FB 78 */	mr r3, r31
/* 80588C3C  98 1F 09 96 */	stb r0, 0x996(r31)
/* 80588C40  98 9F 09 94 */	stb r4, 0x994(r31)
/* 80588C44  4B FF FE 21 */	bl aTS0_setup_morph
/* 80588C48  3C 60 81 1F */	lis r3, aTS0_failure_actor_p@ha /* 0x811ED3D8@ha */
/* 80588C4C  93 E3 D3 D8 */	stw r31, aTS0_failure_actor_p@l(r3)  /* 0x811ED3D8@l */
/* 80588C50  48 00 00 58 */	b lbl_80588CA8
lbl_80588C54:
/* 80588C54  A0 1F 00 06 */	lhz r0, 6(r31)
/* 80588C58  28 00 D0 78 */	cmplwi r0, 0xd078
/* 80588C5C  40 82 00 38 */	bne lbl_80588C94
/* 80588C60  4B AD 40 95 */	bl fqrand
/* 80588C64  3C 60 80 65 */	lis r3, lit_554@ha /* 0x80649B1C@ha */
/* 80588C68  C0 03 9B 1C */	lfs f0, lit_554@l(r3)  /* 0x80649B1C@l */
/* 80588C6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588C70  40 80 00 24 */	bge lbl_80588C94
/* 80588C74  7F E3 FB 78 */	mr r3, r31
/* 80588C78  38 80 00 0C */	li r4, 0xc
/* 80588C7C  4B FF FC 2D */	bl aTS0_set_animation2
/* 80588C80  38 00 00 04 */	li r0, 4
/* 80588C84  7F E3 FB 78 */	mr r3, r31
/* 80588C88  98 1F 09 96 */	stb r0, 0x996(r31)
/* 80588C8C  4B FF FD D9 */	bl aTS0_setup_morph
/* 80588C90  48 00 00 18 */	b lbl_80588CA8
lbl_80588C94:
/* 80588C94  9B BF 09 94 */	stb r29, 0x994(r31)
/* 80588C98  7F E3 FB 78 */	mr r3, r31
/* 80588C9C  4B FF FD C9 */	bl aTS0_setup_morph
/* 80588CA0  7F E3 FB 78 */	mr r3, r31
/* 80588CA4  4B FF FC E5 */	bl aTS0_setup_delay_cnt
lbl_80588CA8:
/* 80588CA8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80588CAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80588CB0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80588CB4  4B B1 22 6D */	bl func_8009AF20
/* 80588CB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80588CBC  7C 08 03 A6 */	mtlr r0
/* 80588CC0  38 21 00 30 */	addi r1, r1, 0x30
/* 80588CC4  4E 80 00 20 */	blr 
