lbl_803787D8:
/* 803787D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803787DC  7C 08 02 A6 */	mflr r0
/* 803787E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803787E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803787E8  7C 7F 1B 78 */	mr r31, r3
/* 803787EC  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 803787F0  4B FF FF 81 */	bl func_80378770
/* 803787F4  28 03 00 00 */	cmplwi r3, 0
/* 803787F8  40 82 00 6C */	bne lbl_80378864
/* 803787FC  39 00 FF FF */	li r8, -1
/* 80378800  3C 60 80 64 */	lis r3, lit_388@ha /* 0x806412FC@ha */
/* 80378804  91 01 00 08 */	stw r8, 8(r1)
/* 80378808  38 00 00 00 */	li r0, 0
/* 8037880C  C0 23 12 FC */	lfs f1, lit_388@l(r3)  /* 0x806412FC@l */
/* 80378810  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80378814  90 01 00 0C */	stw r0, 0xc(r1)
/* 80378818  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8037881C  3C A4 00 02 */	addis r5, r4, 2
/* 80378820  FC 40 08 90 */	fmr f2, f1
/* 80378824  91 01 00 10 */	stw r8, 0x10(r1)
/* 80378828  FC 60 08 90 */	fmr f3, f1
/* 8037882C  7F E4 FB 78 */	mr r4, r31
/* 80378830  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 80378834  91 01 00 14 */	stw r8, 0x14(r1)
/* 80378838  38 C0 00 00 */	li r6, 0
/* 8037883C  38 E0 00 00 */	li r7, 0
/* 80378840  91 01 00 18 */	stw r8, 0x18(r1)
/* 80378844  39 00 00 00 */	li r8, 0
/* 80378848  39 20 FF FF */	li r9, -1
/* 8037884C  39 40 FF FF */	li r10, -1
/* 80378850  A8 A5 61 52 */	lha r5, 0x6152(r5)
/* 80378854  4B FF CE F5 */	bl Actor_info_make_actor
/* 80378858  3C 60 81 13 */	lis r3, mBI_make_proc@ha /* 0x811351B8@ha */
/* 8037885C  38 00 00 00 */	li r0, 0
/* 80378860  90 03 51 B8 */	stw r0, mBI_make_proc@l(r3)  /* 0x811351B8@l */
lbl_80378864:
/* 80378864  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80378868  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8037886C  7C 08 03 A6 */	mtlr r0
/* 80378870  38 21 00 30 */	addi r1, r1, 0x30
/* 80378874  4E 80 00 20 */	blr 