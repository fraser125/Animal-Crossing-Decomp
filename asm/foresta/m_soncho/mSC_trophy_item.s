lbl_803EC4DC:
/* 803EC4DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC4E0  7C 08 02 A6 */	mflr r0
/* 803EC4E4  38 80 28 00 */	li r4, 0x2800
/* 803EC4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC4EC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803EC4F0  28 00 00 1C */	cmplwi r0, 0x1c
/* 803EC4F4  40 80 00 C8 */	bge lbl_803EC5BC
/* 803EC4F8  28 00 00 19 */	cmplwi r0, 0x19
/* 803EC4FC  41 81 00 B0 */	bgt lbl_803EC5AC
/* 803EC500  3C 80 80 66 */	lis r4, lit_597@ha /* 0x8065DB4C@ha */
/* 803EC504  54 00 10 3A */	slwi r0, r0, 2
/* 803EC508  38 84 DB 4C */	addi r4, r4, lit_597@l /* 0x8065DB4C@l */
/* 803EC50C  7C 04 00 2E */	lwzx r0, r4, r0
/* 803EC510  7C 09 03 A6 */	mtctr r0
/* 803EC514  4E 80 04 20 */	bctr 
lbl_803EC518:
/* 803EC518  4B C7 07 DD */	bl fqrand
/* 803EC51C  3C 60 80 64 */	lis r3, data_806431E4@ha /* 0x806431E4@ha */
/* 803EC520  C0 03 31 E4 */	lfs f0, data_806431E4@l(r3)  /* 0x806431E4@l */
/* 803EC524  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EC528  FC 00 00 1E */	fctiwz f0, f0
/* 803EC52C  D8 01 00 08 */	stfd f0, 8(r1)
/* 803EC530  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803EC534  54 03 07 3E */	clrlwi r3, r0, 0x1c
/* 803EC538  38 03 2B 00 */	addi r0, r3, 0x2b00
/* 803EC53C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803EC540  48 00 00 7C */	b lbl_803EC5BC
lbl_803EC544:
/* 803EC544  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EC548  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EC54C  3C 63 00 02 */	addis r3, r3, 2
/* 803EC550  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803EC554  88 03 00 14 */	lbz r0, 0x14(r3)
/* 803EC558  7C 00 07 75 */	extsb. r0, r0
/* 803EC55C  40 82 00 0C */	bne lbl_803EC568
/* 803EC560  38 80 30 94 */	li r4, 0x3094
/* 803EC564  48 00 00 58 */	b lbl_803EC5BC
lbl_803EC568:
/* 803EC568  38 80 30 A4 */	li r4, 0x30a4
/* 803EC56C  48 00 00 50 */	b lbl_803EC5BC
lbl_803EC570:
/* 803EC570  4B FF F7 91 */	bl mSP_GetRandomStationToyItemNo
/* 803EC574  7C 64 1B 78 */	mr r4, r3
/* 803EC578  48 00 00 44 */	b lbl_803EC5BC
lbl_803EC57C:
/* 803EC57C  4B C7 07 79 */	bl fqrand
/* 803EC580  3C 60 80 64 */	lis r3, lit_596@ha /* 0x806431E8@ha */
/* 803EC584  38 80 00 00 */	li r4, 0
/* 803EC588  C0 03 31 E8 */	lfs f0, lit_596@l(r3)  /* 0x806431E8@l */
/* 803EC58C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EC590  FC 00 00 1E */	fctiwz f0, f0
/* 803EC594  D8 01 00 08 */	stfd f0, 8(r1)
/* 803EC598  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803EC59C  38 63 04 DE */	addi r3, r3, 0x4de
/* 803EC5A0  4B FF B2 35 */	bl mRmTp_FtrIdx2FtrItemNo
/* 803EC5A4  7C 64 1B 78 */	mr r4, r3
/* 803EC5A8  48 00 00 14 */	b lbl_803EC5BC
lbl_803EC5AC:
/* 803EC5AC  3C 80 80 66 */	lis r4, soncho_item_table@ha /* 0x8065DB14@ha */
/* 803EC5B0  54 60 0D FC */	rlwinm r0, r3, 1, 0x17, 0x1e
/* 803EC5B4  38 64 DB 14 */	addi r3, r4, soncho_item_table@l /* 0x8065DB14@l */
/* 803EC5B8  7C 83 02 2E */	lhzx r4, r3, r0
lbl_803EC5BC:
/* 803EC5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EC5C0  7C 83 23 78 */	mr r3, r4
/* 803EC5C4  7C 08 03 A6 */	mtlr r0
/* 803EC5C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803EC5CC  4E 80 00 20 */	blr 
