lbl_804964B4:
/* 804964B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804964B8  7C 08 02 A6 */	mflr r0
/* 804964BC  3C A0 80 64 */	lis r5, lit_507@ha /* 0x80644CB4@ha */
/* 804964C0  3C 60 80 64 */	lis r3, lit_508@ha /* 0x80644CB8@ha */
/* 804964C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804964C8  38 C5 4C B4 */	addi r6, r5, lit_507@l /* 0x80644CB4@l */
/* 804964CC  C0 03 4C B8 */	lfs f0, lit_508@l(r3)  /* 0x80644CB8@l */
/* 804964D0  3C 60 80 64 */	lis r3, lit_509@ha /* 0x80644CBC@ha */
/* 804964D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804964D8  7C 9F 23 78 */	mr r31, r4
/* 804964DC  C0 26 00 00 */	lfs f1, 0(r6)
/* 804964E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804964E4  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 804964E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804964EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804964F0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 804964F4  C0 23 4C BC */	lfs f1, lit_509@l(r3)  /* 0x80644CBC@l */
/* 804964F8  38 61 00 08 */	addi r3, r1, 8
/* 804964FC  90 81 00 08 */	stw r4, 8(r1)
/* 80496500  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80496504  90 01 00 10 */	stw r0, 0x10(r1)
/* 80496508  4B EF 94 91 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8049650C  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644CC0@ha */
/* 80496510  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80496514  38 83 4C C0 */	addi r4, r3, lit_510@l /* 0x80644CC0@l */
/* 80496518  7F E3 FB 78 */	mr r3, r31
/* 8049651C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80496520  38 81 00 14 */	addi r4, r1, 0x14
/* 80496524  38 A0 00 09 */	li r5, 9
/* 80496528  FC 40 08 90 */	fmr f2, f1
/* 8049652C  FC 60 08 90 */	fmr f3, f1
/* 80496530  4B EE A4 29 */	bl Camera2_request_main_demo_fromNowPos2
/* 80496534  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80496538  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8049653C  7C 08 03 A6 */	mtlr r0
/* 80496540  38 21 00 30 */	addi r1, r1, 0x30
/* 80496544  4E 80 00 20 */	blr 