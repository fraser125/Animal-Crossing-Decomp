lbl_80419834:
/* 80419834  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80419838  7C 08 02 A6 */	mflr r0
/* 8041983C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80419840  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80419844  7C 7F 1B 78 */	mr r31, r3
/* 80419848  4B C4 34 AD */	bl fqrand
/* 8041984C  3C 80 80 64 */	lis r4, lit_505@ha /* 0x80643D30@ha */
/* 80419850  7F E3 FB 78 */	mr r3, r31
/* 80419854  C0 04 3D 30 */	lfs f0, lit_505@l(r4)  /* 0x80643D30@l */
/* 80419858  EC 00 00 72 */	fmuls f0, f0, f1
/* 8041985C  FC 00 00 1E */	fctiwz f0, f0
/* 80419860  D8 01 00 08 */	stfd f0, 8(r1)
/* 80419864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80419868  4B FF FF 21 */	bl aEvMgr_actor_set_broker_handbill_str
/* 8041986C  3C 60 80 68 */	lis r3, data_80681D08@ha /* 0x80681D08@ha */
/* 80419870  57 E0 10 3A */	slwi r0, r31, 2
/* 80419874  38 63 1D 08 */	addi r3, r3, data_80681D08@l /* 0x80681D08@l */
/* 80419878  38 80 00 36 */	li r4, 0x36
/* 8041987C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80419880  38 A0 00 03 */	li r5, 3
/* 80419884  4B FF FD 4D */	bl aEvMgr_actor_regist_handbill
/* 80419888  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041988C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80419890  7C 08 03 A6 */	mtlr r0
/* 80419894  38 21 00 20 */	addi r1, r1, 0x20
/* 80419898  4E 80 00 20 */	blr 
