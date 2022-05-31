lbl_804CD92C:
/* 804CD92C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CD930  7C 08 02 A6 */	mflr r0
/* 804CD934  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CD938  39 61 00 20 */	addi r11, r1, 0x20
/* 804CD93C  4B BC D5 91 */	bl func_8009AECC
/* 804CD940  7C 9B 23 78 */	mr r27, r4
/* 804CD944  3C 60 81 1D */	lis r3, data_811D0840@ha /* 0x811D0840@ha */
/* 804CD948  38 83 08 40 */	addi r4, r3, data_811D0840@l /* 0x811D0840@l */
/* 804CD94C  80 7B 00 00 */	lwz r3, 0(r27)
/* 804CD950  3B A4 24 34 */	addi r29, r4, 0x2434
/* 804CD954  3B 84 01 D4 */	addi r28, r4, 0x1d4
/* 804CD958  4B F1 77 B1 */	bl _texture_z_light_fog_prim
/* 804CD95C  80 7B 00 00 */	lwz r3, 0(r27)
/* 804CD960  4B F1 77 F9 */	bl _texture_z_light_fog_prim_xlu
/* 804CD964  3C 60 80 6A */	lis r3, data_8069BC10@ha /* 0x8069BC10@ha */
/* 804CD968  3B C0 00 00 */	li r30, 0
/* 804CD96C  3B E3 BC 10 */	addi r31, r3, data_8069BC10@l /* 0x8069BC10@l */
lbl_804CD970:
/* 804CD970  88 1D 00 00 */	lbz r0, 0(r29)
/* 804CD974  28 00 00 00 */	cmplwi r0, 0
/* 804CD978  41 82 00 24 */	beq lbl_804CD99C
/* 804CD97C  A8 1C 00 02 */	lha r0, 2(r28)
/* 804CD980  7F 83 E3 78 */	mr r3, r28
/* 804CD984  7F 64 DB 78 */	mr r4, r27
/* 804CD988  54 00 10 3A */	slwi r0, r0, 2
/* 804CD98C  7C BF 00 2E */	lwzx r5, r31, r0
/* 804CD990  81 85 00 0C */	lwz r12, 0xc(r5)
/* 804CD994  7D 89 03 A6 */	mtctr r12
/* 804CD998  4E 80 04 21 */	bctrl 
lbl_804CD99C:
/* 804CD99C  3B DE 00 01 */	addi r30, r30, 1
/* 804CD9A0  3B 9C 00 58 */	addi r28, r28, 0x58
/* 804CD9A4  2C 1E 00 64 */	cmpwi r30, 0x64
/* 804CD9A8  3B BD 00 01 */	addi r29, r29, 1
/* 804CD9AC  41 80 FF C4 */	blt lbl_804CD970
/* 804CD9B0  39 61 00 20 */	addi r11, r1, 0x20
/* 804CD9B4  4B BC D5 65 */	bl func_8009AF18
/* 804CD9B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CD9BC  7C 08 03 A6 */	mtlr r0
/* 804CD9C0  38 21 00 20 */	addi r1, r1, 0x20
/* 804CD9C4  4E 80 00 20 */	blr 
